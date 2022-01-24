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
typedef  TYPE_2__* TransactionState ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {int nChildXids; scalar_t__ maxChildXids; int /*<<< orphan*/ * childXids; TYPE_1__* parent; int /*<<< orphan*/  fullTransactionId; } ;
struct TYPE_4__ {int nChildXids; int maxChildXids; int /*<<< orphan*/ * childXids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* CurrentTransactionState ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int MaxAllocSize ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  TopTransactionContext ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC10(void)
{
	TransactionState s = CurrentTransactionState;
	int			new_nChildXids;

	FUNC0(s->parent != NULL);

	/*
	 * The parent childXids array will need to hold my XID and all my
	 * childXids, in addition to the XIDs already there.
	 */
	new_nChildXids = s->parent->nChildXids + s->nChildXids + 1;

	/* Allocate or enlarge the parent array if necessary */
	if (s->parent->maxChildXids < new_nChildXids)
	{
		int			new_maxChildXids;
		TransactionId *new_childXids;

		/*
		 * Make it 2x what's needed right now, to avoid having to enlarge it
		 * repeatedly. But we can't go above MaxAllocSize.  (The latter limit
		 * is what ensures that we don't need to worry about integer overflow
		 * here or in the calculation of new_nChildXids.)
		 */
		new_maxChildXids = FUNC2(new_nChildXids * 2,
							   (int) (MaxAllocSize / sizeof(TransactionId)));

		if (new_maxChildXids < new_nChildXids)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC6("maximum number of committed subtransactions (%d) exceeded",
							(int) (MaxAllocSize / sizeof(TransactionId)))));

		/*
		 * We keep the child-XID arrays in TopTransactionContext; this avoids
		 * setting up child-transaction contexts for what might be just a few
		 * bytes of grandchild XIDs.
		 */
		if (s->parent->childXids == NULL)
			new_childXids =
				FUNC1(TopTransactionContext,
								   new_maxChildXids * sizeof(TransactionId));
		else
			new_childXids = FUNC9(s->parent->childXids,
									 new_maxChildXids * sizeof(TransactionId));

		s->parent->childXids = new_childXids;
		s->parent->maxChildXids = new_maxChildXids;
	}

	/*
	 * Copy all my XIDs to parent's array.
	 *
	 * Note: We rely on the fact that the XID of a child always follows that
	 * of its parent.  By copying the XID of this subtransaction before the
	 * XIDs of its children, we ensure that the array stays ordered. Likewise,
	 * all XIDs already in the array belong to subtransactions started and
	 * subcommitted before us, so their XIDs must precede ours.
	 */
	s->parent->childXids[s->parent->nChildXids] = FUNC3(s->fullTransactionId);

	if (s->nChildXids > 0)
		FUNC7(&s->parent->childXids[s->parent->nChildXids + 1],
			   s->childXids,
			   s->nChildXids * sizeof(TransactionId));

	s->parent->nChildXids = new_nChildXids;

	/* Release child's array to avoid leakage */
	if (s->childXids != NULL)
		FUNC8(s->childXids);
	/* We must reset these to avoid double-free if fail later in commit */
	s->childXids = NULL;
	s->nChildXids = 0;
	s->maxChildXids = 0;
}