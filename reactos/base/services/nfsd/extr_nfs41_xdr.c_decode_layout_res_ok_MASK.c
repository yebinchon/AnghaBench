#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ count; int /*<<< orphan*/  layouts; int /*<<< orphan*/  stateid; int /*<<< orphan*/  return_on_close; } ;
typedef  TYPE_1__ pnfs_layoutget_res_ok ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static bool_t FUNC4(
    XDR *xdr,
    pnfs_layoutget_res_ok *res)
{
    uint32_t i;

    if (!FUNC1(xdr, &res->return_on_close))
        return FALSE;

    if (!FUNC2(xdr, &res->stateid))
        return FALSE;

    if (!FUNC3(xdr, &res->count))
        return FALSE;

    for (i = 0; i < res->count; i++)
        if (!FUNC0(xdr, &res->layouts))
            return FALSE;
    return TRUE;
}