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
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_4__ {scalar_t__ return_type; int /*<<< orphan*/  stateid; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; int /*<<< orphan*/  iomode; int /*<<< orphan*/  type; int /*<<< orphan*/  reclaim; } ;
typedef  TYPE_1__ pnfs_layoutreturn_args ;
struct TYPE_5__ {int /*<<< orphan*/  op; scalar_t__ arg; } ;
typedef  TYPE_2__ nfs_argop4 ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_LAYOUTRETURN ; 
 scalar_t__ PNFS_RETURN_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC7(
    XDR *xdr,
    nfs_argop4 *argop)
{
    pnfs_layoutreturn_args *args = (pnfs_layoutreturn_args*)argop->arg;

    if (FUNC1(argop->op, OP_LAYOUTRETURN))
        return FALSE;

    if (!FUNC2(xdr, &args->reclaim))
        return FALSE;

    if (!FUNC3(xdr, (enum_t *)&args->type))
        return FALSE;

    if (!FUNC3(xdr, (enum_t *)&args->iomode))
        return FALSE;

    if (!FUNC3(xdr, (enum_t *)&args->return_type))
        return FALSE;

    if (args->return_type == PNFS_RETURN_FILE) {
        u_int32_t zero = 0;

        if (!FUNC5(xdr, &args->offset))
            return FALSE;

        if (!FUNC5(xdr, &args->length))
            return FALSE;

        if (!FUNC4(xdr, args->stateid))
            return FALSE;

        return FUNC6(xdr, &zero); /* size of lrf_body is 0 */
    } else {
        FUNC0("%s: layout type (%d) is not PNFS_RETURN_FILE!\n",
            "encode_op_layoutreturn", args->return_type);
        return FALSE;
    }
}