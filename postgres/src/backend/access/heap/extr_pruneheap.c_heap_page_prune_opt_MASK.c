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
typedef  int /*<<< orphan*/  TransactionId ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BLCKSZ ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEAP_DEFAULT_FILLFACTOR ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RecentGlobalDataXmin ; 
 int /*<<< orphan*/  RecentGlobalXmin ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void
FUNC15(Relation relation, Buffer buffer)
{
	Page		page = FUNC1(buffer);
	Size		minfree;
	TransactionId OldestXmin;

	/*
	 * We can't write WAL in recovery mode, so there's no point trying to
	 * clean the page. The master will likely issue a cleaning WAL record soon
	 * anyway, so this is no particular loss.
	 */
	if (FUNC9())
		return;

	/*
	 * Use the appropriate xmin horizon for this relation. If it's a proper
	 * catalog relation or a user defined, additional, catalog relation, we
	 * need to use the horizon that includes slots, otherwise the data-only
	 * horizon can be used. Note that the toast relation of user defined
	 * relations are *not* considered catalog relations.
	 *
	 * It is OK to apply the old snapshot limit before acquiring the cleanup
	 * lock because the worst that can happen is that we are not quite as
	 * aggressive about the cleanup (by however many transaction IDs are
	 * consumed between this point and acquiring the lock).  This allows us to
	 * save significant overhead in the case where the page is found not to be
	 * prunable.
	 */
	if (FUNC3(relation) ||
		FUNC11(relation))
		OldestXmin = RecentGlobalXmin;
	else
		OldestXmin =
			FUNC13(RecentGlobalDataXmin,
												relation);

	FUNC0(FUNC12(OldestXmin));

	/*
	 * Let's see if we really need pruning.
	 *
	 * Forget it if page is not hinted to contain something prunable that's
	 * older than OldestXmin.
	 */
	if (!FUNC8(page, OldestXmin))
		return;

	/*
	 * We prune when a previous UPDATE failed to find enough space on the page
	 * for a new tuple version, or when free space falls below the relation's
	 * fill-factor target (but not less than 10%).
	 *
	 * Checking free space here is questionable since we aren't holding any
	 * lock on the buffer; in the worst case we could get a bogus answer. It's
	 * unlikely to be *seriously* wrong, though, since reading either pd_lower
	 * or pd_upper is probably atomic.  Avoiding taking a lock seems more
	 * important than sometimes getting a wrong answer in what is after all
	 * just a heuristic estimate.
	 */
	minfree = FUNC10(relation,
											 HEAP_DEFAULT_FILLFACTOR);
	minfree = FUNC5(minfree, BLCKSZ / 10);

	if (FUNC7(page) || FUNC6(page) < minfree)
	{
		/* OK, try to get exclusive buffer lock */
		if (!FUNC2(buffer))
			return;

		/*
		 * Now that we have buffer lock, get accurate information about the
		 * page's free space, and recheck the heuristic about whether to
		 * prune. (We needn't recheck PageIsPrunable, since no one else could
		 * have pruned while we hold pin.)
		 */
		if (FUNC7(page) || FUNC6(page) < minfree)
		{
			TransactionId ignore = InvalidTransactionId;	/* return value not
															 * needed */

			/* OK to prune */
			(void) FUNC14(relation, buffer, OldestXmin, true, &ignore);
		}

		/* And release buffer lock */
		FUNC4(buffer, BUFFER_LOCK_UNLOCK);
	}
}