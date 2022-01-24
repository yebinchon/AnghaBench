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
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_3__ {int /*<<< orphan*/  new_prune_xid; } ;
typedef  TYPE_1__ PruneState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(PruneState *prstate, TransactionId xid)
{
	/*
	 * This should exactly match the PageSetPrunable macro.  We can't store
	 * directly into the page header yet, so we update working state.
	 */
	FUNC0(FUNC1(xid));
	if (!FUNC2(prstate->new_prune_xid) ||
		FUNC3(xid, prstate->new_prune_xid))
		prstate->new_prune_xid = xid;
}