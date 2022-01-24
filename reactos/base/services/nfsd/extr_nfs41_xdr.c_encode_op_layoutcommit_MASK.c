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
struct TYPE_4__ {scalar_t__ new_time; int /*<<< orphan*/ * new_offset; int /*<<< orphan*/  stateid; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ pnfs_layoutcommit_args ;
struct TYPE_5__ {int /*<<< orphan*/  op; scalar_t__ arg; } ;
typedef  TYPE_2__ nfs_argop4 ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_LAYOUTCOMMIT ; 
 int /*<<< orphan*/  PNFS_LAYOUTTYPE_FILE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC7(
    XDR *xdr,
    nfs_argop4 *argop)
{
    pnfs_layoutcommit_args *args = (pnfs_layoutcommit_args*)argop->arg;
    bool_t false_bool = FALSE;
    bool_t true_bool = TRUE;
    enum_t pnfs_layout = PNFS_LAYOUTTYPE_FILE;
    uint32_t zero = 0;

    if (FUNC0(argop->op, OP_LAYOUTCOMMIT))
        return FALSE;

    if (!FUNC5(xdr, &args->offset))
        return FALSE;

    if (!FUNC5(xdr, &args->length))
        return FALSE;

    if (!FUNC1(xdr, &false_bool)) /* loca_reclaim = 0 */
        return FALSE;

    if (!FUNC4(xdr, args->stateid))
        return FALSE;

    /* loca_last_write_offset */
    if (args->new_offset) {
        if (!FUNC1(xdr, &true_bool))
            return FALSE;

        if (!FUNC5(xdr, args->new_offset))
            return FALSE;
    } else {
        if (!FUNC1(xdr, &false_bool))
            return FALSE;
    }

    /* loca_time_modify */
    if (args->new_time) {
        if (!FUNC1(xdr, &true_bool))
            return FALSE;

        if (!FUNC3(xdr, args->new_time))
            return FALSE;
    } else {
        if (!FUNC1(xdr, &false_bool))
            return FALSE;
    }

    /* loca_layoutupdate */
    if (!FUNC2(xdr, &pnfs_layout))
        return FALSE;

    return FUNC6(xdr, &zero);
}