
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_int ;
typedef int sspi_qop_t ;
typedef int rpc_sspi_svc_t ;
typedef int caddr_t ;
typedef int bool_t ;
struct TYPE_5__ {int x_op; } ;
typedef TYPE_1__ XDR ;
typedef int PCtxtHandle ;


 int FALSE ;
 int TRUE ;



 int xdr_rpc_sspi_unwrap_data (TYPE_1__*,int ,int ,int ,int ,int ,int ) ;
 int xdr_rpc_sspi_wrap_data (TYPE_1__*,int ,int ,int ,int ,int ,int ) ;

bool_t
xdr_rpc_sspi_data(XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr,
   PCtxtHandle ctx, sspi_qop_t qop,
   rpc_sspi_svc_t svc, u_int seq)
{
 switch (xdrs->x_op) {

 case 129:
  return (xdr_rpc_sspi_wrap_data(xdrs, xdr_func, xdr_ptr,
                    ctx, qop, svc, seq));
 case 130:
  return (xdr_rpc_sspi_unwrap_data(xdrs, xdr_func, xdr_ptr,
                    ctx, qop, svc, seq));
 case 128:
  return (TRUE);
 }
 return (FALSE);
}
