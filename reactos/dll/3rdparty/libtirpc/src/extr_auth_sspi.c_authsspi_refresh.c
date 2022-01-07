
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int xdrproc_t ;
typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct TYPE_22__ {scalar_t__ length; unsigned char* value; } ;
struct rpc_sspi_init_res {scalar_t__ gr_major; TYPE_3__ gr_token; int gr_win; TYPE_3__ gr_ctx; } ;
struct TYPE_21__ {scalar_t__ gc_proc; scalar_t__ gc_seq; TYPE_3__ gc_ctx; } ;
struct TYPE_25__ {scalar_t__ length; int * value; } ;
struct rpc_sspi_data {TYPE_2__ gc; int win; void* inprogress; void* established; TYPE_7__ gc_wire_verf; int ctx; int clnt; int expiry; int name; TYPE_10__* sec; } ;
typedef TYPE_3__ sspi_buffer_desc ;
typedef int seq ;
typedef int gr ;
typedef int caddr_t ;
typedef void* bool_t ;
struct TYPE_26__ {int cf_stat; } ;
struct TYPE_24__ {scalar_t__ cbBuffer; unsigned char* pvBuffer; void* BufferType; } ;
struct TYPE_23__ {int cBuffers; void* ulVersion; TYPE_5__* pBuffers; } ;
struct TYPE_20__ {int req_flags; int mech; int cred; } ;
struct TYPE_19__ {scalar_t__ svc; int cred; } ;
typedef TYPE_4__ SecBufferDesc ;
typedef TYPE_5__ SecBuffer ;
typedef int AUTH ;


 struct rpc_sspi_data* AUTH_PRIVATE (int *) ;
 int AUTH_TIMEOUT ;
 int DeleteSecurityContext (int *) ;
 void* FALSE ;
 int FreeContextBuffer (unsigned char*) ;
 unsigned long ISC_REQ_ALLOCATE_MEMORY ;
 unsigned long ISC_REQ_CONFIDENTIALITY ;
 unsigned long ISC_REQ_INTEGRITY ;
 unsigned long ISC_REQ_MUTUAL_AUTH ;
 scalar_t__ InitializeSecurityContextA (int *,int *,int ,unsigned long,int ,int ,TYPE_4__*,int ,int *,TYPE_4__*,scalar_t__*,int *) ;
 int NULLPROC ;
 scalar_t__ RPCSEC_SSPI_CONTINUE_INIT ;
 scalar_t__ RPCSEC_SSPI_DATA ;
 scalar_t__ RPCSEC_SSPI_INIT ;
 scalar_t__ RPCSEC_SSPI_SVC_PRIVACY ;
 int RPC_AUTHERROR ;
 scalar_t__ RPC_SUCCESS ;
 void* SECBUFFER_TOKEN ;
 void* SECBUFFER_VERSION ;
 int SECURITY_NATIVE_DREP ;
 scalar_t__ SEC_E_NO_AUTHENTICATING_AUTHORITY ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 TYPE_3__* SSPI_C_NO_BUFFER ;
 int SecInvalidateHandle (int *) ;
 void* TRUE ;
 int authsspi_destroy (int *) ;
 int authsspi_destroy_context (int *) ;
 int bufout ;
 scalar_t__ clnt_call (int ,int ,int ,TYPE_3__*,int ,int ,int ) ;
 scalar_t__ gss_init_sec_context (int *,int ,int *,int ,int ,int ,int ,int *,TYPE_3__*,int *,TYPE_3__*,scalar_t__*,int *) ;
 int gss_release_buffer (int *,TYPE_3__*) ;
 scalar_t__ gss_verify_mic (int *,int ,TYPE_3__*,int *,int *) ;
 int htonl (int ) ;
 int log_debug (char*,...) ;
 int log_hexdump (int ,char*,unsigned char*,scalar_t__,int ) ;
 int mem_free (int *,scalar_t__) ;
 int memset (struct rpc_sspi_init_res*,int ,int) ;
 int min_stat ;
 int print_negotiated_attrs (int *) ;
 int print_rpc_gss_sec (TYPE_10__*) ;
 TYPE_9__ rpc_createerr ;
 int sspi_release_buffer (TYPE_3__*) ;
 scalar_t__ sspi_verify_mic (int *,int ,TYPE_3__*,TYPE_7__*,int *) ;
 scalar_t__ xdr_rpc_sspi_init_args ;
 scalar_t__ xdr_rpc_sspi_init_res ;

