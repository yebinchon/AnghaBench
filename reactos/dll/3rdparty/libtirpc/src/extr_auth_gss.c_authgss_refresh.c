
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef scalar_t__ u_int ;
struct TYPE_15__ {scalar_t__ length; unsigned char* value; } ;
struct rpc_gss_init_res {scalar_t__ gr_major; TYPE_3__ gr_token; int gr_win; TYPE_3__ gr_ctx; } ;
struct TYPE_14__ {scalar_t__ gc_proc; scalar_t__ gc_seq; TYPE_3__ gc_ctx; } ;
struct TYPE_17__ {scalar_t__ qop; int req_flags; int mech; int cred; } ;
struct TYPE_13__ {int length; scalar_t__ value; } ;
struct rpc_gss_data {TYPE_2__ gc; int win; void* established; TYPE_5__ sec; int ctx; TYPE_1__ gc_wire_verf; int clnt; int name; } ;
typedef int seq ;
typedef TYPE_3__ gss_buffer_desc ;
typedef int gr ;
typedef int caddr_t ;
typedef void* bool_t ;
struct TYPE_16__ {int cf_stat; } ;
typedef scalar_t__ OM_uint32 ;
typedef int AUTH ;


 struct rpc_gss_data* AUTH_PRIVATE (int *) ;
 int AUTH_TIMEOUT ;
 void* FALSE ;
 TYPE_3__* GSS_C_NO_BUFFER ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_CONTEXT_EXPIRED ;
 scalar_t__ GSS_S_CONTINUE_NEEDED ;
 int NULLPROC ;
 scalar_t__ RPCSEC_GSS_CONTINUE_INIT ;
 scalar_t__ RPCSEC_GSS_DATA ;
 int RPC_AUTHERROR ;
 scalar_t__ RPC_SUCCESS ;
 void* TRUE ;
 int authgss_destroy (int *) ;
 int authgss_destroy_context (int *) ;
 scalar_t__ clnt_call (int ,int ,int ,TYPE_3__*,int ,int ,int ) ;
 scalar_t__ gss_init_sec_context (scalar_t__*,int ,int *,int ,int ,int ,int ,int *,TYPE_3__*,int *,TYPE_3__*,scalar_t__*,int *) ;
 int gss_release_buffer (scalar_t__*,TYPE_3__*) ;
 scalar_t__ gss_verify_mic (scalar_t__*,int ,TYPE_3__*,TYPE_3__*,scalar_t__*) ;
 scalar_t__ htonl (int ) ;
 int log_debug (char*,...) ;
 int log_hexdump (unsigned char*,scalar_t__,int ) ;
 int log_status (char*,scalar_t__,scalar_t__) ;
 int memset (struct rpc_gss_init_res*,int ,int) ;
 int print_rpc_gss_sec (TYPE_5__*) ;
 TYPE_4__ rpc_createerr ;
 scalar_t__ xdr_rpc_gss_init_args ;
 scalar_t__ xdr_rpc_gss_init_res ;

__attribute__((used)) static bool_t
authgss_refresh(AUTH *auth)
{
 struct rpc_gss_data *gd;
 struct rpc_gss_init_res gr;
 gss_buffer_desc *recv_tokenp, send_token;
 OM_uint32 maj_stat, min_stat, call_stat, ret_flags;

 log_debug("in authgss_refresh()");

 gd = AUTH_PRIVATE(auth);

 if (gd->established)
  return (TRUE);


 memset(&gr, 0, sizeof(gr));
 recv_tokenp = GSS_C_NO_BUFFER;





 for (;;) {
  maj_stat = gss_init_sec_context(&min_stat,
      gd->sec.cred,
      &gd->ctx,
      gd->name,
      gd->sec.mech,
      gd->sec.req_flags,
      0,
      ((void*)0),
      recv_tokenp,
      ((void*)0),
      &send_token,
      &ret_flags,
      ((void*)0));

  if (recv_tokenp != GSS_C_NO_BUFFER) {
   gss_release_buffer(&min_stat, &gr.gr_token);
   recv_tokenp = GSS_C_NO_BUFFER;
  }
  if (maj_stat != GSS_S_COMPLETE &&
      maj_stat != GSS_S_CONTINUE_NEEDED) {
   log_status("gss_init_sec_context", maj_stat, min_stat);
   break;
  }
  if (send_token.length != 0) {
   memset(&gr, 0, sizeof(gr));
   call_stat = clnt_call(gd->clnt, NULLPROC,
           (xdrproc_t)xdr_rpc_gss_init_args,
           &send_token,
           (xdrproc_t)xdr_rpc_gss_init_res,
           (caddr_t)&gr, AUTH_TIMEOUT);

   gss_release_buffer(&min_stat, &send_token);

   if (call_stat != RPC_SUCCESS ||
       (gr.gr_major != GSS_S_COMPLETE &&
        gr.gr_major != GSS_S_CONTINUE_NEEDED))
    return FALSE;

   if (gr.gr_ctx.length != 0) {
    if (gd->gc.gc_ctx.value)
     gss_release_buffer(&min_stat,
          &gd->gc.gc_ctx);
    gd->gc.gc_ctx = gr.gr_ctx;
   }
   if (gr.gr_token.length != 0) {
    if (maj_stat != GSS_S_CONTINUE_NEEDED)
     break;
    recv_tokenp = &gr.gr_token;
   }
   gd->gc.gc_proc = RPCSEC_GSS_CONTINUE_INIT;
  }




  if (maj_stat == GSS_S_COMPLETE) {
   gss_buffer_desc bufin;
   gss_buffer_desc bufout;
   u_int seq, qop_state = 0;

   seq = htonl(gr.gr_win);
   bufin.value = (unsigned char *)&seq;
   bufin.length = sizeof(seq);
   bufout.value = (unsigned char *)gd->gc_wire_verf.value;
   bufout.length = gd->gc_wire_verf.length;

   maj_stat = gss_verify_mic(&min_stat, gd->ctx,
    &bufin, &bufout, &qop_state);

   if (maj_stat != GSS_S_COMPLETE
     || qop_state != gd->sec.qop) {
    log_status("gss_verify_mic", maj_stat, min_stat);
    if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
     gd->established = FALSE;
     authgss_destroy_context(auth);
    }
    return (FALSE);
   }
   gd->established = TRUE;
   gd->gc.gc_proc = RPCSEC_GSS_DATA;
   gd->gc.gc_seq = 0;
   gd->win = gr.gr_win;
   break;
  }
 }

 if (gd->gc.gc_proc != RPCSEC_GSS_DATA) {
  if (gr.gr_token.length != 0)
   gss_release_buffer(&min_stat, &gr.gr_token);

  authgss_destroy(auth);
  auth = ((void*)0);
  rpc_createerr.cf_stat = RPC_AUTHERROR;

  return (FALSE);
 }
 return (TRUE);
}
