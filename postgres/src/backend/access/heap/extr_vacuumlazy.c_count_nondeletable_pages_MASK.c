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
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_3__ {int rel_pages; int nonempty_pages; int lock_waiter_detected; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  TYPE_1__ LVRelStats ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FirstOffsetNumber ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int InvalidBlockNumber ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int PREFETCH_SIZE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int VACUUM_TRUNCATE_LOCK_CHECK_INTERVAL ; 
 int /*<<< orphan*/  elevel ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vac_strategy ; 

__attribute__((used)) static BlockNumber
FUNC20(Relation onerel, LVRelStats *vacrelstats)
{
	BlockNumber blkno;
	BlockNumber prefetchedUntil;
	instr_time	starttime;

	/* Initialize the starttime if we check for conflicting lock requests */
	FUNC3(starttime);

	/*
	 * Start checking blocks at what we believe relation end to be and move
	 * backwards.  (Strange coding of loop control is needed because blkno is
	 * unsigned.)  To make the scan faster, we prefetch a few blocks at a time
	 * in forward direction, so that OS-level readahead can kick in.
	 */
	blkno = vacrelstats->rel_pages;
	FUNC16((PREFETCH_SIZE & (PREFETCH_SIZE - 1)) == 0,
					 "prefetch size must be power of 2");
	prefetchedUntil = InvalidBlockNumber;
	while (blkno > vacrelstats->nonempty_pages)
	{
		Buffer		buf;
		Page		page;
		OffsetNumber offnum,
					maxoff;
		bool		hastup;

		/*
		 * Check if another process requests a lock on our relation. We are
		 * holding an AccessExclusiveLock here, so they will be waiting. We
		 * only do this once per VACUUM_TRUNCATE_LOCK_CHECK_INTERVAL, and we
		 * only check if that interval has elapsed once every 32 blocks to
		 * keep the number of system calls and actual shared lock table
		 * lookups to a minimum.
		 */
		if ((blkno % 32) == 0)
		{
			instr_time	currenttime;
			instr_time	elapsed;

			FUNC3(currenttime);
			elapsed = currenttime;
			FUNC4(elapsed, starttime);
			if ((FUNC2(elapsed) / 1000)
				>= VACUUM_TRUNCATE_LOCK_CHECK_INTERVAL)
			{
				if (FUNC7(onerel, AccessExclusiveLock))
				{
					FUNC18(elevel,
							(FUNC19("\"%s\": suspending truncate due to conflicting lock request",
									FUNC15(onerel))));

					vacrelstats->lock_waiter_detected = true;
					return blkno;
				}
				starttime = currenttime;
			}
		}

		/*
		 * We don't insert a vacuum delay point here, because we have an
		 * exclusive lock on the table which we want to hold for as short a
		 * time as possible.  We still need to check for interrupts however.
		 */
		FUNC1();

		blkno--;

		/* If we haven't prefetched this lot yet, do so now. */
		if (prefetchedUntil > blkno)
		{
			BlockNumber prefetchStart;
			BlockNumber pblkno;

			prefetchStart = blkno & ~(PREFETCH_SIZE - 1);
			for (pblkno = prefetchStart; pblkno <= blkno; pblkno++)
			{
				FUNC13(onerel, MAIN_FORKNUM, pblkno);
				FUNC1();
			}
			prefetchedUntil = prefetchStart;
		}

		buf = FUNC14(onerel, MAIN_FORKNUM, blkno,
								 RBM_NORMAL, vac_strategy);

		/* In this phase we only need shared access to the buffer */
		FUNC6(buf, BUFFER_LOCK_SHARE);

		page = FUNC0(buf);

		if (FUNC12(page) || FUNC11(page))
		{
			FUNC17(buf);
			continue;
		}

		hastup = false;
		maxoff = FUNC10(page);
		for (offnum = FirstOffsetNumber;
			 offnum <= maxoff;
			 offnum = FUNC8(offnum))
		{
			ItemId		itemid;

			itemid = FUNC9(page, offnum);

			/*
			 * Note: any non-unused item should be taken as a reason to keep
			 * this page.  We formerly thought that DEAD tuples could be
			 * thrown away, but that's not so, because we'd not have cleaned
			 * out their index entries.
			 */
			if (FUNC5(itemid))
			{
				hastup = true;
				break;			/* can stop scanning */
			}
		}						/* scan along page */

		FUNC17(buf);

		/* Done scanning if we found a tuple here */
		if (hastup)
			return blkno + 1;
	}

	/*
	 * If we fall out of the loop, all the previously-thought-to-be-empty
	 * pages still are; we need not bother to look at the last known-nonempty
	 * page.
	 */
	return vacrelstats->nonempty_pages;
}