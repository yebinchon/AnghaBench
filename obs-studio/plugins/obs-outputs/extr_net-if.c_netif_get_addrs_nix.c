
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct netif_saddr_data {int dummy; } ;
struct ifaddrs {int ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_3__ {unsigned int sa_family; } ;


 unsigned int AF_INET ;
 unsigned int AF_INET6 ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int freeifaddrs (struct ifaddrs*) ;
 int gai_strerror (unsigned int) ;
 int getifaddrs (struct ifaddrs**) ;
 unsigned int getnameinfo (TYPE_1__*,int,char*,int,int *,int ,int ) ;
 scalar_t__ is_loopback (struct ifaddrs*) ;
 int netif_push (TYPE_1__*,struct netif_saddr_data*,int ) ;
 int warn (char*,...) ;

__attribute__((used)) static inline void netif_get_addrs_nix(struct netif_saddr_data *ifaddrs)
{
 struct ifaddrs *ifaddr, *ifa;
 unsigned int family, s;
 char host[NI_MAXHOST];

 if (getifaddrs(&ifaddr) == -1) {
  warn("getifaddrs() failed");
  return;
 }

 for (ifa = ifaddr; ifa != ((void*)0); ifa = ifa->ifa_next) {
  if (ifa->ifa_addr == ((void*)0) || is_loopback(ifa))
   continue;

  family = ifa->ifa_addr->sa_family;

  if ((family == AF_INET) || (family == AF_INET6)) {
   s = getnameinfo(ifa->ifa_addr,
     (family == AF_INET)
      ? sizeof(struct sockaddr_in)
      : sizeof(struct sockaddr_in6),
     host, NI_MAXHOST, ((void*)0), 0,
     NI_NUMERICHOST);
   if (s != 0) {
    warn("getnameinfo() failed: %s",
         gai_strerror(s));
    continue;
   }

   netif_push(ifa->ifa_addr, ifaddrs, ifa->ifa_name);
  }
 }

 freeifaddrs(ifaddr);
}
