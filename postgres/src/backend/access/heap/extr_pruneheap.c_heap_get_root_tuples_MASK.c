#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_7__ {int /*<<< orphan*/  t_ctid; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__* HeapTupleHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int MaxHeapTuplesPerPage ; 
 int /*<<< orphan*/  FUNC12 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 

void
FUNC19(Page page, OffsetNumber *root_offsets)
{
	OffsetNumber offnum,
				maxoff;

	FUNC12(root_offsets, 0, MaxHeapTuplesPerPage * sizeof(OffsetNumber));

	maxoff = FUNC16(page);
	for (offnum = FirstOffsetNumber; offnum <= maxoff; offnum = FUNC13(offnum))
	{
		ItemId		lp = FUNC15(page, offnum);
		HeapTupleHeader htup;
		OffsetNumber nextoffnum;
		TransactionId priorXmax;

		/* skip unused and dead items */
		if (!FUNC10(lp) || FUNC7(lp))
			continue;

		if (FUNC8(lp))
		{
			htup = (HeapTupleHeader) FUNC14(page, lp);

			/*
			 * Check if this tuple is part of a HOT-chain rooted at some other
			 * tuple. If so, skip it for now; we'll process it when we find
			 * its root.
			 */
			if (FUNC4(htup))
				continue;

			/*
			 * This is either a plain tuple or the root of a HOT-chain.
			 * Remember it in the mapping.
			 */
			root_offsets[offnum - 1] = offnum;

			/* If it's not the start of a HOT-chain, we're done with it */
			if (!FUNC5(htup))
				continue;

			/* Set up to scan the HOT-chain */
			nextoffnum = FUNC11(&htup->t_ctid);
			priorXmax = FUNC1(htup);
		}
		else
		{
			/* Must be a redirect item. We do not set its root_offsets entry */
			FUNC0(FUNC9(lp));
			/* Set up to scan the HOT-chain */
			nextoffnum = FUNC6(lp);
			priorXmax = InvalidTransactionId;
		}

		/*
		 * Now follow the HOT-chain and collect other tuples in the chain.
		 *
		 * Note: Even though this is a nested loop, the complexity of the
		 * function is O(N) because a tuple in the page should be visited not
		 * more than twice, once in the outer loop and once in HOT-chain
		 * chases.
		 */
		for (;;)
		{
			lp = FUNC15(page, nextoffnum);

			/* Check for broken chains */
			if (!FUNC8(lp))
				break;

			htup = (HeapTupleHeader) FUNC14(page, lp);

			if (FUNC18(priorXmax) &&
				!FUNC17(priorXmax, FUNC2(htup)))
				break;

			/* Remember the root line pointer for this item */
			root_offsets[nextoffnum - 1] = offnum;

			/* Advance to next chain member, if any */
			if (!FUNC5(htup))
				break;

			/* HOT implies it can't have moved to different partition */
			FUNC0(!FUNC3(htup));

			nextoffnum = FUNC11(&htup->t_ctid);
			priorXmax = FUNC1(htup);
		}
	}
}