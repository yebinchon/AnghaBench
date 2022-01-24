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
typedef  int /*<<< orphan*/  xdrproc_t ;
struct cb_sequence_ref_list {int dummy; } ;
struct cb_sequence_args {int /*<<< orphan*/  ref_list_count; int /*<<< orphan*/  ref_lists; int /*<<< orphan*/  cachethis; int /*<<< orphan*/  highest_slotid; int /*<<< orphan*/  slotid; int /*<<< orphan*/  sequenceid; int /*<<< orphan*/  sessionid; } ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NFS4_SESSIONID_SIZE ; 
 scalar_t__ op_cb_sequence_ref_list ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool_t FUNC5(XDR *xdr, struct cb_sequence_args *args)
{
    bool_t result;

    result = FUNC3(xdr, args->sessionid, NFS4_SESSIONID_SIZE);
    if (!result) { FUNC0("sequence_args.sessionid"); goto out; }

    result = FUNC4(xdr, &args->sequenceid);
    if (!result) { FUNC0("sequence_args.sequenceid"); goto out; }

    result = FUNC4(xdr, &args->slotid);
    if (!result) { FUNC0("sequence_args.slotid"); goto out; }

    result = FUNC4(xdr, &args->highest_slotid);
    if (!result) { FUNC0("sequence_args.highest_slotid"); goto out; }

    result = FUNC2(xdr, &args->cachethis);
    if (!result) { FUNC0("sequence_args.cachethis"); goto out; }

    result = FUNC1(xdr, (char**)&args->ref_lists,
        &args->ref_list_count, 64, sizeof(struct cb_sequence_ref_list),
        (xdrproc_t)op_cb_sequence_ref_list);
    if (!result) { FUNC0("sequence_args.ref_lists"); goto out; }
out:
    return result;
}