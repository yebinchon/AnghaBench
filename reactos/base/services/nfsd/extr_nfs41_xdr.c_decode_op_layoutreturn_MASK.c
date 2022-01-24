#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {scalar_t__ status; int /*<<< orphan*/  stateid; scalar_t__ stateid_present; } ;
typedef  TYPE_1__ pnfs_layoutreturn_res ;
struct TYPE_5__ {int /*<<< orphan*/  op; scalar_t__ res; } ;
typedef  TYPE_2__ nfs_resop4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ NFS4_OK ; 
 int /*<<< orphan*/  OP_LAYOUTRETURN ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC4(
    XDR *xdr,
    nfs_resop4 *resop)
{
    pnfs_layoutreturn_res *res = (pnfs_layoutreturn_res*)resop->res;

    if (FUNC0(resop->op, OP_LAYOUTRETURN))
        return FALSE;

    if (!FUNC3(xdr, (uint32_t *)&res->status))
        return FALSE;

    if (res->status == NFS4_OK) {
        if (!FUNC1(xdr, &res->stateid_present))
            return FALSE;

        if (res->stateid_present)
            return FUNC2(xdr, &res->stateid);
    }
    return TRUE;
}