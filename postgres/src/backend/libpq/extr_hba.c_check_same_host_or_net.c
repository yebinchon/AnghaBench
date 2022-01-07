
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int result; int * raddr; int method; } ;
typedef TYPE_1__ check_network_data ;
typedef int SockAddr ;
typedef int IPCompareMethod ;


 int LOG ;
 int check_network_callback ;
 int elog (int ,char*) ;
 scalar_t__ errno ;
 scalar_t__ pg_foreach_ifaddr (int ,TYPE_1__*) ;

__attribute__((used)) static bool
check_same_host_or_net(SockAddr *raddr, IPCompareMethod method)
{
 check_network_data cn;

 cn.method = method;
 cn.raddr = raddr;
 cn.result = 0;

 errno = 0;
 if (pg_foreach_ifaddr(check_network_callback, &cn) < 0)
 {
  elog(LOG, "error enumerating network interfaces: %m");
  return 0;
 }

 return cn.result;
}
