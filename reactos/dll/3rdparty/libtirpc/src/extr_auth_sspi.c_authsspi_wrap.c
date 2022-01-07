
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* xdrproc_t ) (int *,int ) ;
struct TYPE_3__ {int gc_seq; } ;
struct rpc_sspi_data {TYPE_1__ gc; TYPE_2__* sec; int ctx; int established; } ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;
struct TYPE_4__ {scalar_t__ svc; int qop; } ;
typedef int AUTH ;


 struct rpc_sspi_data* AUTH_PRIVATE (int *) ;
 scalar_t__ RPCSEC_SSPI_SVC_NONE ;
 int log_debug (char*) ;
 int stub1 (int *,int ) ;
 int xdr_rpc_sspi_data (int *,int (*) (int *,int ),int ,int *,int ,scalar_t__,int ) ;

bool_t
authsspi_wrap(AUTH *auth, XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr)
{
 struct rpc_sspi_data *gd;

 log_debug("in authgss_wrap()");

 gd = AUTH_PRIVATE(auth);

 if (!gd->established || gd->sec->svc == RPCSEC_SSPI_SVC_NONE) {
  return ((*xdr_func)(xdrs, xdr_ptr));
 }
 return (xdr_rpc_sspi_data(xdrs, xdr_func, xdr_ptr,
     &gd->ctx, gd->sec->qop,
     gd->sec->svc, gd->gc.gc_seq));
}
