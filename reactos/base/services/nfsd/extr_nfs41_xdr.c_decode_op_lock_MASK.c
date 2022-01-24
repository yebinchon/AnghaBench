#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  op; scalar_t__ res; } ;
typedef  TYPE_3__ nfs_resop4 ;
struct TYPE_6__ {int /*<<< orphan*/  lock_stateid; } ;
struct TYPE_7__ {int /*<<< orphan*/  denied; TYPE_1__ resok4; } ;
struct TYPE_9__ {int status; TYPE_2__ u; } ;
typedef  TYPE_4__ nfs41_lock_res ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  NFS4ERR_DENIED 129 
#define  NFS4_OK 128 
 int /*<<< orphan*/  OP_LOCK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static bool_t FUNC4(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_lock_res *res = (nfs41_lock_res*)resop->res;

    if (FUNC1(resop->op, OP_LOCK))
        return FALSE;

    if (!FUNC3(xdr, &res->status))
        return FALSE;

    switch (res->status) {
    case NFS4_OK:
        return FUNC2(xdr, res->u.resok4.lock_stateid);
        break;
    case NFS4ERR_DENIED:
        return FUNC0(xdr, &res->u.denied);
        break;
    default:
        break;
    }

    return TRUE;
}