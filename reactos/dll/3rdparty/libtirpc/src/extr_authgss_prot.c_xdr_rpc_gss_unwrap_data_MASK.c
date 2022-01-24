#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ (* xdrproc_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  wrapbuf ;
typedef  scalar_t__ u_int ;
typedef  scalar_t__ rpc_gss_svc_t ;
typedef  scalar_t__ gss_qop_t ;
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  databuf ;
typedef  int /*<<< orphan*/ * caddr_t ;
typedef  int bool_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  MAX_NETOBJ_SZ ; 
 scalar_t__ RPCSEC_GSS_SVC_INTEGRITY ; 
 scalar_t__ RPCSEC_GSS_SVC_PRIVACY ; 
 int TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int*,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char**,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ xdr_void ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool_t
FUNC11(XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr,
			gss_ctx_id_t ctx, gss_qop_t qop,
			rpc_gss_svc_t svc, u_int seq)
{
	XDR		tmpxdrs;
	gss_buffer_desc	databuf, wrapbuf;
	OM_uint32	maj_stat, min_stat;
	u_int		seq_num, qop_state;
	int			conf_state;
	bool_t		xdr_stat;

	if (xdr_func == (xdrproc_t)xdr_void || xdr_ptr == NULL)
		return (TRUE);

	FUNC6(&databuf, 0, sizeof(databuf));
	FUNC6(&wrapbuf, 0, sizeof(wrapbuf));

	if (svc == RPCSEC_GSS_SVC_INTEGRITY) {
		/* Decode databody_integ. */
		if (!FUNC8(xdrs, (char **)&databuf.value, (u_int *)&databuf.length,
			       MAX_NETOBJ_SZ)) {
			FUNC4("xdr decode databody_integ failed");
			return (FALSE);
		}
		/* Decode checksum. */
		if (!FUNC8(xdrs, (char **)&wrapbuf.value, (u_int *)&wrapbuf.length,
			       MAX_NETOBJ_SZ)) {
			FUNC1(&min_stat, &databuf);
			FUNC4("xdr decode checksum failed");
			return (FALSE);
		}
		/* Verify checksum and QOP. */
		maj_stat = FUNC3(&min_stat, ctx, &databuf,
					  &wrapbuf, &qop_state);
		FUNC1(&min_stat, &wrapbuf);

		if (maj_stat != GSS_S_COMPLETE || qop_state != qop) {
			FUNC1(&min_stat, &databuf);
			FUNC5("gss_verify_mic", maj_stat, min_stat);
			return (FALSE);
		}
	}
	else if (svc == RPCSEC_GSS_SVC_PRIVACY) {
		/* Decode databody_priv. */
		if (!FUNC8(xdrs, (char **)&wrapbuf.value, (u_int *)&wrapbuf.length,
			       MAX_NETOBJ_SZ)) {
			FUNC4("xdr decode databody_priv failed");
			return (FALSE);
		}
		/* Decrypt databody. */
		maj_stat = FUNC2(&min_stat, ctx, &wrapbuf, &databuf,
				      &conf_state, &qop_state);

		FUNC1(&min_stat, &wrapbuf);

		/* Verify encryption and QOP. */
		if (maj_stat != GSS_S_COMPLETE || qop_state != qop ||
			conf_state != TRUE) {
			FUNC1(&min_stat, &databuf);
			FUNC5("gss_unwrap", maj_stat, min_stat);
			return (FALSE);
		}
	}
	/* Decode rpc_gss_data_t (sequence number + arguments). */
	FUNC10(&tmpxdrs, databuf.value, databuf.length, XDR_DECODE);
	xdr_stat = (FUNC9(&tmpxdrs, &seq_num) &&
		    (*xdr_func)(&tmpxdrs, xdr_ptr));
	FUNC0(&tmpxdrs);
	FUNC1(&min_stat, &databuf);

	/* Verify sequence number. */
	if (xdr_stat == TRUE && seq_num != seq) {
		FUNC4("wrong sequence number in databody");
		return (FALSE);
	}
	return (xdr_stat);
}