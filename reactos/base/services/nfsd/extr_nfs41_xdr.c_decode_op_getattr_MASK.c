#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  op; scalar_t__ res; } ;
typedef  TYPE_1__ nfs_resop4 ;
struct TYPE_8__ {int /*<<< orphan*/  attr_vals_len; scalar_t__ attr_vals; } ;
struct TYPE_7__ {scalar_t__ status; int /*<<< orphan*/  info; TYPE_3__ obj_attributes; } ;
typedef  TYPE_2__ nfs41_getattr_res ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ NFS4_OK ; 
 int /*<<< orphan*/  OP_GETATTR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t FUNC5(
    XDR *xdr,
    nfs_resop4 *resop)
{
    nfs41_getattr_res *res = (nfs41_getattr_res*)resop->res;

    if (FUNC1(resop->op, OP_GETATTR))
        return FALSE;

    if (!FUNC3(xdr, &res->status))
        return FALSE;

    if (res->status == NFS4_OK)
    {
        XDR attr_xdr;

        if (!FUNC2(xdr, &res->obj_attributes))
            return FALSE;
        FUNC4(&attr_xdr, (char *)res->obj_attributes.attr_vals, res->obj_attributes.attr_vals_len, XDR_DECODE);
        return  FUNC0(&attr_xdr, &res->obj_attributes, res->info);
    }
    return TRUE;
}