#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_15__ {scalar_t__ rightlink; } ;
struct TYPE_10__ {int tuples_removed; int num_index_tuples; int /*<<< orphan*/  pages_deleted; int /*<<< orphan*/  pages_free; } ;
struct TYPE_14__ {int /*<<< orphan*/  internal_page_set; TYPE_1__ stats; int /*<<< orphan*/  empty_leaf_set; } ;
struct TYPE_13__ {scalar_t__ startNSN; void* callback_state; scalar_t__ (* callback ) (int /*<<< orphan*/ *,void*) ;TYPE_2__* info; TYPE_5__* stats; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_11__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_2__ IndexVacuumInfo ;
typedef  TYPE_3__* IndexTuple ;
typedef  scalar_t__ (* IndexBulkDeleteCallback ) (int /*<<< orphan*/ *,void*) ;
typedef  TYPE_4__ GistVacState ;
typedef  TYPE_5__ GistBulkDeleteResult ;
typedef  TYPE_6__* GISTPageOpaque ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIST_EXCLUSIVE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 TYPE_6__* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int MaxOffsetNumber ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 () ; 

__attribute__((used)) static void
FUNC32(GistVacState *vstate, BlockNumber blkno, BlockNumber orig_blkno)
{
	GistBulkDeleteResult *stats = vstate->stats;
	IndexVacuumInfo *info = vstate->info;
	IndexBulkDeleteCallback callback = vstate->callback;
	void	   *callback_state = vstate->callback_state;
	Relation	rel = info->index;
	Buffer		buffer;
	Page		page;
	BlockNumber recurse_to;

restart:
	recurse_to = InvalidBlockNumber;

	/* call vacuum_delay_point while not holding any buffer lock */
	FUNC31();

	buffer = FUNC17(rel, MAIN_FORKNUM, blkno, RBM_NORMAL,
								info->strategy);

	/*
	 * We are not going to stay here for a long time, aggressively grab an
	 * exclusive lock.
	 */
	FUNC9(buffer, GIST_EXCLUSIVE);
	page = (Page) FUNC0(buffer);

	if (FUNC28(page))
	{
		/* Okay to recycle this page */
		FUNC18(rel, blkno);
		stats->stats.pages_free++;
		stats->stats.pages_deleted++;
	}
	else if (FUNC6(page))
	{
		/* Already deleted, but can't recycle yet */
		stats->stats.pages_deleted++;
	}
	else if (FUNC7(page))
	{
		OffsetNumber todelete[MaxOffsetNumber];
		int			ntodelete = 0;
		int			nremain;
		GISTPageOpaque opaque = FUNC5(page);
		OffsetNumber maxoff = FUNC14(page);

		/*
		 * Check whether we need to recurse back to earlier pages.  What we
		 * are concerned about is a page split that happened since we started
		 * the vacuum scan.  If the split moved some tuples to a lower page
		 * then we might have missed 'em.  If so, set up for tail recursion.
		 *
		 * This is similar to the checks we do during searches, when following
		 * a downlink, but we don't need to jump to higher-numbered pages,
		 * because we will process them later, anyway.
		 */
		if ((FUNC2(page) ||
			 vstate->startNSN < FUNC4(page)) &&
			(opaque->rightlink != InvalidBlockNumber) &&
			(opaque->rightlink < orig_blkno))
		{
			recurse_to = opaque->rightlink;
		}

		/*
		 * Scan over all items to see which ones need to be deleted according
		 * to the callback function.
		 */
		if (callback)
		{
			OffsetNumber off;

			for (off = FirstOffsetNumber;
				 off <= maxoff;
				 off = FUNC11(off))
			{
				ItemId		iid = FUNC13(page, off);
				IndexTuple	idxtuple = (IndexTuple) FUNC12(page, iid);

				if (callback(&(idxtuple->t_tid), callback_state))
					todelete[ntodelete++] = off;
			}
		}

		/*
		 * Apply any needed deletes.  We issue just one WAL record per page,
		 * so as to minimize WAL traffic.
		 */
		if (ntodelete > 0)
		{
			FUNC21();

			FUNC10(buffer);

			FUNC15(page, todelete, ntodelete);
			FUNC3(page);

			if (FUNC20(rel))
			{
				XLogRecPtr	recptr;

				recptr = FUNC29(buffer,
										todelete, ntodelete,
										NULL, 0, InvalidBuffer);
				FUNC16(page, recptr);
			}
			else
				FUNC16(page, FUNC27(rel));

			FUNC1();

			stats->stats.tuples_removed += ntodelete;
			/* must recompute maxoff */
			maxoff = FUNC14(page);
		}

		nremain = maxoff - FirstOffsetNumber + 1;
		if (nremain == 0)
		{
			/*
			 * The page is now completely empty.  Remember its block number,
			 * so that we will try to delete the page in the second stage.
			 *
			 * Skip this when recursing, because IntegerSet requires that the
			 * values are added in ascending order.  The next VACUUM will pick
			 * it up.
			 */
			if (blkno == orig_blkno)
				FUNC30(stats->empty_leaf_set, blkno);
		}
		else
			stats->stats.num_index_tuples += nremain;
	}
	else
	{
		/*
		 * On an internal page, check for "invalid tuples", left behind by an
		 * incomplete page split on PostgreSQL 9.0 or below.  These are not
		 * created by newer PostgreSQL versions, but unfortunately, there is
		 * no version number anywhere in a GiST index, so we don't know
		 * whether this index might still contain invalid tuples or not.
		 */
		OffsetNumber maxoff = FUNC14(page);
		OffsetNumber off;

		for (off = FirstOffsetNumber;
			 off <= maxoff;
			 off = FUNC11(off))
		{
			ItemId		iid = FUNC13(page, off);
			IndexTuple	idxtuple = (IndexTuple) FUNC12(page, iid);

			if (FUNC8(idxtuple))
				FUNC23(LOG,
						(FUNC26("index \"%s\" contains an inner tuple marked as invalid",
								FUNC19(rel)),
						 FUNC24("This is caused by an incomplete page split at crash recovery before upgrading to PostgreSQL 9.1."),
						 FUNC25("Please REINDEX it.")));
		}

		/*
		 * Remember the block number of this page, so that we can revisit it
		 * later in gistvacuum_delete_empty_pages(), when we search for
		 * parents of empty leaf pages.
		 */
		if (blkno == orig_blkno)
			FUNC30(stats->internal_page_set, blkno);
	}

	FUNC22(buffer);

	/*
	 * This is really tail recursion, but if the compiler is too stupid to
	 * optimize it as such, we'd eat an uncomfortably large amount of stack
	 * space per recursion level (due to the deletable[] array).  A failure is
	 * improbable since the number of levels isn't likely to be large ... but
	 * just in case, let's hand-optimize into a loop.
	 */
	if (recurse_to != InvalidBlockNumber)
	{
		blkno = recurse_to;
		goto restart;
	}
}