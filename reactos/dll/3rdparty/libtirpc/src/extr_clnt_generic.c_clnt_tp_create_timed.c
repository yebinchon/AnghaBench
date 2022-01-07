
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct netconfig {int nc_device; int nc_netid; } ;
struct netbuf {struct netbuf* buf; } ;
typedef int rpcvers_t ;
typedef int rpcprog_t ;
struct TYPE_9__ {int cf_stat; } ;
struct TYPE_8__ {int * cl_tp; int * cl_netid; } ;
typedef TYPE_1__ CLIENT ;


 scalar_t__ CLNT_CONTROL (TYPE_1__*,int ,void*) ;
 int CLNT_DESTROY (TYPE_1__*) ;
 int CLSET_PROG ;
 int CLSET_SVC_ADDR ;
 int CLSET_VERS ;
 int RPC_ANYFD ;
 int RPC_UNKNOWNPROTO ;
 scalar_t__ TRUE ;
 struct netbuf* __rpcb_findaddr_timed (int const,int const,struct netconfig*,char*,TYPE_1__**,struct timeval*) ;
 TYPE_1__* clnt_tli_create (int ,struct netconfig const*,struct netbuf*,int const,int const,int ,int ,int *,int *,int *) ;
 int free (struct netbuf*) ;
 TYPE_2__ rpc_createerr ;
 void* strdup (int ) ;

CLIENT *
clnt_tp_create_timed(const char *hostname, const rpcprog_t prog, const rpcvers_t vers,
    const struct netconfig *nconf, const struct timeval *tp)
{
 struct netbuf *svcaddr;
 CLIENT *cl = ((void*)0);

 if (nconf == ((void*)0)) {
  rpc_createerr.cf_stat = RPC_UNKNOWNPROTO;
  return (((void*)0));
 }




 if ((svcaddr = __rpcb_findaddr_timed(prog, vers,
   (struct netconfig *)nconf, (char *)hostname,
   &cl, (struct timeval *)tp)) == ((void*)0)) {

  return (((void*)0));
 }
 if (cl == ((void*)0)) {
  cl = clnt_tli_create(RPC_ANYFD, nconf, svcaddr,
     prog, vers, 0, 0, ((void*)0), ((void*)0), ((void*)0));
 } else {

  if (CLNT_CONTROL(cl, CLSET_SVC_ADDR, (void *)svcaddr) == TRUE) {
   if (cl->cl_netid == ((void*)0))
    cl->cl_netid = strdup(nconf->nc_netid);
   if (cl->cl_tp == ((void*)0))
    cl->cl_tp = strdup(nconf->nc_device);
   (void) CLNT_CONTROL(cl, CLSET_PROG, (void *)&prog);
   (void) CLNT_CONTROL(cl, CLSET_VERS, (void *)&vers);
  } else {
   CLNT_DESTROY(cl);
   cl = clnt_tli_create(RPC_ANYFD, nconf, svcaddr,
     prog, vers, 0, 0, ((void*)0), ((void*)0), ((void*)0));
  }
 }
 free(svcaddr->buf);
 free(svcaddr);
 return (cl);
}
