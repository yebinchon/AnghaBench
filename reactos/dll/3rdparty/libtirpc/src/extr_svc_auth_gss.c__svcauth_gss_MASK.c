#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct svc_rpc_gss_data {int seqlast; int seqmask; int win; int seq; void* established; scalar_t__ ctx; scalar_t__ client_name; } ;
struct TYPE_7__ {int /*<<< orphan*/  oa_length; int /*<<< orphan*/  oa_base; } ;
struct svc_req {char* rq_clntname; char* rq_svcname; TYPE_3__* rq_xprt; int /*<<< orphan*/  rq_proc; TYPE_1__ rq_cred; scalar_t__ rq_clntcred; } ;
struct rpc_msg {int dummy; } ;
struct rpc_gss_init_res {int gr_win; int /*<<< orphan*/  gr_major; } ;
struct rpc_gss_cred {scalar_t__ gc_v; scalar_t__ gc_svc; scalar_t__ gc_seq; int gc_proc; } ;
typedef  enum auth_stat { ____Placeholder_auth_stat } auth_stat ;
typedef  scalar_t__ caddr_t ;
typedef  int bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_9__ {TYPE_2__* xp_auth; int /*<<< orphan*/  xp_verf; } ;
struct TYPE_8__ {scalar_t__ svc_ah_private; int /*<<< orphan*/ * svc_ah_ops; } ;
typedef  TYPE_2__ SVCAUTH ;

/* Variables and functions */
 int AUTH_BADCRED ; 
 int AUTH_FAILED ; 
 int AUTH_OK ; 
 int AUTH_REJECTEDCRED ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 scalar_t__ MAXSEQ ; 
 int /*<<< orphan*/  NULLPROC ; 
#define  RPCSEC_GSS_CONTINUE_INIT 131 
 int RPCSEC_GSS_CREDPROBLEM ; 
 int RPCSEC_GSS_CTXPROBLEM ; 
#define  RPCSEC_GSS_DATA 130 
#define  RPCSEC_GSS_DESTROY 129 
#define  RPCSEC_GSS_INIT 128 
 scalar_t__ RPCSEC_GSS_SVC_INTEGRITY ; 
 scalar_t__ RPCSEC_GSS_SVC_NONE ; 
 scalar_t__ RPCSEC_GSS_SVC_PRIVACY ; 
 scalar_t__ RPCSEC_GSS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct svc_rpc_gss_data* FUNC1 (TYPE_2__*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _null_auth ; 
 int /*<<< orphan*/ * _svcauth_gss_name ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_gss_cred*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  svc_auth_gss_ops ; 
 TYPE_2__ svc_auth_none ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct svc_req*,struct rpc_gss_init_res*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct svc_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct svc_rpc_gss_data*,struct rpc_msg*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct rpc_gss_cred*) ; 
 int /*<<< orphan*/  xdr_rpc_gss_init_res ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum auth_stat
