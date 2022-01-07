
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_name; } ;


 int IFF_PROMISC ;
 int IFNAMSIZ ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int capture_sock ;
 int ifname ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int strncpy (int ,int ,int ) ;

int set_promisc(int on)
{
 struct ifreq ifr;

 strncpy(ifr.ifr_name, ifname, IFNAMSIZ);

 if (ioctl(capture_sock, SIOCGIFFLAGS, &ifr) < 0)
  return -1;

 if (on && !(ifr.ifr_flags & IFF_PROMISC))
 {
  ifr.ifr_flags |= IFF_PROMISC;

  if (ioctl(capture_sock, SIOCSIFFLAGS, &ifr))
   return -1;

  return 1;
 }
 else if (!on && (ifr.ifr_flags & IFF_PROMISC))
 {
  ifr.ifr_flags &= ~IFF_PROMISC;

  if (ioctl(capture_sock, SIOCSIFFLAGS, &ifr))
   return -1;

  return 1;
 }

 return 0;
}
