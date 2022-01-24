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
struct TYPE_4__ {int /*<<< orphan*/  op; scalar_t__ res; } ;
typedef  TYPE_1__ nfs_resop4 ;
struct TYPE_5__ {scalar_t__ status; scalar_t__ supported; scalar_t__ access; } ;
typedef  TYPE_2__ nfs41_access_res ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ NFS4_OK ; 
 int /*<<< orphan*/  OP_ACCESS ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static bool_t FUNC2(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_access_res *res = (nfs41_access_res*)resop->res;

    if (FUNC0(resop->op, OP_ACCESS))
        return FALSE;

    if (!FUNC1(xdr, &res->status))
        return FALSE;

    if (res->status == NFS4_OK)
    {
        if (!FUNC1(xdr, &res->supported))
            return FALSE;

        return FUNC1(xdr, &res->access);
    }
    return TRUE;
}