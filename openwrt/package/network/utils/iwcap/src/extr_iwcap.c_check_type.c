
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sa_family; } ;
struct ifreq {TYPE_1__ ifr_hwaddr; int ifr_name; } ;


 scalar_t__ ARPHRD_IEEE80211_RADIOTAP ;
 int IFNAMSIZ ;
 int SIOCGIFHWADDR ;
 int capture_sock ;
 int ifname ;
 scalar_t__ ioctl (int ,int ,struct ifreq*) ;
 int strncpy (int ,int ,int ) ;

int check_type(void)
{
 struct ifreq ifr;

 strncpy(ifr.ifr_name, ifname, IFNAMSIZ);

 if (ioctl(capture_sock, SIOCGIFHWADDR, &ifr) < 0)
  return -1;

 return (ifr.ifr_hwaddr.sa_family == ARPHRD_IEEE80211_RADIOTAP);
}
