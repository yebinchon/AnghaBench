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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_13__ {int /*<<< orphan*/  qop; } ;
struct TYPE_16__ {scalar_t__ gc_proc; int /*<<< orphan*/  gc_seq; } ;
struct rpc_gss_data {scalar_t__ established; TYPE_1__ sec; int /*<<< orphan*/  ctx; TYPE_4__ gc; } ;
struct TYPE_14__ {char* value; void* length; } ;
typedef  TYPE_2__ gss_buffer_desc ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_17__ {char* oa_base; void* oa_length; void* oa_flavor; } ;
struct TYPE_15__ {TYPE_5__ ah_verf; TYPE_5__ ah_cred; } ;
typedef  scalar_t__ OM_uint32 ;
typedef  TYPE_3__ AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (TYPE_3__*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_CONTEXT_EXPIRED ; 
 int MAX_AUTH_BYTES ; 
 void* RPCSEC_GSS ; 
 scalar_t__ RPCSEC_GSS_CONTINUE_INIT ; 
 scalar_t__ RPCSEC_GSS_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__ _null_auth ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t
FUNC13(AUTH *auth, XDR *xdrs)
{
	XDR			 tmpxdrs;
	char			 tmp[MAX_AUTH_BYTES];
	struct rpc_gss_data	*gd;
	gss_buffer_desc		 rpcbuf, checksum;
	OM_uint32		 maj_stat, min_stat;
	bool_t			 xdr_stat;

	FUNC8("in authgss_marshal()");

	gd = FUNC0(auth);

	if (gd->established)
		gd->gc.gc_seq++;

	FUNC12(&tmpxdrs, tmp, sizeof(tmp), XDR_ENCODE);

	if (!FUNC11(&tmpxdrs, &gd->gc)) {
		FUNC1(&tmpxdrs);
		return (FALSE);
	}
	auth->ah_cred.oa_flavor = RPCSEC_GSS;
	auth->ah_cred.oa_base = tmp;
	auth->ah_cred.oa_length = FUNC2(&tmpxdrs);

	FUNC1(&tmpxdrs);

	if (!FUNC10(xdrs, &auth->ah_cred))
		return (FALSE);

	if (gd->gc.gc_proc == RPCSEC_GSS_INIT ||
	    gd->gc.gc_proc == RPCSEC_GSS_CONTINUE_INIT) {
		return (FUNC10(xdrs, &_null_auth));
	}
	/* Checksum serialized RPC header, up to and including credential. */
	rpcbuf.length = FUNC2(xdrs);
	FUNC4(xdrs, 0);
	rpcbuf.value = FUNC3(xdrs, rpcbuf.length);

	maj_stat = FUNC6(&min_stat, gd->ctx, gd->sec.qop,
			    &rpcbuf, &checksum);

	if (maj_stat != GSS_S_COMPLETE) {
		FUNC9("gss_get_mic", maj_stat, min_stat);
		if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
			gd->established = FALSE;
			FUNC5(auth);
		}
		return (FALSE);
	}
	auth->ah_verf.oa_flavor = RPCSEC_GSS;
	auth->ah_verf.oa_base = checksum.value;
	auth->ah_verf.oa_length = checksum.length;

	xdr_stat = FUNC10(xdrs, &auth->ah_verf);
	FUNC7(&min_stat, &checksum);

	return (xdr_stat);
}