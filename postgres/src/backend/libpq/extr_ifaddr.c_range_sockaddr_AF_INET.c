
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;



__attribute__((used)) static int
range_sockaddr_AF_INET(const struct sockaddr_in *addr,
        const struct sockaddr_in *netaddr,
        const struct sockaddr_in *netmask)
{
 if (((addr->sin_addr.s_addr ^ netaddr->sin_addr.s_addr) &
   netmask->sin_addr.s_addr) == 0)
  return 1;
 else
  return 0;
}
