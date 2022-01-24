#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ sspi_buffer_desc ;
typedef  scalar_t__ bool_t ;
struct TYPE_7__ {scalar_t__ x_op; } ;
typedef  TYPE_2__ XDR ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 scalar_t__ XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool_t
FUNC2(XDR *xdrs, sspi_buffer_desc *p)
{
	bool_t xdr_stat;

	xdr_stat = FUNC1(xdrs, (char **)&p->value,
                        (u_int *)&p->length, (u_int)(-1));

	FUNC0("xdr_rpc_gss_init_args: %s %s (token %p:%d)",
                (xdrs->x_op == XDR_ENCODE) ? "encode" : "decode",
                (xdr_stat == TRUE) ? "success" : "failure",
                p->value, p->length);

	return (xdr_stat);
}