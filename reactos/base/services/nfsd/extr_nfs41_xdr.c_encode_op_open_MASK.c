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
struct TYPE_4__ {int /*<<< orphan*/  op; scalar_t__ arg; } ;
typedef  TYPE_1__ nfs_argop4 ;
struct TYPE_5__ {int /*<<< orphan*/  claim; int /*<<< orphan*/  openhow; int /*<<< orphan*/  owner; int /*<<< orphan*/  share_deny; int /*<<< orphan*/  share_access; int /*<<< orphan*/  seqid; } ;
typedef  TYPE_2__ nfs41_op_open_args ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC5(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_op_open_args *args = (nfs41_op_open_args*)argop->arg;

    if (FUNC2(argop->op, OP_OPEN))
        return FALSE;

    if (!FUNC4(xdr, &args->seqid))
        return FALSE;

    if (!FUNC4(xdr, &args->share_access))
        return FALSE;

    if (!FUNC4(xdr, &args->share_deny))
        return FALSE;

    if (!FUNC3(xdr, args->owner))
        return FALSE;

    if (!FUNC1(xdr, &args->openhow))
        return FALSE;

    return FUNC0(xdr, args->claim);
}