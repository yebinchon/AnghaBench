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
struct TYPE_6__ {int /*<<< orphan*/  notification; TYPE_3__* device; } ;
typedef  TYPE_2__ pnfs_getdeviceinfo_res_ok ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_7__ {TYPE_1__ device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ PNFS_LAYOUTTYPE_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC4(
    XDR *xdr,
    pnfs_getdeviceinfo_res_ok *res_ok)
{
    u_int32_t len_ignored;

    if (!FUNC1(xdr, (enum_t *)&res_ok->device->device.type))
        return FALSE;

    if (res_ok->device->device.type != PNFS_LAYOUTTYPE_FILE)
        return FALSE;

    if (!FUNC3(xdr, &len_ignored))
        return FALSE;

    if (!FUNC2(xdr, res_ok->device))
        return FALSE;

    return FUNC0(xdr, &res_ok->notification);
}