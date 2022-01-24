#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  xact; } ;
struct TYPE_19__ {scalar_t__ btpo_cycleid; int btpo_flags; scalar_t__ btpo_next; TYPE_1__ btpo; } ;
struct TYPE_18__ {scalar_t__ cycleid; scalar_t__ lastBlockLocked; scalar_t__ lastBlockVacuumed; int /*<<< orphan*/  oldestBtpoXact; int /*<<< orphan*/  pagedelcontext; int /*<<< orphan*/  totFreePages; void* callback_state; scalar_t__ (* callback ) (int /*<<< orphan*/ *,void*) ;TYPE_4__* stats; TYPE_2__* info; } ;
struct TYPE_17__ {int tuples_removed; int /*<<< orphan*/  pages_deleted; int /*<<< orphan*/  num_index_tuples; } ;
struct TYPE_16__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_15__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_2__ IndexVacuumInfo ;
typedef  TYPE_3__* IndexTuple ;
typedef  TYPE_4__ IndexBulkDeleteResult ;
typedef  scalar_t__ (* IndexBulkDeleteCallback ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_5__ BTVacState ;
typedef  TYPE_6__* BTPageOpaque ;

/* Variables and functions */
 int BTP_SPLIT_END ; 
 int /*<<< orphan*/  BT_READ ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int MaxOffsetNumber ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_6__*) ; 
 scalar_t__ FUNC8 (TYPE_6__*) ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 
 scalar_t__ FUNC10 (TYPE_6__*) ; 
 scalar_t__ FUNC11 (TYPE_6__*) ; 
 scalar_t__ P_NONE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 

