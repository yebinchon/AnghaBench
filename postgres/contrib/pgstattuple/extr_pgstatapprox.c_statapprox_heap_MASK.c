#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64 ;
struct TYPE_5__ {double tuple_len; double free_space; double dead_tuple_len; int table_len; int scanned_percent; double tuple_percent; double dead_tuple_percent; double free_percent; int /*<<< orphan*/  tuple_count; int /*<<< orphan*/  dead_tuple_count; } ;
typedef  TYPE_1__ output_type ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_6__ {double t_len; int /*<<< orphan*/  t_tableOid; scalar_t__ t_data; int /*<<< orphan*/  t_self; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  TYPE_2__ HeapTupleData ;
typedef  int /*<<< orphan*/  BufferAccessStrategy ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BAS_BULKREAD ; 
 int BLCKSZ ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
#define  HEAPTUPLE_DEAD 132 
#define  HEAPTUPLE_DELETE_IN_PROGRESS 131 
#define  HEAPTUPLE_INSERT_IN_PROGRESS 130 
#define  HEAPTUPLE_LIVE 129 
#define  HEAPTUPLE_RECENTLY_DEAD 128 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 double FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  PROCARRAY_FLAGS_VACUUM ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ SizeOfPageHeaderData ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC30(Relation rel, output_type *stat)
{
	BlockNumber scanned,
				nblocks,
				blkno;
	Buffer		vmbuffer = InvalidBuffer;
	BufferAccessStrategy bstrategy;
	TransactionId OldestXmin;

	OldestXmin = FUNC5(rel, PROCARRAY_FLAGS_VACUUM);
	bstrategy = FUNC4(BAS_BULKREAD);

	nblocks = FUNC23(rel);
	scanned = 0;

	for (blkno = 0; blkno < nblocks; blkno++)
	{
		Buffer		buf;
		Page		page;
		OffsetNumber offnum,
					maxoff;
		Size		freespace;

		FUNC3();

		/*
		 * If the page has only visible tuples, then we can find out the free
		 * space from the FSM and move on.
		 */
		if (FUNC27(rel, blkno, &vmbuffer))
		{
			freespace = FUNC6(rel, blkno);
			stat->tuple_len += BLCKSZ - freespace;
			stat->free_space += freespace;
			continue;
		}

		buf = FUNC22(rel, MAIN_FORKNUM, blkno,
								 RBM_NORMAL, bstrategy);

		FUNC14(buf, BUFFER_LOCK_SHARE);

		page = FUNC1(buf);

		/*
		 * It's not safe to call PageGetHeapFreeSpace() on new pages, so we
		 * treat them as being free space for our purposes.
		 */
		if (!FUNC21(page))
			stat->free_space += FUNC16(page);
		else
			stat->free_space += BLCKSZ - SizeOfPageHeaderData;

		/* We may count the page as scanned even if it's new/empty */
		scanned++;

		if (FUNC21(page) || FUNC20(page))
		{
			FUNC26(buf);
			continue;
		}

		/*
		 * Look at each tuple on the page and decide whether it's live or
		 * dead, then count it and its size. Unlike lazy_scan_heap, we can
		 * afford to ignore problems and special cases.
		 */
		maxoff = FUNC19(page);

		for (offnum = FirstOffsetNumber;
			 offnum <= maxoff;
			 offnum = FUNC15(offnum))
		{
			ItemId		itemid;
			HeapTupleData tuple;

			itemid = FUNC18(page, offnum);

			if (!FUNC12(itemid) || FUNC11(itemid) ||
				FUNC9(itemid))
			{
				continue;
			}

			FUNC0(FUNC10(itemid));

			FUNC13(&(tuple.t_self), blkno, offnum);

			tuple.t_data = (HeapTupleHeader) FUNC17(page, itemid);
			tuple.t_len = FUNC8(itemid);
			tuple.t_tableOid = FUNC24(rel);

			/*
			 * We follow VACUUM's lead in counting INSERT_IN_PROGRESS tuples
			 * as "dead" while DELETE_IN_PROGRESS tuples are "live".  We don't
			 * bother distinguishing tuples inserted/deleted by our own
			 * transaction.
			 */
			switch (FUNC7(&tuple, OldestXmin, buf))
			{
				case HEAPTUPLE_LIVE:
				case HEAPTUPLE_DELETE_IN_PROGRESS:
					stat->tuple_len += tuple.t_len;
					stat->tuple_count++;
					break;
				case HEAPTUPLE_DEAD:
				case HEAPTUPLE_RECENTLY_DEAD:
				case HEAPTUPLE_INSERT_IN_PROGRESS:
					stat->dead_tuple_len += tuple.t_len;
					stat->dead_tuple_count++;
					break;
				default:
					FUNC28(ERROR, "unexpected HeapTupleSatisfiesVacuum result");
					break;
			}
		}

		FUNC26(buf);
	}

	stat->table_len = (uint64) nblocks * BLCKSZ;

	/*
	 * We don't know how many tuples are in the pages we didn't scan, so
	 * extrapolate the live-tuple count to the whole table in the same way
	 * that VACUUM does.  (Like VACUUM, we're not taking a random sample, so
	 * just extrapolating linearly seems unsafe.)  There should be no dead
	 * tuples in all-visible pages, so no correction is needed for that, and
	 * we already accounted for the space in those pages, too.
	 */
	stat->tuple_count = FUNC29(rel, nblocks, scanned,
											   stat->tuple_count);

	/*
	 * Calculate percentages if the relation has one or more pages.
	 */
	if (nblocks != 0)
	{
		stat->scanned_percent = 100 * scanned / nblocks;
		stat->tuple_percent = 100.0 * stat->tuple_len / stat->table_len;
		stat->dead_tuple_percent = 100.0 * stat->dead_tuple_len / stat->table_len;
		stat->free_percent = 100.0 * stat->free_space / stat->table_len;
	}

	if (FUNC2(vmbuffer))
	{
		FUNC25(vmbuffer);
		vmbuffer = InvalidBuffer;
	}
}