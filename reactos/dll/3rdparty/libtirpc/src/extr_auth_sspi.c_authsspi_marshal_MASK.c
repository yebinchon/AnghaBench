#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_19__ {scalar_t__ gc_proc; scalar_t__ gc_seq; } ;
struct TYPE_16__ {int /*<<< orphan*/  qop; } ;
struct rpc_sspi_data {scalar_t__ established; TYPE_4__ gc; int /*<<< orphan*/  ctx; TYPE_1__ sec; } ;
struct TYPE_17__ {char* value; scalar_t__ length; } ;
typedef  TYPE_2__ sspi_buffer_desc ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_20__ {char* oa_base; scalar_t__ oa_length; void* oa_flavor; } ;
struct TYPE_18__ {TYPE_5__ ah_verf; TYPE_5__ ah_cred; } ;
typedef  TYPE_3__ AUTH ;

/* Variables and functions */
 struct rpc_sspi_data* FUNC0 (TYPE_3__*) ; 
 scalar_t__ FALSE ; 
 int MAX_AUTH_BYTES ; 
 void* RPCSEC_GSS ; 
 scalar_t__ RPCSEC_SSPI_CONTINUE_INIT ; 
 scalar_t__ RPCSEC_SSPI_INIT ; 
 scalar_t__ SEC_E_NO_AUTHENTICATING_AUTHORITY ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__ _null_auth ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  min_stat ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t
FUNC13(AUTH *auth, XDR *xdrs, u_int *seq)
{
	XDR tmpxdrs;
	char tmp[MAX_AUTH_BYTES];
	struct rpc_sspi_data *gd;
	sspi_buffer_desc rpcbuf, checksum;
	uint32_t maj_stat;
	bool_t xdr_stat;

    FUNC6("in authgss_marshal()");

	gd = FUNC0(auth);

	if (gd->established) {
		gd->gc.gc_seq++;
        *seq = gd->gc.gc_seq;
    }

	FUNC11(&tmpxdrs, tmp, sizeof(tmp), XDR_ENCODE);

	if (!FUNC10(&tmpxdrs, &gd->gc)) {
        FUNC6("authsspi_marshal: xdr_rpc_sspi_cred failed");
		FUNC1(&tmpxdrs);
		return (FALSE);
	}
	auth->ah_cred.oa_flavor = RPCSEC_GSS;
	auth->ah_cred.oa_base = tmp;
	auth->ah_cred.oa_length = FUNC2(&tmpxdrs);

	FUNC1(&tmpxdrs);

	if (!FUNC9(xdrs, &auth->ah_cred)) {
        FUNC6("authsspi_marshal: failed to xdr GSS CRED");
		return (FALSE);
    }
	if (gd->gc.gc_proc == RPCSEC_SSPI_INIT ||
	    gd->gc.gc_proc == RPCSEC_SSPI_CONTINUE_INIT) {
		return (FUNC9(xdrs, &_null_auth));
	}
	/* Checksum serialized RPC header, up to and including credential. */
	rpcbuf.length = FUNC2(xdrs) - 4;
	//XDR_SETPOS(xdrs, 0);
	//rpcbuf.value = XDR_INLINE(xdrs, rpcbuf.length);
	rpcbuf.value = FUNC12(xdrs) + 1;

#if 0
	maj_stat = gss_get_mic(&min_stat, gd->ctx, gd->sec.qop,
			    &rpcbuf, &checksum);
#else
    maj_stat = FUNC7(&gd->ctx, 0, gd->gc.gc_seq, &rpcbuf, &checksum);
#endif
	if (maj_stat != SEC_E_OK) {
		FUNC6("authsspi_marshal: sspi_get_mic failed with %x", maj_stat);
		if (maj_stat == SEC_E_NO_AUTHENTICATING_AUTHORITY) {
			gd->established = FALSE;
			FUNC3(auth);
		}
		return (FALSE);
	}
	auth->ah_verf.oa_flavor = RPCSEC_GSS;
	auth->ah_verf.oa_base = checksum.value;
	auth->ah_verf.oa_length = checksum.length;
	xdr_stat = FUNC9(xdrs, &auth->ah_verf);
#if 0
	gss_release_buffer(&min_stat, &checksum);
#else
    FUNC8(&checksum);
#endif
	return (xdr_stat);
}