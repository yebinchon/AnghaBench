#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  scalar_t__ u_int ;
struct TYPE_15__ {scalar_t__ length; unsigned char* value; } ;
struct rpc_gss_init_res {scalar_t__ gr_major; TYPE_3__ gr_token; int /*<<< orphan*/  gr_win; TYPE_3__ gr_ctx; } ;
struct TYPE_14__ {scalar_t__ gc_proc; scalar_t__ gc_seq; TYPE_3__ gc_ctx; } ;
struct TYPE_17__ {scalar_t__ qop; int /*<<< orphan*/  req_flags; int /*<<< orphan*/  mech; int /*<<< orphan*/  cred; } ;
struct TYPE_13__ {int length; scalar_t__ value; } ;
struct rpc_gss_data {TYPE_2__ gc; int /*<<< orphan*/  win; void* established; TYPE_5__ sec; int /*<<< orphan*/  ctx; TYPE_1__ gc_wire_verf; int /*<<< orphan*/  clnt; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  seq ;
typedef  TYPE_3__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  gr ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  void* bool_t ;
struct TYPE_16__ {int /*<<< orphan*/  cf_stat; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AUTH_TIMEOUT ; 
 void* FALSE ; 
 TYPE_3__* GSS_C_NO_BUFFER ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_CONTEXT_EXPIRED ; 
 scalar_t__ GSS_S_CONTINUE_NEEDED ; 
 int /*<<< orphan*/  NULLPROC ; 
 scalar_t__ RPCSEC_GSS_CONTINUE_INIT ; 
 scalar_t__ RPCSEC_GSS_DATA ; 
 int /*<<< orphan*/  RPC_AUTHERROR ; 
 scalar_t__ RPC_SUCCESS ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,TYPE_3__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (scalar_t__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct rpc_gss_init_res*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 TYPE_4__ rpc_createerr ; 
 scalar_t__ xdr_rpc_gss_init_args ; 
 scalar_t__ xdr_rpc_gss_init_res ; 

__attribute__((used)) static bool_t
FUNC13(AUTH *auth)
{
	struct rpc_gss_data	*gd;
	struct rpc_gss_init_res	 gr;
	gss_buffer_desc		*recv_tokenp, send_token;
	OM_uint32		 maj_stat, min_stat, call_stat, ret_flags;

	FUNC8("in authgss_refresh()");

	gd = FUNC0(auth);

	if (gd->established)
		return (TRUE);

	/* GSS context establishment loop. */
	FUNC11(&gr, 0, sizeof(gr));
	recv_tokenp = GSS_C_NO_BUFFER;

#ifdef DEBUG
	print_rpc_gss_sec(&gd->sec);
#endif /*DEBUG*/

	for (;;) {
#ifdef DEBUG
		/* print the token we just received */
		if (recv_tokenp != GSS_C_NO_BUFFER) {
			log_debug("The token we just received (length %d):",
				  recv_tokenp->length);
			log_hexdump(recv_tokenp->value, recv_tokenp->length, 0);
		}
#endif
		maj_stat = FUNC4(&min_stat,
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

		if (recv_tokenp != GSS_C_NO_BUFFER) {
			FUNC5(&min_stat, &gr.gr_token);
			recv_tokenp = GSS_C_NO_BUFFER;
		}
		if (maj_stat != GSS_S_COMPLETE &&
		    maj_stat != GSS_S_CONTINUE_NEEDED) {
			FUNC10("gss_init_sec_context", maj_stat, min_stat);
			break;
		}
		if (send_token.length != 0) {
			FUNC11(&gr, 0, sizeof(gr));

#ifdef DEBUG
			/* print the token we are about to send */
			log_debug("The token being sent (length %d):",
				  send_token.length);
			log_hexdump(send_token.value, send_token.length, 0);
#endif

			call_stat = FUNC3(gd->clnt, NULLPROC,
					      (xdrproc_t)xdr_rpc_gss_init_args,
					      &send_token,
					      (xdrproc_t)xdr_rpc_gss_init_res,
					      (caddr_t)&gr, AUTH_TIMEOUT);

			FUNC5(&min_stat, &send_token);

			if (call_stat != RPC_SUCCESS ||
			    (gr.gr_major != GSS_S_COMPLETE &&
			     gr.gr_major != GSS_S_CONTINUE_NEEDED))
				return FALSE;

			if (gr.gr_ctx.length != 0) {
				if (gd->gc.gc_ctx.value)
					FUNC5(&min_stat,
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

		/* GSS_S_COMPLETE => check gss header verifier,
		 * usually checked in gss_validate
		 */
		if (maj_stat == GSS_S_COMPLETE) {
			gss_buffer_desc   bufin;
			gss_buffer_desc   bufout;
			u_int seq, qop_state = 0;

			seq = FUNC7(gr.gr_win);
			bufin.value = (unsigned char *)&seq;
			bufin.length = sizeof(seq);
			bufout.value = (unsigned char *)gd->gc_wire_verf.value;
			bufout.length = gd->gc_wire_verf.length;

			maj_stat = FUNC6(&min_stat, gd->ctx,
				&bufin, &bufout, &qop_state);

			if (maj_stat != GSS_S_COMPLETE
					|| qop_state != gd->sec.qop) {
				FUNC10("gss_verify_mic", maj_stat, min_stat);
				if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
					gd->established = FALSE;
					FUNC2(auth);
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
	/* End context negotiation loop. */
	if (gd->gc.gc_proc != RPCSEC_GSS_DATA) {
		if (gr.gr_token.length != 0)
			FUNC5(&min_stat, &gr.gr_token);

		FUNC1(auth);
		auth = NULL;
		rpc_createerr.cf_stat = RPC_AUTHERROR;

		return (FALSE);
	}
	return (TRUE);
}