#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
struct cb_resop {int dummy; } ;
struct cb_compound_res {int /*<<< orphan*/  resarray_count; int /*<<< orphan*/  resarray; int /*<<< orphan*/  tag; int /*<<< orphan*/  status; } ;
typedef  scalar_t__ bool_t ;
struct TYPE_6__ {scalar_t__ x_op; } ;
typedef  TYPE_1__ XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CB_COMPOUND_MAX_OPERATIONS ; 
 scalar_t__ TRUE ; 
 scalar_t__ XDR_FREE ; 
 scalar_t__ cb_compound_resop ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cb_compound_res*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

bool_t FUNC5(XDR *xdr, struct cb_compound_res *res)
{
    bool_t result;

    if (res == NULL)
        return TRUE;

    result = FUNC4(xdr, &res->status);
    if (!result) { FUNC0("compound_res.status"); goto out; }

    result = FUNC1(xdr, &res->tag);
    if (!result) { FUNC0("compound_res.tag"); goto out; }

    result = FUNC3(xdr, (char**)&res->resarray,
        &res->resarray_count, CB_COMPOUND_MAX_OPERATIONS,
        sizeof(struct cb_resop), (xdrproc_t)cb_compound_resop);
    if (!result) { FUNC0("compound_res.resarray"); goto out; }
out:
    if (xdr->x_op == XDR_FREE)
        FUNC2(res);
    return result;
}