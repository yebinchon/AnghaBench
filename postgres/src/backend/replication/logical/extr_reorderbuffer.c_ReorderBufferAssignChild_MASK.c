#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {int is_known_as_subxact; scalar_t__ nsubtxns; int /*<<< orphan*/  node; int /*<<< orphan*/  subtxns; int /*<<< orphan*/  toplevel_xid; } ;
typedef  TYPE_1__ ReorderBufferTXN ;
typedef  int /*<<< orphan*/  ReorderBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

void
FUNC7(ReorderBuffer *rb, TransactionId xid,
						 TransactionId subxid, XLogRecPtr lsn)
{
	ReorderBufferTXN *txn;
	ReorderBufferTXN *subtxn;
	bool		new_top;
	bool		new_sub;

	txn = FUNC2(rb, xid, true, &new_top, lsn, true);
	subtxn = FUNC2(rb, subxid, true, &new_sub, lsn, false);

	if (new_top && !new_sub)
		FUNC6(ERROR, "subtransaction logged without previous top-level txn record");

	if (!new_sub)
	{
		if (subtxn->is_known_as_subxact)
		{
			/* already associated, nothing to do */
			return;
		}
		else
		{
			/*
			 * We already saw this transaction, but initially added it to the
			 * list of top-level txns.  Now that we know it's not top-level,
			 * remove it from there.
			 */
			FUNC4(&subtxn->node);
		}
	}

	subtxn->is_known_as_subxact = true;
	subtxn->toplevel_xid = xid;
	FUNC0(subtxn->nsubtxns == 0);

	/* add to subtransaction list */
	FUNC5(&txn->subtxns, &subtxn->node);
	txn->nsubtxns++;

	/* Possibly transfer the subtxn's snapshot to its top-level txn. */
	FUNC3(txn, subtxn);

	/* Verify LSN-ordering invariant */
	FUNC1(rb);
}