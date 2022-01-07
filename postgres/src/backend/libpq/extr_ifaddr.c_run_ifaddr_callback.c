
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int (* PgIfAddrCallback ) (struct sockaddr*,struct sockaddr*,void*) ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ IN6_IS_ADDR_UNSPECIFIED (int *) ;
 scalar_t__ INADDR_ANY ;
 int pg_sockaddr_cidr_mask (struct sockaddr_storage*,int *,scalar_t__) ;
 int stub1 (struct sockaddr*,struct sockaddr*,void*) ;

__attribute__((used)) static void
run_ifaddr_callback(PgIfAddrCallback callback, void *cb_data,
     struct sockaddr *addr, struct sockaddr *mask)
{
 struct sockaddr_storage fullmask;

 if (!addr)
  return;


 if (mask)
 {
  if (mask->sa_family != addr->sa_family)
  {
   mask = ((void*)0);
  }
  else if (mask->sa_family == AF_INET)
  {
   if (((struct sockaddr_in *) mask)->sin_addr.s_addr == INADDR_ANY)
    mask = ((void*)0);
  }







 }


 if (!mask)
 {
  pg_sockaddr_cidr_mask(&fullmask, ((void*)0), addr->sa_family);
  mask = (struct sockaddr *) &fullmask;
 }

 (*callback) (addr, mask, cb_data);
}
