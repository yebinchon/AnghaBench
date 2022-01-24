#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_6__ {int /*<<< orphan*/  maxcount; TYPE_1__* stateid; int /*<<< orphan*/  minlength; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; int /*<<< orphan*/  iomode; int /*<<< orphan*/  layout_type; int /*<<< orphan*/  signal_layout_avail; } ;
typedef  TYPE_2__ pnfs_layoutget_args ;
struct TYPE_7__ {int /*<<< orphan*/  op; scalar_t__ arg; } ;
typedef  TYPE_3__ nfs_argop4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_5__ {int /*<<< orphan*/  stateid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_LAYOUTGET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC5(
    XDR *xdr,
    nfs_argop4 *argop)
{
    pnfs_layoutget_args *args = (pnfs_layoutget_args*)argop->arg;

    if (FUNC0(argop->op, OP_LAYOUTGET))
        return FALSE;

    if (!FUNC1(xdr, &args->signal_layout_avail))
        return FALSE;

    if (!FUNC4(xdr, (u_int32_t *)&args->layout_type))
        return FALSE;

    if (!FUNC4(xdr, (u_int32_t *)&args->iomode))
        return FALSE;

    if (!FUNC3(xdr, &args->offset))
        return FALSE;

    if (!FUNC3(xdr, &args->length))
        return FALSE;

    if (!FUNC3(xdr, &args->minlength))
        return FALSE;

    if (!FUNC2(xdr, &args->stateid->stateid))
        return FALSE;

    return FUNC4(xdr, &args->maxcount);
}