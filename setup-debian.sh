#!/bin/bash

# To add this repository please do:

if [ "$(whoami)" != "root" ]; then
    SUDO=sudo
fi
echo "* Refreshing software repositories..."
${SUDO} apt update

echo "* Installing prerequisite software packages..."
${SUDO} apt install -y apt-transport-https lsb-release ca-certificates curl
${SUDO} apt install -y software-properties-common autoconf automake

echo "* Setting up third-party repository to allow installation of multiple PHP versions..."
${SUDO} curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
${SUDO} sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'

echo "* Refreshing software repositories..."
${SUDO} apt update

echo "* Installing PHP 5.6..."
${SUDO} apt install -y php5.6 php5.6-common php5.6-cli php5.6-dev

echo "* Installing PHP 5.6 extensions..."
${SUDO} apt install -y php5.6-curl php5.6-mcrypt php5.6-soap php5.6-bz2 php5.6-gd php5.6-mysql php5.6-sqlite3 php5.6-json php5.6-opcache php5.6-xml php5.6-mbstring php5.6-readline php5.6-xdebug php5.6-xmlrpc php5.6-zip php-redis

echo "* Installing PHP 7.0..."
${SUDO} apt install -y php7.0 php7.0-common php7.0-cli php7.0-dev

echo "* Installing PHP 7.0 extensions..."
${SUDO} apt install -y php7.0-gd php7.0-mysql php7.0-sqlite3 php7.0-soap php7.0-xsl php7.0-intl php7.0-json php7.0-opcache php7.0-mbstring php7.0-readline php7.0-curl php7.0-mcrypt php7.0-xdebug php7.0-xml php7.0-zip php-redis

echo "* Installing PHP 7.1..."
${SUDO} apt install -y php7.1 php7.1-common php7.1-cli php7.1-dev

echo "* Installing PHP 7.1 extensions..."
${SUDO} apt install -y php7.1-gd php7.1-mysql php7.1-sqlite3 php7.1-soap php7.1-intl php7.1-xsl php7.1-json php7.1-opcache php7.1-mbstring php7.1-readline php7.1-curl php7.1-mcrypt php7.1-xdebug php7.1-xml php7.1-zip php-redis

echo "* Installing PHP 7.2..."
${SUDO} apt install -y php7.2 php7.2-common php7.2-cli php7.2-dev

echo "* Installing PHP 7.2 extensions..."
${SUDO} apt install -y php7.2-bz2 php7.2-curl php7.2-gd php7.2-json php7.2 php7.2-intl php7.2-mbstring php7.2-mysql php7.2-opcache php7.2-readline php7.2-soap php7.2-sqlite3 php7.2-tidy php7.2-xdebug php7.2-xml php7.2-xsl php7.2-zip

echo "* Installing PHP 7.3..."
${SUDO} apt install -y php7.3 php7.3-common php7.3-cli php7.3-dev

echo "* Installing PHP 7.3 extensions..."
${SUDO} apt install -y php7.3-bz2 php7.3-curl php7.3-gd php7.3-json php7.3-intl php7.3-mbstring php7.3-mysql php7.3-opcache php7.3-readline php7.3-soap php7.3-sqlite3 php7.3-tidy php7.3-xdebug php7.3-xml php7.3-xsl php7.3-zip

echo "* Installing PHP 7.4..."
${SUDO} apt install -y php7.4 php7.4-common php7.4-cli php7.4-dev

echo "* Installing PHP 7.4 extensions..."
${SUDO} apt install -y php7.4-bz2 php7.4-curl php7.4-gd php7.4-json php7.4-intl php7.4-mbstring php7.4-mysql php7.4-opcache php7.4-readline php7.4-soap php7.4-sqlite3 php7.4-tidy php7.4-xdebug php7.4-xml php7.4-xsl php7.4-zip

echo "* Installing PHP 8.0..."
${SUDO} apt install -y php8.0 php8.0-common php8.0-cli php8.0-dev

echo "* Installing PHP 8.0 extensions..."
${SUDO} apt install -y php8.0-bz2 php8.0-curl php8.0-gd php8.0-intl php8.0-mbstring php8.0-mysql php8.0-opcache php8.0-readline php8.0-soap php8.0-sqlite3 php8.0-tidy php8.0-xdebug php8.0-xml php8.0-xsl php8.0-zip

echo "* Installing PHP 8.1..."
${SUDO} apt install -y php8.1 php8.1-common php8.1-cli php8.1-dev

echo "* Installing PHP 8.1 extensions..."
${SUDO} apt install -y php8.1-bz2 php8.1-curl php8.1-gd php8.1-intl php8.1-mbstring php8.1-mysql php8.1-opcache php8.1-readline php8.1-soap php8.1-sqlite3 php8.1-tidy php8.1-xdebug php8.1-xml php8.1-xsl php8.1-zip

echo "* Installing additional PHP extensions..."
${SUDO} apt install -y php-memcache php-memcached php-redis 

echo "* Setup complete. You may now use the 'switch-to-php-*.*.sh' scripts."