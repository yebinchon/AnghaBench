
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_13__ {int qop; } ;
struct TYPE_16__ {scalar_t__ gc_proc; int gc_seq; } ;
struct rpc_gss_data {scalar_t__ established; TYPE_1__ sec; int ctx; TYPE_4__ gc; } ;
struct TYPE_14__ {char* value; void* length; } ;
typedef TYPE_2__ gss_buffer_desc ;
typedef scalar_t__ bool_t ;
typedef int XDR ;
struct TYPE_17__ {char* oa_base; void* oa_length; void* oa_flavor; } ;
struct TYPE_15__ {TYPE_5__ ah_verf; TYPE_5__ ah_cred; } ;
typedef scalar_t__ OM_uint32 ;
typedef TYPE_3__ AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (TYPE_3__*) ;
 scalar_t__ FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 int MAX_AUTH_BYTES ;
 void* RPCSEC_GSS ;
 scalar_t__ RPCSEC_GSS_CONTINUE_INIT ;
 scalar_t__ RPCSEC_GSS_INIT ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 void* XDR_GETPOS (int *) ;
 char* XDR_INLINE (int *,void*) ;
 int XDR_SETPOS (int *,int ) ;
 TYPE_5__ _null_auth ;
 int authgss_destroy_context (TYPE_3__*) ;
 scalar_t__ gss_get_mic (scalar_t__*,int ,int ,TYPE_2__*,TYPE_2__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_2__*) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;
 scalar_t__ xdr_opaque_auth (int *,TYPE_5__*) ;
 int xdr_rpc_gss_cred (int *,TYPE_4__*) ;
 int xdrmem_create (int *,char*,int,int ) ;

__attribute__((used)) static bool_t
authgss_marshal(AUTH *auth, XDR *xdrs)
{
 XDR tmpxdrs;
 char tmp[MAX_AUTH_BYTES];
 struct rpc_gss_data *gd;
 gss_buffer_desc rpcbuf, checksum;
 OM_uint32 maj_stat, min_stat;
 bool_t xdr_stat;

 log_debug("in authgss_marshal()");

 gd = AUTH_PRIVATE(auth);

 if (gd->established)
  gd->gc.gc_seq++;

 xdrmem_create(&tmpxdrs, tmp, sizeof(tmp), XDR_ENCODE);

 if (!xdr_rpc_gss_cred(&tmpxdrs, &gd->gc)) {
  XDR_DESTROY(&tmpxdrs);
  return (FALSE);
 }
 auth->ah_cred.oa_flavor = RPCSEC_GSS;
 auth->ah_cred.oa_base = tmp;
 auth->ah_cred.oa_length = XDR_GETPOS(&tmpxdrs);

 XDR_DESTROY(&tmpxdrs);

 if (!xdr_opaque_auth(xdrs, &auth->ah_cred))
  return (FALSE);

 if (gd->gc.gc_proc == RPCSEC_GSS_INIT ||
     gd->gc.gc_proc == RPCSEC_GSS_CONTINUE_INIT) {
  return (xdr_opaque_auth(xdrs, &_null_auth));
 }

 rpcbuf.length = XDR_GETPOS(xdrs);
 XDR_SETPOS(xdrs, 0);
 rpcbuf.value = XDR_INLINE(xdrs, rpcbuf.length);

 maj_stat = gss_get_mic(&min_stat, gd->ctx, gd->sec.qop,
       &rpcbuf, &checksum);

 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_get_mic", maj_stat, min_stat);
  if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
   gd->established = FALSE;
   authgss_destroy_context(auth);
  }
  return (FALSE);
 }
 auth->ah_verf.oa_flavor = RPCSEC_GSS;
 auth->ah_verf.oa_base = checksum.value;
 auth->ah_verf.oa_length = checksum.length;

 xdr_stat = xdr_opaque_auth(xdrs, &auth->ah_verf);
 gss_release_buffer(&min_stat, &checksum);

 return (xdr_stat);
}
