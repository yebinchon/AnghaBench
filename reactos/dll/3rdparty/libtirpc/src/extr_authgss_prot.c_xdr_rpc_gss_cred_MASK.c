#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
struct rpc_gss_cred {TYPE_1__ gc_ctx; int /*<<< orphan*/  gc_svc; int /*<<< orphan*/  gc_seq; int /*<<< orphan*/  gc_proc; int /*<<< orphan*/  gc_v; } ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  int bool_t ;
struct TYPE_8__ {scalar_t__ x_op; } ;
typedef  TYPE_2__ XDR ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_AUTH_BYTES ; 
 int TRUE ; 
 scalar_t__ XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

bool_t
FUNC4(XDR *xdrs, struct rpc_gss_cred *p)
{
	bool_t xdr_stat;

	xdr_stat = (FUNC3(xdrs, &p->gc_v) &&
		    FUNC2(xdrs, (enum_t *)&p->gc_proc) &&
		    FUNC3(xdrs, &p->gc_seq) &&
		    FUNC2(xdrs, (enum_t *)&p->gc_svc) &&
		    FUNC1(xdrs, (char **)&p->gc_ctx.value,
			      (u_int *)&p->gc_ctx.length, MAX_AUTH_BYTES));

	FUNC0("xdr_rpc_gss_cred: %s %s "
		  "(v %d, proc %d, seq %d, svc %d, ctx %p:%d)",
		  (xdrs->x_op == XDR_ENCODE) ? "encode" : "decode",
		  (xdr_stat == TRUE) ? "success" : "failure",
		  p->gc_v, p->gc_proc, p->gc_seq, p->gc_svc,
		  p->gc_ctx.value, p->gc_ctx.length);

	return (xdr_stat);
}