
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_storage {scalar_t__ ss_family; } ;
struct TYPE_7__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct TYPE_8__ {struct sockaddr_storage addr; } ;
struct TYPE_9__ {TYPE_3__ raddr; } ;
typedef TYPE_4__ PGconn ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int * pg_inet_net_ntop (scalar_t__,int *,int,char*,int) ;

__attribute__((used)) static void
getHostaddr(PGconn *conn, char *host_addr, int host_addr_len)
{
 struct sockaddr_storage *addr = &conn->raddr.addr;

 if (addr->ss_family == AF_INET)
 {
  if (pg_inet_net_ntop(AF_INET,
        &((struct sockaddr_in *) addr)->sin_addr.s_addr,
        32,
        host_addr, host_addr_len) == ((void*)0))
   host_addr[0] = '\0';
 }
 else
  host_addr[0] = '\0';
}
