
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_call_private {scalar_t__ client; } ;


 int CLNT_DESTROY (scalar_t__) ;
 int free (struct rpc_call_private*) ;

__attribute__((used)) static void
rpc_call_destroy(void *vp)
{
 struct rpc_call_private *rcp = (struct rpc_call_private *)vp;

 if (rcp) {
  if (rcp->client)
   CLNT_DESTROY(rcp->client);
  free(rcp);
 }
}
