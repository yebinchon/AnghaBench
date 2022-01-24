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
struct TYPE_3__ {int /*<<< orphan*/  sr_status_flags; int /*<<< orphan*/  sr_target_highest_slotid; int /*<<< orphan*/  sr_highest_slotid; int /*<<< orphan*/  sr_slotid; int /*<<< orphan*/  sr_sequenceid; scalar_t__ sr_sessionid; } ;
typedef  TYPE_1__ nfs41_sequence_res_ok ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NFS4_SESSIONID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC2(
    XDR *xdr,
    nfs41_sequence_res_ok *res)
{
    if (!FUNC0(xdr, (char *)res->sr_sessionid, NFS4_SESSIONID_SIZE))
        return FALSE;

    if (!FUNC1(xdr, &res->sr_sequenceid))
        return FALSE;

    if (!FUNC1(xdr, &res->sr_slotid))
        return FALSE;

    if (!FUNC1(xdr, &res->sr_highest_slotid))
        return FALSE;

    if (!FUNC1(xdr, &res->sr_target_highest_slotid))
        return FALSE;

    return FUNC1(xdr, &res->sr_status_flags);
}