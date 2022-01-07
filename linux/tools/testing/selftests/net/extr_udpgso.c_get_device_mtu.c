
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {unsigned int ifr_mtu; int ifr_name; } ;
typedef int ifr ;


 int SIOCGIFMTU ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static unsigned int get_device_mtu(int fd, const char *ifname)
{
 struct ifreq ifr;

 memset(&ifr, 0, sizeof(ifr));

 strcpy(ifr.ifr_name, ifname);

 if (ioctl(fd, SIOCGIFMTU, &ifr))
  error(1, errno, "ioctl get mtu");

 return ifr.ifr_mtu;
}
