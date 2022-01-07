
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int (* xdrproc_t ) (int *,int ) ;
typedef scalar_t__ uint32_t ;
typedef int u_int ;
typedef int sspi_qop_t ;
struct TYPE_12__ {int length; int value; } ;
typedef TYPE_1__ sspi_buffer_desc ;
typedef scalar_t__ rpc_sspi_svc_t ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;
typedef int PCtxtHandle ;


 int FALSE ;
 scalar_t__ RPCSEC_SSPI_SVC_INTEGRITY ;
 scalar_t__ RPCSEC_SSPI_SVC_PRIVACY ;
 scalar_t__ SEC_E_OK ;
 int TRUE ;
 int XDR_GETPOS (int *) ;
 int XDR_INLINE (int *,int) ;
 int XDR_SETPOS (int *,int) ;
 scalar_t__ gss_get_mic (int *,int ,int ,TYPE_1__*,TYPE_1__*) ;
 int gss_release_buffer (int *,TYPE_1__*) ;
 scalar_t__ gss_wrap (int *,int ,int ,int ,TYPE_1__*,int*,TYPE_1__*) ;
 int log_debug (char*,...) ;
 int min_stat ;
 scalar_t__ sspi_get_mic (int ,int ,int ,TYPE_1__*,TYPE_1__*) ;
 int sspi_release_buffer (TYPE_1__*) ;
 scalar_t__ sspi_wrap (int ,int ,TYPE_1__*,TYPE_1__*,int*) ;
 int stub1 (int *,int ) ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_u_int (int *,int *) ;

bool_t
xdr_rpc_sspi_wrap_data(XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr,
        PCtxtHandle ctx, sspi_qop_t qop,
        rpc_sspi_svc_t svc, u_int seq)
{
 sspi_buffer_desc databuf, wrapbuf;
 uint32_t maj_stat;
 int start, end, conf_state;
 bool_t xdr_stat;

    log_debug("in xdr_rpc_sspi_wrap_data()");


 start = XDR_GETPOS(xdrs);
 XDR_SETPOS(xdrs, start + 4);


 if (!xdr_u_int(xdrs, &seq) || !(*xdr_func)(xdrs, xdr_ptr))
  return (FALSE);
 end = XDR_GETPOS(xdrs);


 databuf.length = end - start - 4;
 XDR_SETPOS(xdrs, start + 4);
 databuf.value = XDR_INLINE(xdrs, databuf.length);

 xdr_stat = FALSE;

 if (svc == RPCSEC_SSPI_SVC_INTEGRITY) {

  XDR_SETPOS(xdrs, start);
  if (!xdr_u_int(xdrs, (u_int *)&databuf.length))
   return (FALSE);






        maj_stat = sspi_get_mic(ctx, 0, seq, &databuf, &wrapbuf);

  if (maj_stat != SEC_E_OK) {
   log_debug("xdr_rpc_sspi_wrap_data: sspi_get_mic failed with %x", maj_stat);
   return (FALSE);
  }

  XDR_SETPOS(xdrs, end);
  xdr_stat = xdr_bytes(xdrs, (char **)&wrapbuf.value,
                            (u_int *)&wrapbuf.length, (u_int)-1);



        sspi_release_buffer(&wrapbuf);

 }
 else if (svc == RPCSEC_SSPI_SVC_PRIVACY) {





        maj_stat = sspi_wrap(ctx, 0, &databuf, &wrapbuf, &conf_state);

  if (maj_stat != SEC_E_OK) {
   log_debug("xdr_rpc_sspi_wrap_data: sspi_wrap failed with %x", maj_stat);
   return (FALSE);
  }

  XDR_SETPOS(xdrs, start);
  xdr_stat = xdr_bytes(xdrs, (char **)&wrapbuf.value,
                            (u_int *)&wrapbuf.length, (u_int)-1);



        sspi_release_buffer(&wrapbuf);

 }
 return (xdr_stat);
}
