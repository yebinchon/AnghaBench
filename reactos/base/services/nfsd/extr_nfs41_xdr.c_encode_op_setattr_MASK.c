#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  op; scalar_t__ arg; } ;
typedef  TYPE_2__ nfs_argop4 ;
struct TYPE_10__ {int /*<<< orphan*/  info; TYPE_1__* stateid; } ;
typedef  TYPE_3__ nfs41_setattr_args ;
struct TYPE_11__ {int /*<<< orphan*/  attr_vals_len; } ;
typedef  TYPE_4__ fattr4 ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_8__ {int /*<<< orphan*/  stateid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NFS4_OPAQUE_LIMIT ; 
 int /*<<< orphan*/  OP_SETATTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC4(
    XDR *xdr,
    nfs_argop4 *argop)
{
    nfs41_setattr_args *args = (nfs41_setattr_args*)argop->arg;
    fattr4 attrs;

    if (FUNC1(argop->op, OP_SETATTR))
        return FALSE;

    if (!FUNC3(xdr, &args->stateid->stateid))
        return FALSE;

    /* encode attribute values from args->info into attrs.attr_vals */
    attrs.attr_vals_len = NFS4_OPAQUE_LIMIT;
    if (!FUNC0(&attrs, args->info))
        return FALSE;

    return FUNC2(xdr, &attrs);
}