
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int (* xdrproc_t ) (int *,int ) ;
typedef int u_int ;
typedef scalar_t__ rpc_gss_svc_t ;
typedef int gss_qop_t ;
typedef int gss_ctx_id_t ;
struct TYPE_7__ {int length; int value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int caddr_t ;
typedef int bool_t ;
typedef int XDR ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int MAX_NETOBJ_SZ ;
 scalar_t__ RPCSEC_GSS_SVC_INTEGRITY ;
 scalar_t__ RPCSEC_GSS_SVC_PRIVACY ;
 int TRUE ;
 int XDR_GETPOS (int *) ;
 int XDR_INLINE (int *,int) ;
 int XDR_SETPOS (int *,int) ;
 scalar_t__ gss_get_mic (scalar_t__*,int ,int ,TYPE_1__*,TYPE_1__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 scalar_t__ gss_wrap (scalar_t__*,int ,int ,int ,TYPE_1__*,int*,TYPE_1__*) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;
 int stub1 (int *,int ) ;
 int xdr_bytes (int *,char**,int *,int ) ;
 int xdr_u_int (int *,int *) ;

bool_t
xdr_rpc_gss_wrap_data(XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr,
        gss_ctx_id_t ctx, gss_qop_t qop,
        rpc_gss_svc_t svc, u_int seq)
{
 gss_buffer_desc databuf, wrapbuf;
 OM_uint32 maj_stat, min_stat;
 int start, end, conf_state;
 bool_t xdr_stat;


 start = XDR_GETPOS(xdrs);
 XDR_SETPOS(xdrs, start + 4);


 if (!xdr_u_int(xdrs, &seq) || !(*xdr_func)(xdrs, xdr_ptr))
  return (FALSE);
 end = XDR_GETPOS(xdrs);


 databuf.length = end - start - 4;
 XDR_SETPOS(xdrs, start + 4);
 databuf.value = XDR_INLINE(xdrs, databuf.length);

 xdr_stat = FALSE;

 if (svc == RPCSEC_GSS_SVC_INTEGRITY) {

  XDR_SETPOS(xdrs, start);
  if (!xdr_u_int(xdrs, (u_int *)&databuf.length))
   return (FALSE);


  maj_stat = gss_get_mic(&min_stat, ctx, qop,
           &databuf, &wrapbuf);
  if (maj_stat != GSS_S_COMPLETE) {
   log_debug("gss_get_mic failed");
   return (FALSE);
  }

  XDR_SETPOS(xdrs, end);
  xdr_stat = xdr_bytes(xdrs, (char **)&wrapbuf.value,
         (u_int *)&wrapbuf.length, MAX_NETOBJ_SZ);
  gss_release_buffer(&min_stat, &wrapbuf);
 }
 else if (svc == RPCSEC_GSS_SVC_PRIVACY) {

  maj_stat = gss_wrap(&min_stat, ctx, TRUE, qop, &databuf,
        &conf_state, &wrapbuf);
  if (maj_stat != GSS_S_COMPLETE) {
   log_status("gss_wrap", maj_stat, min_stat);
   return (FALSE);
  }

  XDR_SETPOS(xdrs, start);
  xdr_stat = xdr_bytes(xdrs, (char **)&wrapbuf.value,
         (u_int *)&wrapbuf.length, MAX_NETOBJ_SZ);
  gss_release_buffer(&min_stat, &wrapbuf);
 }
 return (xdr_stat);
}
