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
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  BulkInsertState ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ InvalidBlockNumber ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  P_NEW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_ZERO_AND_LOCK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ SizeOfPageHeaderData ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(Relation relation, BulkInsertState bistate)
{
	BlockNumber blockNum,
				firstBlock = InvalidBlockNumber;
	int			extraBlocks;
	int			lockWaiters;

	/* Use the length of the lock wait queue to judge how much to extend. */
	lockWaiters = FUNC8(relation);
	if (lockWaiters <= 0)
		return;

	/*
	 * It might seem like multiplying the number of lock waiters by as much as
	 * 20 is too aggressive, but benchmarking revealed that smaller numbers
	 * were insufficient.  512 is just an arbitrary cap to prevent
	 * pathological results.
	 */
	extraBlocks = FUNC4(512, lockWaiters * 20);

	do
	{
		Buffer		buffer;
		Page		page;
		Size		freespace;

		/*
		 * Extend by one page.  This should generally match the main-line
		 * extension code in RelationGetBufferForTuple, except that we hold
		 * the relation extension lock throughout, and we don't immediately
		 * initialize the page (see below).
		 */
		buffer = FUNC6(relation, P_NEW, RBM_ZERO_AND_LOCK, bistate);
		page = FUNC1(buffer);

		if (!FUNC5(page))
			FUNC11(ERROR, "page %u of relation \"%s\" should be empty but is not",
				 FUNC0(buffer),
				 FUNC9(relation));

		/*
		 * Add the page to the FSM without initializing. If we were to
		 * initialize here, the page would potentially get flushed out to disk
		 * before we add any useful content. There's no guarantee that that'd
		 * happen before a potential crash, so we need to deal with
		 * uninitialized pages anyway, thus avoid the potential for
		 * unnecessary writes.
		 */

		/* we'll need this info below */
		blockNum = FUNC0(buffer);
		freespace = FUNC2(buffer) - SizeOfPageHeaderData;

		FUNC10(buffer);

		/* Remember first block number thus added. */
		if (firstBlock == InvalidBlockNumber)
			firstBlock = blockNum;

		/*
		 * Immediately update the bottom level of the FSM.  This has a good
		 * chance of making this page visible to other concurrently inserting
		 * backends, and we want that to happen without delay.
		 */
		FUNC7(relation, blockNum, freespace);
	}
	while (--extraBlocks > 0);

	/*
	 * Updating the upper levels of the free space map is too expensive to do
	 * for every block, but it's worth doing once at the end to make sure that
	 * subsequent insertion activity sees all of those nifty free pages we
	 * just inserted.
	 */
	FUNC3(relation, firstBlock, blockNum + 1);
}