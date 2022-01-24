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
struct TYPE_4__ {int /*<<< orphan*/  notify_types; int /*<<< orphan*/  maxcount; int /*<<< orphan*/  layout_type; scalar_t__ deviceid; } ;
typedef  TYPE_1__ pnfs_getdeviceinfo_args ;
struct TYPE_5__ {int /*<<< orphan*/  op; scalar_t__ arg; } ;
typedef  TYPE_2__ nfs_argop4 ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  OP_GETDEVICEINFO ; 
 int /*<<< orphan*/  PNFS_DEVICEID_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC5(
    XDR *xdr,
    nfs_argop4 *argop)
{
    pnfs_getdeviceinfo_args *args = (pnfs_getdeviceinfo_args*)argop->arg;

    if (FUNC0(argop->op, OP_GETDEVICEINFO))
        return FALSE;

    if (!FUNC3(xdr, (char *)args->deviceid, PNFS_DEVICEID_SIZE))
        return FALSE;

    if (!FUNC2(xdr, (enum_t *)&args->layout_type))
        return FALSE;

    if (!FUNC4(xdr, &args->maxcount))
        return FALSE;

    return FUNC1(xdr, &args->notify_types);
}