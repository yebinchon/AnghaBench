#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_22__ {scalar_t__ length; unsigned char* value; } ;
struct rpc_sspi_init_res {scalar_t__ gr_major; TYPE_3__ gr_token; int /*<<< orphan*/  gr_win; TYPE_3__ gr_ctx; } ;
struct TYPE_21__ {scalar_t__ gc_proc; scalar_t__ gc_seq; TYPE_3__ gc_ctx; } ;
struct TYPE_25__ {scalar_t__ length; int /*<<< orphan*/ * value; } ;
struct rpc_sspi_data {TYPE_2__ gc; int /*<<< orphan*/  win; void* inprogress; void* established; TYPE_7__ gc_wire_verf; int /*<<< orphan*/  ctx; int /*<<< orphan*/  clnt; int /*<<< orphan*/  expiry; int /*<<< orphan*/  name; TYPE_10__* sec; } ;
typedef  TYPE_3__ sspi_buffer_desc ;
typedef  int /*<<< orphan*/  seq ;
typedef  int /*<<< orphan*/  gr ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  void* bool_t ;
struct TYPE_26__ {int /*<<< orphan*/  cf_stat; } ;
struct TYPE_24__ {scalar_t__ cbBuffer; unsigned char* pvBuffer; void* BufferType; } ;
struct TYPE_23__ {int cBuffers; void* ulVersion; TYPE_5__* pBuffers; } ;
struct TYPE_20__ {int /*<<< orphan*/  req_flags; int /*<<< orphan*/  mech; int /*<<< orphan*/  cred; } ;
struct TYPE_19__ {scalar_t__ svc; int /*<<< orphan*/  cred; } ;
typedef  TYPE_4__ SecBufferDesc ;
typedef  TYPE_5__ SecBuffer ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_sspi_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AUTH_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned long ISC_REQ_ALLOCATE_MEMORY ; 
 unsigned long ISC_REQ_CONFIDENTIALITY ; 
 unsigned long ISC_REQ_INTEGRITY ; 
 unsigned long ISC_REQ_MUTUAL_AUTH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NULLPROC ; 
 scalar_t__ RPCSEC_SSPI_CONTINUE_INIT ; 
 scalar_t__ RPCSEC_SSPI_DATA ; 
 scalar_t__ RPCSEC_SSPI_INIT ; 
 scalar_t__ RPCSEC_SSPI_SVC_PRIVACY ; 
 int /*<<< orphan*/  RPC_AUTHERROR ; 
 scalar_t__ RPC_SUCCESS ; 
 void* SECBUFFER_TOKEN ; 
 void* SECBUFFER_VERSION ; 
 int /*<<< orphan*/  SECURITY_NATIVE_DREP ; 
 scalar_t__ SEC_E_NO_AUTHENTICATING_AUTHORITY ; 
 scalar_t__ SEC_E_OK ; 
 scalar_t__ SEC_I_CONTINUE_NEEDED ; 
 TYPE_3__* SSPI_C_NO_BUFFER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bufout ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,TYPE_3__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,unsigned char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct rpc_sspi_init_res*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  min_stat ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_10__*) ; 
 TYPE_9__ rpc_createerr ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 scalar_t__ xdr_rpc_sspi_init_args ; 
 scalar_t__ xdr_rpc_sspi_init_res ; 

