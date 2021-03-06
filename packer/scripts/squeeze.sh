apt-get -y install sudo rsync

sed -i 's/main$/main contrib non-free/' /etc/apt/sources.list
echo 'APT::Install-Recommends "0";' > /etc/apt/apt.conf.d/50no-install-recommends
echo 'APT::Install-Suggests "0";' > /etc/apt/apt.conf.d/50no-install-suggests

echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
sysctl -p

apt-get -y update
apt-get -y upgrade

apt-get -y install autoconf automake bison cpp dpkg-dev flex gcc gcc-4.1 gcc-4.3 gdb git libc6-dev libtool m4 make pkg-config strace valgrind
apt-get -y install autotools-dev default-jdk iproute-dev iptables-dev javahelper libapr1-dev libatasmart-dev libcap-dev libconfuse-dev libcurl4-gnutls-dev libdbi0-dev libesmtp-dev libganglia1-dev libgcrypt11-dev libglib2.0-dev libhal-dev libi2c-dev libldap2-dev libltdl-dev liblvm2-dev libmemcached-dev libmysqlclient-dev libnotify-dev libopenipmi-dev liboping-dev libpcap-dev libperl-dev libpq-dev libprotobuf-c0-dev librrd-dev libsensors4-dev libsnmp-dev libstatgrab-dev libtokyocabinet-dev libtokyotyrant-dev libudev-dev libupsclient1-dev libvarnish-dev libvirt-dev libxml2-dev libyajl-dev linux-libc-dev perl protobuf-c-compiler python-dev

apt-get -y clean
