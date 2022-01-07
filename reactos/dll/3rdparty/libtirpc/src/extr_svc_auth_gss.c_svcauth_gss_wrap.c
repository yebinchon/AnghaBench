
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* xdrproc_t ) (int *,int ) ;
struct TYPE_2__ {scalar_t__ svc; int qop; } ;
struct svc_rpc_gss_data {int seq; TYPE_1__ sec; int ctx; int established; } ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;
typedef int SVCAUTH ;


 scalar_t__ RPCSEC_GSS_SVC_NONE ;
 struct svc_rpc_gss_data* SVCAUTH_PRIVATE (int *) ;
 int log_debug (char*) ;
 int stub1 (int *,int ) ;
 int xdr_rpc_gss_data (int *,int (*) (int *,int ),int ,int ,int ,scalar_t__,int ) ;

bool_t
svcauth_gss_wrap(SVCAUTH *auth, XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr)
{
 struct svc_rpc_gss_data *gd;

 log_debug("in svcauth_gss_wrap()");

 gd = SVCAUTH_PRIVATE(auth);

 if (!gd->established || gd->sec.svc == RPCSEC_GSS_SVC_NONE) {
  return ((*xdr_func)(xdrs, xdr_ptr));
 }
 return (xdr_rpc_gss_data(xdrs, xdr_func, xdr_ptr,
     gd->ctx, gd->sec.qop,
     gd->sec.svc, gd->seq));
}