FUNC17(struct svc_req *rqst, struct rpc_msg *msg, bool_t *no_dispatch)
{
	XDR	 		 xdrs;
	SVCAUTH			*auth;
	struct svc_rpc_gss_data	*gd;
	struct rpc_gss_cred	*gc;
	struct rpc_gss_init_res	 gr;
	int			 call_stat, offset;

	FUNC6("in svcauth_gss()");

	/* Initialize reply. */
	rqst->rq_xprt->xp_verf = _null_auth;

	/* Allocate and set up server auth handle. */
	if (rqst->rq_xprt->xp_auth == NULL ||
	    rqst->rq_xprt->xp_auth == &svc_auth_none) {
		if ((auth = FUNC3(sizeof(*auth), 1)) == NULL) {
			FUNC4(stderr, "svcauth_gss: out_of_memory\n");
			return (AUTH_FAILED);
		}
		if ((gd = FUNC3(sizeof(*gd), 1)) == NULL) {
			FUNC4(stderr, "svcauth_gss: out_of_memory\n");
			return (AUTH_FAILED);
		}
		auth->svc_ah_ops = &svc_auth_gss_ops;
		auth->svc_ah_private = (caddr_t) gd;
		rqst->rq_xprt->xp_auth = auth;
	}
	else gd = FUNC1(rqst->rq_xprt->xp_auth);

	/* Deserialize client credentials. */
	if (rqst->rq_cred.oa_length <= 0)
		return (AUTH_BADCRED);

	gc = (struct rpc_gss_cred *)rqst->rq_clntcred;
	FUNC7(gc, 0, sizeof(*gc));

	FUNC16(&xdrs, rqst->rq_cred.oa_base,
		      rqst->rq_cred.oa_length, XDR_DECODE);

	if (!FUNC15(&xdrs, gc)) {
		FUNC2(&xdrs);
		return (AUTH_BADCRED);
	}
	FUNC2(&xdrs);

	/* Check version. */
	if (gc->gc_v != RPCSEC_GSS_VERSION)
		return (AUTH_BADCRED);

	/* Check RPCSEC_GSS service. */
	if (gc->gc_svc != RPCSEC_GSS_SVC_NONE &&
	    gc->gc_svc != RPCSEC_GSS_SVC_INTEGRITY &&
	    gc->gc_svc != RPCSEC_GSS_SVC_PRIVACY)
		return (AUTH_BADCRED);

	/* Check sequence number. */
	if (gd->established) {
		if (gc->gc_seq > MAXSEQ)
			return (RPCSEC_GSS_CTXPROBLEM);

		if ((offset = gd->seqlast - gc->gc_seq) < 0) {
			gd->seqlast = gc->gc_seq;
			offset = 0 - offset;
			gd->seqmask <<= offset;
			offset = 0;
		}
		else if (offset >= gd->win || (gd->seqmask & (1 << offset))) {
			*no_dispatch = 1;
			return (RPCSEC_GSS_CTXPROBLEM);
		}
		gd->seq = gc->gc_seq;
		gd->seqmask |= (1 << offset);
	}

	if (gd->established) {
		rqst->rq_clntname = (char *)gd->client_name;
		rqst->rq_svcname = (char *)gd->ctx;
	}

	/* Handle RPCSEC_GSS control procedure. */
	switch (gc->gc_proc) {

	case RPCSEC_GSS_INIT:
	case RPCSEC_GSS_CONTINUE_INIT:
		if (rqst->rq_proc != NULLPROC)
			return (AUTH_FAILED);		/* XXX ? */

		if (_svcauth_gss_name == NULL) {
			if (!FUNC11("nfs"))
				return (AUTH_FAILED);
		}

		if (!FUNC10())
			return (AUTH_FAILED);

		if (!FUNC9(rqst, &gr))
			return (AUTH_REJECTEDCRED);

		if (!FUNC12(rqst, FUNC5(gr.gr_win)))
			return (AUTH_FAILED);

		*no_dispatch = TRUE;

		call_stat = FUNC8(rqst->rq_xprt, 
			(xdrproc_t)xdr_rpc_gss_init_res, (caddr_t)&gr);

		if (!call_stat)
			return (AUTH_FAILED);

		if (gr.gr_major == GSS_S_COMPLETE)
			gd->established = TRUE;

		break;

	case RPCSEC_GSS_DATA:
		if (!FUNC14(gd, msg))
			return (RPCSEC_GSS_CREDPROBLEM);

		if (!FUNC12(rqst, FUNC5(gc->gc_seq)))
			return (AUTH_FAILED);
		break;

	case RPCSEC_GSS_DESTROY:
		if (rqst->rq_proc != NULLPROC)
			return (AUTH_FAILED);		/* XXX ? */

		if (!FUNC14(gd, msg))
			return (RPCSEC_GSS_CREDPROBLEM);

		if (!FUNC12(rqst, FUNC5(gc->gc_seq)))
			return (AUTH_FAILED);

		if (!FUNC13())
			return (AUTH_FAILED);

		FUNC0(rqst->rq_xprt->xp_auth);
		rqst->rq_xprt->xp_auth = &svc_auth_none;

		break;

	default:
		return (AUTH_REJECTEDCRED);
		break;
	}
	return (AUTH_OK);
}