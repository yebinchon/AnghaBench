
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct netconfig {int dummy; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int bool_t ;


 int FALSE ;
 struct netconfig* __rpc_getconfip (char*) ;
 int freenetconfigent (struct netconfig*) ;
 int rpcb_unset (int ,int ,struct netconfig*) ;

bool_t
pmap_unset(u_long program, u_long version)
{
 struct netconfig *nconf;
 bool_t udp_rslt = FALSE;
 bool_t tcp_rslt = FALSE;

 nconf = __rpc_getconfip("udp");
 if (nconf != ((void*)0)) {
  udp_rslt = rpcb_unset((rpcprog_t)program, (rpcvers_t)version,
      nconf);
  freenetconfigent(nconf);
 }
 nconf = __rpc_getconfip("tcp");
 if (nconf != ((void*)0)) {
  tcp_rslt = rpcb_unset((rpcprog_t)program, (rpcvers_t)version,
      nconf);
  freenetconfigent(nconf);
 }





 return (tcp_rslt || udp_rslt);
}
