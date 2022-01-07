
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_int32_t ;
struct netconfig {int dummy; } ;
struct netbuf {int dummy; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int bool_t ;


 int FALSE ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 struct netconfig* __rpc_getconfip (char*) ;
 int free (struct netbuf*) ;
 int freenetconfigent (struct netconfig*) ;
 int rpcb_set (int ,int ,struct netconfig*,struct netbuf*) ;
 int snprintf (char*,int,char*,int,int) ;
 struct netbuf* uaddr2taddr (struct netconfig*,char*) ;

bool_t
pmap_set(u_long program, u_long version, int protocol, int port)
{
 bool_t rslt;
 struct netbuf *na;
 struct netconfig *nconf;
 char buf[32];

 if ((protocol != IPPROTO_UDP) && (protocol != IPPROTO_TCP)) {
  return (FALSE);
 }
 nconf = __rpc_getconfip(protocol == IPPROTO_UDP ? "udp" : "tcp");
 if (nconf == ((void*)0)) {
  return (FALSE);
 }
 snprintf(buf, sizeof buf, "0.0.0.0.%d.%d",
     (((u_int32_t)port) >> 8) & 0xff, port & 0xff);
 na = uaddr2taddr(nconf, buf);
 if (na == ((void*)0)) {
  freenetconfigent(nconf);
  return (FALSE);
 }
 rslt = rpcb_set((rpcprog_t)program, (rpcvers_t)version, nconf, na);
 free(na);
 freenetconfigent(nconf);
 return (rslt);
}
