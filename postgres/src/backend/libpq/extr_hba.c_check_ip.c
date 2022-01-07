
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_5__ {scalar_t__ ss_family; } ;
struct TYPE_4__ {TYPE_2__ addr; } ;
typedef TYPE_1__ SockAddr ;


 scalar_t__ pg_range_sockaddr (TYPE_2__*,struct sockaddr_storage*,struct sockaddr_storage*) ;

__attribute__((used)) static bool
check_ip(SockAddr *raddr, struct sockaddr *addr, struct sockaddr *mask)
{
 if (raddr->addr.ss_family == addr->sa_family &&
  pg_range_sockaddr(&raddr->addr,
        (struct sockaddr_storage *) addr,
        (struct sockaddr_storage *) mask))
  return 1;
 return 0;
}
