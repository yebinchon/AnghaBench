
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int range_sockaddr_AF_INET (struct sockaddr_in const*,struct sockaddr_in const*,struct sockaddr_in const*) ;
 int range_sockaddr_AF_INET6 (struct sockaddr_in6 const*,struct sockaddr_in6 const*,struct sockaddr_in6 const*) ;

int
pg_range_sockaddr(const struct sockaddr_storage *addr,
      const struct sockaddr_storage *netaddr,
      const struct sockaddr_storage *netmask)
{
 if (addr->ss_family == AF_INET)
  return range_sockaddr_AF_INET((const struct sockaddr_in *) addr,
           (const struct sockaddr_in *) netaddr,
           (const struct sockaddr_in *) netmask);






 else
  return 0;
}
