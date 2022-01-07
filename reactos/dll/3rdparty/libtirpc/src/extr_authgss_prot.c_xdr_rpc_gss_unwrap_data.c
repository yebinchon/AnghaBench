
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ (* xdrproc_t ) (int *,int *) ;
typedef int wrapbuf ;
typedef scalar_t__ u_int ;
typedef scalar_t__ rpc_gss_svc_t ;
typedef scalar_t__ gss_qop_t ;
typedef int gss_ctx_id_t ;
struct TYPE_8__ {int length; int value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int databuf ;
typedef int * caddr_t ;
typedef int bool_t ;
typedef int XDR ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int MAX_NETOBJ_SZ ;
 scalar_t__ RPCSEC_GSS_SVC_INTEGRITY ;
 scalar_t__ RPCSEC_GSS_SVC_PRIVACY ;
 int TRUE ;
 int XDR_DECODE ;
 int XDR_DESTROY (int *) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 scalar_t__ gss_unwrap (scalar_t__*,int ,TYPE_1__*,TYPE_1__*,int*,scalar_t__*) ;
 scalar_t__ gss_verify_mic (scalar_t__*,int ,TYPE_1__*,TYPE_1__*,scalar_t__*) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ stub1 (int *,int *) ;
 int xdr_bytes (int *,char**,scalar_t__*,int ) ;
 scalar_t__ xdr_u_int (int *,scalar_t__*) ;
 scalar_t__ xdr_void ;
 int xdrmem_create (int *,int ,int ,int ) ;

bool_t
xdr_rpc_gss_unwrap_data(XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr,
   gss_ctx_id_t ctx, gss_qop_t qop,
   rpc_gss_svc_t svc, u_int seq)
{
 XDR tmpxdrs;
 gss_buffer_desc databuf, wrapbuf;
 OM_uint32 maj_stat, min_stat;
 u_int seq_num, qop_state;
 int conf_state;
 bool_t xdr_stat;

 if (xdr_func == (xdrproc_t)xdr_void || xdr_ptr == ((void*)0))
  return (TRUE);

 memset(&databuf, 0, sizeof(databuf));
 memset(&wrapbuf, 0, sizeof(wrapbuf));

 if (svc == RPCSEC_GSS_SVC_INTEGRITY) {

  if (!xdr_bytes(xdrs, (char **)&databuf.value, (u_int *)&databuf.length,
          MAX_NETOBJ_SZ)) {
   log_debug("xdr decode databody_integ failed");
   return (FALSE);
  }

  if (!xdr_bytes(xdrs, (char **)&wrapbuf.value, (u_int *)&wrapbuf.length,
          MAX_NETOBJ_SZ)) {
   gss_release_buffer(&min_stat, &databuf);
   log_debug("xdr decode checksum failed");
   return (FALSE);
  }

  maj_stat = gss_verify_mic(&min_stat, ctx, &databuf,
       &wrapbuf, &qop_state);
  gss_release_buffer(&min_stat, &wrapbuf);

  if (maj_stat != GSS_S_COMPLETE || qop_state != qop) {
   gss_release_buffer(&min_stat, &databuf);
   log_status("gss_verify_mic", maj_stat, min_stat);
   return (FALSE);
  }
 }
 else if (svc == RPCSEC_GSS_SVC_PRIVACY) {

  if (!xdr_bytes(xdrs, (char **)&wrapbuf.value, (u_int *)&wrapbuf.length,
          MAX_NETOBJ_SZ)) {
   log_debug("xdr decode databody_priv failed");
   return (FALSE);
  }

  maj_stat = gss_unwrap(&min_stat, ctx, &wrapbuf, &databuf,
          &conf_state, &qop_state);

  gss_release_buffer(&min_stat, &wrapbuf);


  if (maj_stat != GSS_S_COMPLETE || qop_state != qop ||
   conf_state != TRUE) {
   gss_release_buffer(&min_stat, &databuf);
   log_status("gss_unwrap", maj_stat, min_stat);
   return (FALSE);
  }
 }

 xdrmem_create(&tmpxdrs, databuf.value, databuf.length, XDR_DECODE);
 xdr_stat = (xdr_u_int(&tmpxdrs, &seq_num) &&
      (*xdr_func)(&tmpxdrs, xdr_ptr));
 XDR_DESTROY(&tmpxdrs);
 gss_release_buffer(&min_stat, &databuf);


 if (xdr_stat == TRUE && seq_num != seq) {
  log_debug("wrong sequence number in databody");
  return (FALSE);
 }
 return (xdr_stat);
}
