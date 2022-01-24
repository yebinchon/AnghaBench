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
struct cb_sequence_ref_list {int /*<<< orphan*/  call_count; int /*<<< orphan*/  calls; int /*<<< orphan*/  sessionid; } ;
struct cb_sequence_ref {int dummy; } ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NFS4_SESSIONID_SIZE ; 
 scalar_t__ op_cb_sequence_ref ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t FUNC3(XDR *xdr, struct cb_sequence_ref_list *args)
{
    bool_t result;

    result = FUNC2(xdr, args->sessionid, NFS4_SESSIONID_SIZE);
    if (!result) { FUNC0("sequence_ref_list.sessionid"); goto out; }

    result = FUNC1(xdr, (char**)&args->calls, &args->call_count,
        64, sizeof(struct cb_sequence_ref), (xdrproc_t)op_cb_sequence_ref);
    if (!result) { FUNC0("sequence_ref_list.calls"); goto out; }
out:
    return result;
}