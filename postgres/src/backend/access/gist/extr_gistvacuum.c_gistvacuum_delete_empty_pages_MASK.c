#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_9__ {int pages_removed; } ;
struct TYPE_12__ {TYPE_1__ stats; int /*<<< orphan*/  empty_leaf_set; int /*<<< orphan*/  internal_page_set; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_10__ {int /*<<< orphan*/  strategy; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_2__ IndexVacuumInfo ;
typedef  TYPE_3__* IndexTuple ;
typedef  TYPE_4__ GistBulkDeleteResult ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  GIST_EXCLUSIVE ; 
 int /*<<< orphan*/  GIST_SHARE ; 
 int /*<<< orphan*/  GIST_UNLOCK ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int MaxOffsetNumber ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(IndexVacuumInfo *info, GistBulkDeleteResult *stats)
{
	Relation	rel = info->index;
	BlockNumber empty_pages_remaining;
	uint64		blkno;

	/*
	 * Rescan all inner pages to find those that have empty child pages.
	 */
	empty_pages_remaining = FUNC19(stats->empty_leaf_set);
	FUNC16(stats->internal_page_set);
	while (empty_pages_remaining > 0 &&
		   FUNC18(stats->internal_page_set, &blkno))
	{
		Buffer		buffer;
		Page		page;
		OffsetNumber off,
					maxoff;
		OffsetNumber todelete[MaxOffsetNumber];
		BlockNumber leafs_to_delete[MaxOffsetNumber];
		int			ntodelete;
		int			deleted;

		buffer = FUNC11(rel, MAIN_FORKNUM, (BlockNumber) blkno,
									RBM_NORMAL, info->strategy);

		FUNC5(buffer, GIST_SHARE);
		page = (Page) FUNC1(buffer);

		if (FUNC10(page) || FUNC2(page) || FUNC3(page))
		{
			/*
			 * This page was an internal page earlier, but now it's something
			 * else. Shouldn't happen...
			 */
			FUNC0(false);
			FUNC13(buffer);
			continue;
		}

		/*
		 * Scan all the downlinks, and see if any of them point to empty leaf
		 * pages.
		 */
		maxoff = FUNC9(page);
		ntodelete = 0;
		for (off = FirstOffsetNumber;
			 off <= maxoff && ntodelete < maxoff - 1;
			 off = FUNC6(off))
		{
			ItemId		iid = FUNC8(page, off);
			IndexTuple	idxtuple = (IndexTuple) FUNC7(page, iid);
			BlockNumber leafblk;

			leafblk = FUNC4(&(idxtuple->t_tid));
			if (FUNC17(stats->empty_leaf_set, leafblk))
			{
				leafs_to_delete[ntodelete] = leafblk;
				todelete[ntodelete++] = off;
			}
		}

		/*
		 * In order to avoid deadlock, child page must be locked before
		 * parent, so we must release the lock on the parent, lock the child,
		 * and then re-acquire the lock the parent.  (And we wouldn't want to
		 * do I/O, while holding a lock, anyway.)
		 *
		 * At the instant that we're not holding a lock on the parent, the
		 * downlink might get moved by a concurrent insert, so we must
		 * re-check that it still points to the same child page after we have
		 * acquired both locks.  Also, another backend might have inserted a
		 * tuple to the page, so that it is no longer empty.  gistdeletepage()
		 * re-checks all these conditions.
		 */
		FUNC5(buffer, GIST_UNLOCK);

		deleted = 0;
		for (int i = 0; i < ntodelete; i++)
		{
			Buffer		leafbuf;

			/*
			 * Don't remove the last downlink from the parent.  That would
			 * confuse the insertion code.
			 */
			if (FUNC9(page) == FirstOffsetNumber)
				break;

			leafbuf = FUNC11(rel, MAIN_FORKNUM, leafs_to_delete[i],
										 RBM_NORMAL, info->strategy);
			FUNC5(leafbuf, GIST_EXCLUSIVE);
			FUNC14(rel, leafbuf);

			FUNC5(buffer, GIST_EXCLUSIVE);
			if (FUNC15(info, stats,
							   buffer, todelete[i] - deleted,
							   leafbuf))
				deleted++;
			FUNC5(buffer, GIST_UNLOCK);

			FUNC13(leafbuf);
		}

		FUNC12(buffer);

		/* update stats */
		stats->stats.pages_removed += deleted;

		/*
		 * We can stop the scan as soon as we have seen the downlinks, even if
		 * we were not able to remove them all.
		 */
		empty_pages_remaining -= ntodelete;
	}
}