#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* xdrproc_t ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
struct TYPE_3__ {int /*<<< orphan*/  gc_seq; } ;
struct TYPE_4__ {scalar_t__ svc; int /*<<< orphan*/  qop; } ;
struct rpc_gss_data {TYPE_1__ gc; TYPE_2__ sec; int /*<<< orphan*/  ctx; int /*<<< orphan*/  established; } ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ RPCSEC_GSS_SVC_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

bool_t
FUNC4(AUTH *auth, XDR *xdrs, xdrproc_t xdr_func, caddr_t xdr_ptr)
{
	struct rpc_gss_data	*gd;

	FUNC1("in authgss_unwrap()");

	gd = FUNC0(auth);

	if (!gd->established || gd->sec.svc == RPCSEC_GSS_SVC_NONE) {
		return ((*xdr_func)(xdrs, xdr_ptr));
	}
	return (FUNC3(xdrs, xdr_func, xdr_ptr,
				 gd->ctx, gd->sec.qop,
				 gd->sec.svc, gd->gc.gc_seq));
}