#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* xdrproc_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  sspi_qop_t ;
struct TYPE_12__ {int length; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ sspi_buffer_desc ;
typedef  scalar_t__ rpc_sspi_svc_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  int /*<<< orphan*/  PCtxtHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ RPCSEC_SSPI_SVC_INTEGRITY ; 
 scalar_t__ RPCSEC_SSPI_SVC_PRIVACY ; 
 scalar_t__ SEC_E_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  min_stat ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC13(XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr,
		      PCtxtHandle ctx, sspi_qop_t qop,
		      rpc_sspi_svc_t svc, u_int seq)
{
	sspi_buffer_desc databuf, wrapbuf;
	uint32_t maj_stat;
	int start, end, conf_state;
	bool_t xdr_stat;

    FUNC6("in xdr_rpc_sspi_wrap_data()");

    /* Skip databody length. */
	start = FUNC0(xdrs);
	FUNC2(xdrs, start + 4);

	/* Marshal rpc_gss_data_t (sequence number + arguments). */
	if (!FUNC12(xdrs, &seq) || !(*xdr_func)(xdrs, xdr_ptr))
		return (FALSE);
	end = FUNC0(xdrs);

	/* Set databuf to marshalled rpc_gss_data_t. */
	databuf.length = end - start - 4;
	FUNC2(xdrs, start + 4);
	databuf.value = FUNC1(xdrs, databuf.length);

	xdr_stat = FALSE;

	if (svc == RPCSEC_SSPI_SVC_INTEGRITY) {
		/* Marshal databody_integ length. */
		FUNC2(xdrs, start);
		if (!FUNC12(xdrs, (u_int *)&databuf.length))
			return (FALSE);

		/* Checksum rpc_gss_data_t. */
#if 0
		maj_stat = gss_get_mic(&min_stat, ctx, qop,
				       &databuf, &wrapbuf);
#else
        maj_stat = FUNC7(ctx, 0, seq, &databuf, &wrapbuf);
#endif
		if (maj_stat != SEC_E_OK) {
			FUNC6("xdr_rpc_sspi_wrap_data: sspi_get_mic failed with %x", maj_stat);
			return (FALSE);
		}
		/* Marshal checksum. */
		FUNC2(xdrs, end);
		xdr_stat = FUNC11(xdrs, (char **)&wrapbuf.value,
                            (u_int *)&wrapbuf.length, (u_int)-1);
#if 0
		gss_release_buffer(&min_stat, &wrapbuf);
#else
        FUNC8(&wrapbuf);
#endif
	}
	else if (svc == RPCSEC_SSPI_SVC_PRIVACY) {
		/* Encrypt rpc_gss_data_t. */
#if 0
		maj_stat = gss_wrap(&min_stat, ctx, TRUE, qop, &databuf,
				    &conf_state, &wrapbuf);
#else
        maj_stat = FUNC9(ctx, 0, &databuf, &wrapbuf, &conf_state);
#endif
		if (maj_stat != SEC_E_OK) {
			FUNC6("xdr_rpc_sspi_wrap_data: sspi_wrap failed with %x", maj_stat);
			return (FALSE);
		}
		/* Marshal databody_priv. */
		FUNC2(xdrs, start);
		xdr_stat = FUNC11(xdrs, (char **)&wrapbuf.value,
                            (u_int *)&wrapbuf.length, (u_int)-1);
#if 0
		gss_release_buffer(&min_stat, &wrapbuf);
#else
        FUNC8(&wrapbuf);
#endif
	}
	return (xdr_stat);
}