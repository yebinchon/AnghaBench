#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cb_sequence_res_ok {int /*<<< orphan*/  target_highest_slotid; int /*<<< orphan*/  highest_slotid; int /*<<< orphan*/  slotid; int /*<<< orphan*/  sequenceid; int /*<<< orphan*/  sessionid; } ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NFS4_SESSIONID_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC3(XDR *xdr, struct cb_sequence_res_ok *res)
{
    bool_t result;

    result = FUNC1(xdr, res->sessionid, NFS4_SESSIONID_SIZE);
    if (!result) { FUNC0("sequence_res.sessionid"); goto out; }

    result = FUNC2(xdr, &res->sequenceid);
    if (!result) { FUNC0("sequence_res.sequenceid"); goto out; }

    result = FUNC2(xdr, &res->slotid);
    if (!result) { FUNC0("sequence_res.slotid"); goto out; }

    result = FUNC2(xdr, &res->highest_slotid);
    if (!result) { FUNC0("sequence_res.highest_slotid"); goto out; }

    result = FUNC2(xdr, &res->target_highest_slotid);
    if (!result) { FUNC0("sequence_res.target_highest_slotid"); goto out; }
out:
    return result;
}