__attribute__((used)) static bool_t
authsspi_refresh(AUTH *auth, void *tmp)
{
 struct rpc_sspi_data *gd;
 struct rpc_sspi_init_res gr;
    sspi_buffer_desc *recv_tokenp, send_token;
 uint32_t maj_stat, call_stat, ret_flags, i;
    unsigned long flags =
        ISC_REQ_MUTUAL_AUTH|ISC_REQ_INTEGRITY|ISC_REQ_ALLOCATE_MEMORY;
    SecBufferDesc out_desc, in_desc;
    SecBuffer wtkn[1], rtkn[1];

    log_debug("in authgss_refresh()");

 gd = AUTH_PRIVATE(auth);

 if ((gd->established && tmp == ((void*)0)) || gd->inprogress)
  return (TRUE);
    else if (tmp) {
        log_debug("trying to refresh credentials\n");
        DeleteSecurityContext(&gd->ctx);
        sspi_release_buffer(&gd->gc.gc_ctx);
        SecInvalidateHandle(&gd->ctx);
        mem_free(gd->gc_wire_verf.value, gd->gc_wire_verf.length);
        gd->gc_wire_verf.value = ((void*)0);
        gd->gc_wire_verf.length = 0;
        gd->established = FALSE;
        gd->gc.gc_proc = RPCSEC_SSPI_INIT;
    }


 memset(&gr, 0, sizeof(gr));
 recv_tokenp = SSPI_C_NO_BUFFER;
    send_token.length = 0;
    send_token.value = ((void*)0);

 print_rpc_gss_sec(gd->sec);

    if (gd->sec->svc == RPCSEC_SSPI_SVC_PRIVACY)
        flags |= ISC_REQ_CONFIDENTIALITY;

    for (i=0;;i++) {

  if (recv_tokenp != SSPI_C_NO_BUFFER) {
   log_debug("The token we just received (length %d):",
      recv_tokenp->length);
   log_hexdump(0, "", recv_tokenp->value, recv_tokenp->length, 0);
  }
        gd->inprogress = TRUE;
        out_desc.cBuffers = 1;
        out_desc.pBuffers = wtkn;
        out_desc.ulVersion = SECBUFFER_VERSION;
        wtkn[0].BufferType = SECBUFFER_TOKEN;
        wtkn[0].cbBuffer = send_token.length;
        wtkn[0].pvBuffer = send_token.value;
        log_debug("calling InitializeSecurityContextA for %s", gd->name);

        maj_stat = InitializeSecurityContextA(
                        &gd->sec->cred,
                        ((i==0)?((void*)0):&gd->ctx),
                        gd->name,
                        flags,
                        0,
                        SECURITY_NATIVE_DREP,
                        ((i==0)?((void*)0):&in_desc),
                        0,
                        &gd->ctx,
                        &out_desc,
                        &ret_flags,
                        &gd->expiry);

  if (recv_tokenp != SSPI_C_NO_BUFFER) {



            sspi_release_buffer(&gr.gr_token);

   recv_tokenp = SSPI_C_NO_BUFFER;
  }
  if (maj_stat != SEC_E_OK && maj_stat != SEC_I_CONTINUE_NEEDED) {
   log_debug("InitializeSecurityContext failed with %x", maj_stat);
   break;
  }
        send_token.length = wtkn[0].cbBuffer;
        send_token.value = wtkn[0].pvBuffer;
  if (send_token.length != 0) {
   memset(&gr, 0, sizeof(gr));


   log_debug("The token being sent (length %d):",
      send_token.length);
   log_hexdump(0, "", send_token.value, send_token.length, 0);

   call_stat = clnt_call(gd->clnt, NULLPROC,
           (xdrproc_t)xdr_rpc_sspi_init_args,
           &send_token,
           (xdrproc_t)xdr_rpc_sspi_init_res,
           (caddr_t)&gr, AUTH_TIMEOUT);





            FreeContextBuffer(send_token.value);

   if (call_stat != RPC_SUCCESS ||
       (gr.gr_major != SEC_E_OK &&
        gr.gr_major != SEC_I_CONTINUE_NEEDED))
    break;

   if (gr.gr_ctx.length != 0) {





                sspi_release_buffer(&gd->gc.gc_ctx);

    gd->gc.gc_ctx = gr.gr_ctx;
   }
   if (gr.gr_token.length != 0) {
    if (maj_stat != SEC_I_CONTINUE_NEEDED)
     break;
    recv_tokenp = &gr.gr_token;
                in_desc.cBuffers = 1;
                in_desc.pBuffers = rtkn;
                in_desc.ulVersion = SECBUFFER_VERSION;
                rtkn[0].BufferType = SECBUFFER_TOKEN;
                rtkn[0].cbBuffer = gr.gr_token.length;
                rtkn[0].pvBuffer = gr.gr_token.value;
   }
   gd->gc.gc_proc = RPCSEC_SSPI_CONTINUE_INIT;
  }




  if (maj_stat == SEC_E_OK) {
   sspi_buffer_desc bufin;
   u_int seq, qop_state = 0;

            print_negotiated_attrs(&gd->ctx);

   seq = htonl(gr.gr_win);
   bufin.value = (unsigned char *)&seq;
   bufin.length = sizeof(seq);




            maj_stat = sspi_verify_mic(&gd->ctx, 0, &bufin, &gd->gc_wire_verf, &qop_state);

   if (maj_stat != SEC_E_OK) {
    log_debug("authgss_refresh: sspi_verify_mic failed with %x", maj_stat);
    if (maj_stat == SEC_E_NO_AUTHENTICATING_AUTHORITY) {
     gd->established = FALSE;
     authsspi_destroy_context(auth);
    }
    break;
   }
   gd->established = TRUE;
            gd->inprogress = FALSE;
   gd->gc.gc_proc = RPCSEC_SSPI_DATA;
   gd->gc.gc_seq = 0;
   gd->win = gr.gr_win;
            log_debug("authgss_refresh: established GSS context");
   break;
  }
 }

 if (gd->gc.gc_proc != RPCSEC_SSPI_DATA) {
  if (gr.gr_token.length != 0)



            sspi_release_buffer(&gr.gr_token);

  authsspi_destroy(auth);
  auth = ((void*)0);
  rpc_createerr.cf_stat = RPC_AUTHERROR;

  return (FALSE);
 }
 return (TRUE);
}
