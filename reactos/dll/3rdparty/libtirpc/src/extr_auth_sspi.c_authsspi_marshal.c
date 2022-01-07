
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
typedef int tmp ;
struct TYPE_19__ {scalar_t__ gc_proc; scalar_t__ gc_seq; } ;
struct TYPE_16__ {int qop; } ;
struct rpc_sspi_data {scalar_t__ established; TYPE_4__ gc; int ctx; TYPE_1__ sec; } ;
struct TYPE_17__ {char* value; scalar_t__ length; } ;
typedef TYPE_2__ sspi_buffer_desc ;
typedef scalar_t__ bool_t ;
typedef int XDR ;
struct TYPE_20__ {char* oa_base; scalar_t__ oa_length; void* oa_flavor; } ;
struct TYPE_18__ {TYPE_5__ ah_verf; TYPE_5__ ah_cred; } ;
typedef TYPE_3__ AUTH ;


 struct rpc_sspi_data* AUTH_PRIVATE (TYPE_3__*) ;
 scalar_t__ FALSE ;
 int MAX_AUTH_BYTES ;
 void* RPCSEC_GSS ;
 scalar_t__ RPCSEC_SSPI_CONTINUE_INIT ;
 scalar_t__ RPCSEC_SSPI_INIT ;
 scalar_t__ SEC_E_NO_AUTHENTICATING_AUTHORITY ;
 scalar_t__ SEC_E_OK ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 scalar_t__ XDR_GETPOS (int *) ;
 TYPE_5__ _null_auth ;
 int authsspi_destroy_context (TYPE_3__*) ;
 scalar_t__ gss_get_mic (int *,int ,int ,TYPE_2__*,TYPE_2__*) ;
 int gss_release_buffer (int *,TYPE_2__*) ;
 int log_debug (char*,...) ;
 int min_stat ;
 scalar_t__ sspi_get_mic (int *,int ,scalar_t__,TYPE_2__*,TYPE_2__*) ;
 int sspi_release_buffer (TYPE_2__*) ;
 scalar_t__ xdr_opaque_auth (int *,TYPE_5__*) ;
 int xdr_rpc_sspi_cred (int *,TYPE_4__*) ;
 int xdrmem_create (int *,char*,int,int ) ;
 char* xdrrec_getoutbase (int *) ;

__attribute__((used)) static bool_t
authsspi_marshal(AUTH *auth, XDR *xdrs, u_int *seq)
{
 XDR tmpxdrs;
 char tmp[MAX_AUTH_BYTES];
 struct rpc_sspi_data *gd;
 sspi_buffer_desc rpcbuf, checksum;
 uint32_t maj_stat;
 bool_t xdr_stat;

    log_debug("in authgss_marshal()");

 gd = AUTH_PRIVATE(auth);

 if (gd->established) {
  gd->gc.gc_seq++;
        *seq = gd->gc.gc_seq;
    }

 xdrmem_create(&tmpxdrs, tmp, sizeof(tmp), XDR_ENCODE);

 if (!xdr_rpc_sspi_cred(&tmpxdrs, &gd->gc)) {
        log_debug("authsspi_marshal: xdr_rpc_sspi_cred failed");
  XDR_DESTROY(&tmpxdrs);
  return (FALSE);
 }
 auth->ah_cred.oa_flavor = RPCSEC_GSS;
 auth->ah_cred.oa_base = tmp;
 auth->ah_cred.oa_length = XDR_GETPOS(&tmpxdrs);

 XDR_DESTROY(&tmpxdrs);

 if (!xdr_opaque_auth(xdrs, &auth->ah_cred)) {
        log_debug("authsspi_marshal: failed to xdr GSS CRED");
  return (FALSE);
    }
 if (gd->gc.gc_proc == RPCSEC_SSPI_INIT ||
     gd->gc.gc_proc == RPCSEC_SSPI_CONTINUE_INIT) {
  return (xdr_opaque_auth(xdrs, &_null_auth));
 }

 rpcbuf.length = XDR_GETPOS(xdrs) - 4;


 rpcbuf.value = xdrrec_getoutbase(xdrs) + 1;





    maj_stat = sspi_get_mic(&gd->ctx, 0, gd->gc.gc_seq, &rpcbuf, &checksum);

 if (maj_stat != SEC_E_OK) {
  log_debug("authsspi_marshal: sspi_get_mic failed with %x", maj_stat);
  if (maj_stat == SEC_E_NO_AUTHENTICATING_AUTHORITY) {
   gd->established = FALSE;
   authsspi_destroy_context(auth);
  }
  return (FALSE);
 }
 auth->ah_verf.oa_flavor = RPCSEC_GSS;
 auth->ah_verf.oa_base = checksum.value;
 auth->ah_verf.oa_length = checksum.length;
 xdr_stat = xdr_opaque_auth(xdrs, &auth->ah_verf);



    sspi_release_buffer(&checksum);

 return (xdr_stat);
}