__attribute__((used)) static bool_t
FUNC20(AUTH *auth, void *tmp)
{
	struct rpc_sspi_data *gd;
	struct rpc_sspi_init_res gr;
    sspi_buffer_desc *recv_tokenp, send_token;
	uint32_t maj_stat, call_stat, ret_flags, i;
    unsigned long flags = 
        ISC_REQ_MUTUAL_AUTH|ISC_REQ_INTEGRITY|ISC_REQ_ALLOCATE_MEMORY;
    SecBufferDesc out_desc, in_desc;
    SecBuffer wtkn[1], rtkn[1];    

    FUNC12("in authgss_refresh()");

	gd = FUNC0(auth);

	if ((gd->established && tmp == NULL) || gd->inprogress)
		return (TRUE);
    else if (tmp) {
        FUNC12("trying to refresh credentials\n");
        FUNC1(&gd->ctx);
        FUNC18(&gd->gc.gc_ctx);
        FUNC4(&gd->ctx);
        FUNC14(gd->gc_wire_verf.value, gd->gc_wire_verf.length);
        gd->gc_wire_verf.value = NULL;
        gd->gc_wire_verf.length = 0;
        gd->established = FALSE;        
        gd->gc.gc_proc = RPCSEC_SSPI_INIT;
    }

	/* GSS context establishment loop. */
	FUNC15(&gr, 0, sizeof(gr));
	recv_tokenp = SSPI_C_NO_BUFFER;
    send_token.length = 0;
    send_token.value = NULL;

	FUNC17(gd->sec);

    if (gd->sec->svc == RPCSEC_SSPI_SVC_PRIVACY)
        flags |= ISC_REQ_CONFIDENTIALITY;

    for (i=0;;i++) {
		/* print the token we just received */
		if (recv_tokenp != SSPI_C_NO_BUFFER) {
			FUNC12("The token we just received (length %d):",
				  recv_tokenp->length);
			FUNC13(0, "", recv_tokenp->value, recv_tokenp->length, 0);
		}
#if 0
		maj_stat = gss_init_sec_context(&min_stat,
						gd->sec.cred,
						&gd->ctx,
						gd->name,
						gd->sec.mech,
						gd->sec.req_flags,
						0,		/* time req */
						NULL,		/* channel */
						recv_tokenp,
						NULL,		/* used mech */
						&send_token,
						&ret_flags,
						NULL);		/* time rec */
#else
        gd->inprogress = TRUE;
        out_desc.cBuffers = 1;
        out_desc.pBuffers = wtkn;
        out_desc.ulVersion = SECBUFFER_VERSION;
        wtkn[0].BufferType = SECBUFFER_TOKEN;
        wtkn[0].cbBuffer = send_token.length;
        wtkn[0].pvBuffer = send_token.value;
        FUNC12("calling InitializeSecurityContextA for %s", gd->name);

        maj_stat = FUNC3(
                        &gd->sec->cred, 
                        ((i==0)?NULL:&gd->ctx),
                        gd->name, 
                        flags, 
                        0, 
                        SECURITY_NATIVE_DREP,  
                        ((i==0)?NULL:&in_desc),
                        0, 
                        &gd->ctx, 
                        &out_desc, 
                        &ret_flags, 
                        &gd->expiry);
#endif
		if (recv_tokenp != SSPI_C_NO_BUFFER) {
#if 0
			gss_release_buffer(&min_stat, &gr.gr_token);
#else
            FUNC18(&gr.gr_token);
#endif
			recv_tokenp = SSPI_C_NO_BUFFER;
		}
		if (maj_stat != SEC_E_OK && maj_stat != SEC_I_CONTINUE_NEEDED) {
			FUNC12("InitializeSecurityContext failed with %x", maj_stat);
			break;
		}
        send_token.length = wtkn[0].cbBuffer;
        send_token.value = wtkn[0].pvBuffer;
		if (send_token.length != 0) {
			FUNC15(&gr, 0, sizeof(gr));

			/* print the token we are about to send */
			FUNC12("The token being sent (length %d):",
				  send_token.length);
			FUNC13(0, "", send_token.value, send_token.length, 0);

			call_stat = FUNC7(gd->clnt, NULLPROC,
					      (xdrproc_t)xdr_rpc_sspi_init_args,
					      &send_token,
					      (xdrproc_t)xdr_rpc_sspi_init_res,
					      (caddr_t)&gr, AUTH_TIMEOUT);
#if 0
			gss_release_buffer(&min_stat, &send_token);
#else
            // 11/29/2010 [aglo] can't call sspi_relase_buffer, causes heap 
            // corruption (later) to try and free the buffer directly.
            FUNC2(send_token.value);
#endif
			if (call_stat != RPC_SUCCESS ||
			    (gr.gr_major != SEC_E_OK &&
			     gr.gr_major != SEC_I_CONTINUE_NEEDED))
				break;

			if (gr.gr_ctx.length != 0) {
#if 0
				if (gd->gc.gc_ctx.value)
					gss_release_buffer(&min_stat,
							   &gd->gc.gc_ctx);
#else 
                FUNC18(&gd->gc.gc_ctx);
#endif
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

		/* GSS_S_COMPLETE => check gss header verifier,
		 * usually checked in gss_validate
		 */
		if (maj_stat == SEC_E_OK) {
			sspi_buffer_desc bufin;
			u_int seq, qop_state = 0;
            
            FUNC16(&gd->ctx);

			seq = FUNC11(gr.gr_win);
			bufin.value = (unsigned char *)&seq;
			bufin.length = sizeof(seq);
#if 0
			maj_stat = gss_verify_mic(&min_stat, gd->ctx,
				&bufin, &bufout, &qop_state);
#else
            maj_stat = FUNC19(&gd->ctx, 0, &bufin, &gd->gc_wire_verf, &qop_state);
#endif
			if (maj_stat != SEC_E_OK) {
				FUNC12("authgss_refresh: sspi_verify_mic failed with %x", maj_stat);
				if (maj_stat == SEC_E_NO_AUTHENTICATING_AUTHORITY) {
					gd->established = FALSE;
					FUNC6(auth);
				}
				break;
			}
			gd->established = TRUE;
            gd->inprogress = FALSE;
			gd->gc.gc_proc = RPCSEC_SSPI_DATA;
			gd->gc.gc_seq = 0;
			gd->win = gr.gr_win;
            FUNC12("authgss_refresh: established GSS context");
			break;
		}
	}
	/* End context negotiation loop. */
	if (gd->gc.gc_proc != RPCSEC_SSPI_DATA) {
		if (gr.gr_token.length != 0)
#if 0
			gss_release_buffer(&min_stat, &gr.gr_token);
#else
            FUNC18(&gr.gr_token);
#endif
		FUNC5(auth);
		auth = NULL;
		rpc_createerr.cf_stat = RPC_AUTHERROR;

		return (FALSE);
	}
	return (TRUE);
}