__attribute__((used)) static void
FUNC28(BTVacState *vstate, BlockNumber blkno, BlockNumber orig_blkno)
{
	IndexVacuumInfo *info = vstate->info;
	IndexBulkDeleteResult *stats = vstate->stats;
	IndexBulkDeleteCallback callback = vstate->callback;
	void	   *callback_state = vstate->callback_state;
	Relation	rel = info->index;
	bool		delete_now;
	BlockNumber recurse_to;
	Buffer		buf;
	Page		page;
	BTPageOpaque opaque = NULL;

restart:
	delete_now = false;
	recurse_to = P_NONE;

	/* call vacuum_delay_point while not holding any buffer lock */
	FUNC27();

	/*
	 * We can't use _bt_getbuf() here because it always applies
	 * _bt_checkpage(), which will barf on an all-zero page. We want to
	 * recycle all-zero pages, not fail.  Also, we want to use a nondefault
	 * buffer access strategy.
	 */
	buf = FUNC18(rel, MAIN_FORKNUM, blkno, RBM_NORMAL,
							 info->strategy);
	FUNC1(buf, BT_READ);
	page = FUNC0(buf);
	if (!FUNC17(page))
	{
		FUNC22(rel, buf);
		opaque = (BTPageOpaque) FUNC16(page);
	}

	/*
	 * If we are recursing, the only case we want to do anything with is a
	 * live leaf page having the current vacuum cycle ID.  Any other state
	 * implies we already saw the page (eg, deleted it as being empty).
	 */
	if (blkno != orig_blkno)
	{
		if (FUNC24(page) ||
			FUNC8(opaque) ||
			!FUNC11(opaque) ||
			opaque->btpo_cycleid != vstate->cycleid)
		{
			FUNC26(rel, buf);
			return;
		}
	}

	/* Page is valid, see what to do with it */
	if (FUNC24(page))
	{
		/* Okay to recycle this page */
		FUNC19(rel, blkno);
		vstate->totFreePages++;
		stats->pages_deleted++;
	}
	else if (FUNC9(opaque))
	{
		/* Already deleted, but can't recycle yet */
		stats->pages_deleted++;

		/* Update the oldest btpo.xact */
		if (!FUNC20(vstate->oldestBtpoXact) ||
			FUNC21(opaque->btpo.xact, vstate->oldestBtpoXact))
			vstate->oldestBtpoXact = opaque->btpo.xact;
	}
	else if (FUNC10(opaque))
	{
		/* Half-dead, try to delete */
		delete_now = true;
	}
	else if (FUNC11(opaque))
	{
		OffsetNumber deletable[MaxOffsetNumber];
		int			ndeletable;
		OffsetNumber offnum,
					minoff,
					maxoff;

		/*
		 * Trade in the initial read lock for a super-exclusive write lock on
		 * this page.  We must get such a lock on every leaf page over the
		 * course of the vacuum scan, whether or not it actually contains any
		 * deletable tuples --- see nbtree/README.
		 */
		FUNC1(buf, BUFFER_LOCK_UNLOCK);
		FUNC2(buf);

		/*
		 * Remember highest leaf page number we've taken cleanup lock on; see
		 * notes in btvacuumscan
		 */
		if (blkno > vstate->lastBlockLocked)
			vstate->lastBlockLocked = blkno;

		/*
		 * Check whether we need to recurse back to earlier pages.  What we
		 * are concerned about is a page split that happened since we started
		 * the vacuum scan.  If the split moved some tuples to a lower page
		 * then we might have missed 'em.  If so, set up for tail recursion.
		 * (Must do this before possibly clearing btpo_cycleid below!)
		 */
		if (vstate->cycleid != 0 &&
			opaque->btpo_cycleid == vstate->cycleid &&
			!(opaque->btpo_flags & BTP_SPLIT_END) &&
			!FUNC12(opaque) &&
			opaque->btpo_next < orig_blkno)
			recurse_to = opaque->btpo_next;

		/*
		 * Scan over all items to see which ones need deleted according to the
		 * callback function.
		 */
		ndeletable = 0;
		minoff = FUNC7(opaque);
		maxoff = FUNC15(page);
		if (callback)
		{
			for (offnum = minoff;
				 offnum <= maxoff;
				 offnum = FUNC6(offnum))
			{
				IndexTuple	itup;
				ItemPointer htup;

				itup = (IndexTuple) FUNC13(page,
												FUNC14(page, offnum));
				htup = &(itup->t_tid);

				/*
				 * During Hot Standby we currently assume that
				 * XLOG_BTREE_VACUUM records do not produce conflicts. That is
				 * only true as long as the callback function depends only
				 * upon whether the index tuple refers to heap tuples removed
				 * in the initial heap scan. When vacuum starts it derives a
				 * value of OldestXmin. Backends taking later snapshots could
				 * have a RecentGlobalXmin with a later xid than the vacuum's
				 * OldestXmin, so it is possible that row versions deleted
				 * after OldestXmin could be marked as killed by other
				 * backends. The callback function *could* look at the index
				 * tuple state in isolation and decide to delete the index
				 * tuple, though currently it does not. If it ever did, we
				 * would need to reconsider whether XLOG_BTREE_VACUUM records
				 * should cause conflicts. If they did cause conflicts they
				 * would be fairly harsh conflicts, since we haven't yet
				 * worked out a way to pass a useful value for
				 * latestRemovedXid on the XLOG_BTREE_VACUUM records. This
				 * applies to *any* type of index that marks index tuples as
				 * killed.
				 */
				if (callback(htup, callback_state))
					deletable[ndeletable++] = offnum;
			}
		}

		/*
		 * Apply any needed deletes.  We issue just one _bt_delitems_vacuum()
		 * call per page, so as to minimize WAL traffic.
		 */
		if (ndeletable > 0)
		{
			/*
			 * Notice that the issued XLOG_BTREE_VACUUM WAL record includes
			 * all information to the replay code to allow it to get a cleanup
			 * lock on all pages between the previous lastBlockVacuumed and
			 * this page. This ensures that WAL replay locks all leaf pages at
			 * some point, which is important should non-MVCC scans be
			 * requested. This is currently unused on standby, but we record
			 * it anyway, so that the WAL contains the required information.
			 *
			 * Since we can visit leaf pages out-of-order when recursing,
			 * replay might end up locking such pages an extra time, but it
			 * doesn't seem worth the amount of bookkeeping it'd take to avoid
			 * that.
			 */
			FUNC23(rel, buf, deletable, ndeletable,
								vstate->lastBlockVacuumed);

			/*
			 * Remember highest leaf page number we've issued a
			 * XLOG_BTREE_VACUUM WAL record for.
			 */
			if (blkno > vstate->lastBlockVacuumed)
				vstate->lastBlockVacuumed = blkno;

			stats->tuples_removed += ndeletable;
			/* must recompute maxoff */
			maxoff = FUNC15(page);
		}
		else
		{
			/*
			 * If the page has been split during this vacuum cycle, it seems
			 * worth expending a write to clear btpo_cycleid even if we don't
			 * have any deletions to do.  (If we do, _bt_delitems_vacuum takes
			 * care of this.)  This ensures we won't process the page again.
			 *
			 * We treat this like a hint-bit update because there's no need to
			 * WAL-log it.
			 */
			if (vstate->cycleid != 0 &&
				opaque->btpo_cycleid == vstate->cycleid)
			{
				opaque->btpo_cycleid = 0;
				FUNC3(buf, true);
			}
		}

		/*
		 * If it's now empty, try to delete; else count the live tuples. We
		 * don't delete when recursing, though, to avoid putting entries into
		 * freePages out-of-order (doesn't seem worth any extra code to handle
		 * the case).
		 */
		if (minoff > maxoff)
			delete_now = (blkno == orig_blkno);
		else
			stats->num_index_tuples += maxoff - minoff + 1;
	}

	if (delete_now)
	{
		MemoryContext oldcontext;
		int			ndel;

		/* Run pagedel in a temp context to avoid memory leakage */
		FUNC4(vstate->pagedelcontext);
		oldcontext = FUNC5(vstate->pagedelcontext);

		ndel = FUNC25(rel, buf);

		/* count only this page, else may double-count parent */
		if (ndel)
		{
			stats->pages_deleted++;
			if (!FUNC20(vstate->oldestBtpoXact) ||
				FUNC21(opaque->btpo.xact, vstate->oldestBtpoXact))
				vstate->oldestBtpoXact = opaque->btpo.xact;
		}

		FUNC5(oldcontext);
		/* pagedel released buffer, so we shouldn't */
	}
	else
		FUNC26(rel, buf);

	/*
	 * This is really tail recursion, but if the compiler is too stupid to
	 * optimize it as such, we'd eat an uncomfortably large amount of stack
	 * space per recursion level (due to the deletable[] array). A failure is
	 * improbable since the number of levels isn't likely to be large ... but
	 * just in case, let's hand-optimize into a loop.
	 */
	if (recurse_to != P_NONE)
	{
		blkno = recurse_to;
		goto restart;
	}
}