
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct rpc_err {int dummy; } ;
struct netconfig {char* nc_netid; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
typedef int nettype_array ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
struct TYPE_2__ {scalar_t__ cf_stat; struct rpc_err cf_error; } ;
typedef int CLIENT ;


 int NETIDLEN ;
 scalar_t__ RPC_N2AXLATEFAILURE ;
 scalar_t__ RPC_SUCCESS ;
 scalar_t__ RPC_UNKNOWNHOST ;
 void* RPC_UNKNOWNPROTO ;
 int __rpc_endconf (void*) ;
 struct netconfig* __rpc_getconf (void*) ;
 void* __rpc_setconf (char*) ;
 int * clnt_tp_create_timed (char const*,int const,int const,struct netconfig*,struct timeval const*) ;
 int printf (char*,char*) ;
 TYPE_1__ rpc_createerr ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;

CLIENT *
clnt_create_timed(const char *hostname, const rpcprog_t prog, const rpcvers_t vers,
    const char *netclass, const struct timeval *tp)
{
 struct netconfig *nconf;
 CLIENT *clnt = ((void*)0);
 void *handle;
 enum clnt_stat save_cf_stat = RPC_SUCCESS;
 struct rpc_err save_cf_error;
 char nettype_array[NETIDLEN];
 char *nettype = &nettype_array[0];

 if (netclass == ((void*)0))
  nettype = ((void*)0);
 else {
  size_t len = strlen(netclass);
  if (len >= sizeof (nettype_array)) {
   rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
   return (((void*)0));
  }
  strcpy(nettype, netclass);
 }

 if ((handle = __rpc_setconf((char *)nettype)) == ((void*)0)) {
  rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
  return (((void*)0));
 }
 rpc_createerr.cf_stat = RPC_SUCCESS;
 while (clnt == ((void*)0)) {
  if ((nconf = __rpc_getconf(handle)) == ((void*)0)) {
   if (rpc_createerr.cf_stat == RPC_SUCCESS)
    rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
   break;
  }



  clnt = clnt_tp_create_timed(hostname, prog, vers, nconf, tp);
  if (clnt)
   break;
  else {
   if (rpc_createerr.cf_stat != RPC_N2AXLATEFAILURE &&
       rpc_createerr.cf_stat != RPC_UNKNOWNHOST) {
    save_cf_stat = rpc_createerr.cf_stat;
    save_cf_error = rpc_createerr.cf_error;
   }
  }
 }





 if ((rpc_createerr.cf_stat == RPC_N2AXLATEFAILURE ||
      rpc_createerr.cf_stat == RPC_UNKNOWNHOST) &&
     (save_cf_stat != RPC_SUCCESS)) {
  rpc_createerr.cf_stat = save_cf_stat;
  rpc_createerr.cf_error = save_cf_error;
 }
 __rpc_endconf(handle);
 return (clnt);
}
