#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int next; int count; int /*<<< orphan*/  tids; } ;
typedef  TYPE_1__ corrupt_items ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_8__ {int /*<<< orphan*/  t_self; scalar_t__ t_data; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_len; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  TYPE_2__ HeapTupleData ;
typedef  int /*<<< orphan*/  BufferAccessStrategy ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  BAS_BULKREAD ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  PROCARRAY_FLAGS_VACUUM ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 TYPE_1__* FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static corrupt_items *
FUNC29(Oid relid, bool all_visible, bool all_frozen)
{
	Relation	rel;
	BlockNumber nblocks;
	corrupt_items *items;
	BlockNumber blkno;
	Buffer		vmbuffer = InvalidBuffer;
	BufferAccessStrategy bstrategy = FUNC2(BAS_BULKREAD);
	TransactionId OldestXmin = InvalidTransactionId;

	if (all_visible)
	{
		/* Don't pass rel; that will fail in recovery. */
		OldestXmin = FUNC3(NULL, PROCARRAY_FLAGS_VACUUM);
	}

	rel = FUNC27(relid, AccessShareLock);

	/* Only some relkinds have a visibility map */
	FUNC21(rel);

	nblocks = FUNC15(rel);

	/*
	 * Guess an initial array size. We don't expect many corrupted tuples, so
	 * start with a small array.  This function uses the "next" field to track
	 * the next offset where we can store an item (which is the same thing as
	 * the number of items found so far) and the "count" field to track the
	 * number of entries allocated.  We'll repurpose these fields before
	 * returning.
	 */
	items = FUNC24(sizeof(corrupt_items));
	items->next = 0;
	items->count = 64;
	items->tids = FUNC23(items->count * sizeof(ItemPointerData));

	/* Loop over every block in the relation. */
	for (blkno = 0; blkno < nblocks; ++blkno)
	{
		bool		check_frozen = false;
		bool		check_visible = false;
		Buffer		buffer;
		Page		page;
		OffsetNumber offnum,
					maxoff;

		/* Make sure we are interruptible. */
		FUNC1();

		/* Use the visibility map to decide whether to check this page. */
		if (all_frozen && FUNC19(rel, blkno, &vmbuffer))
			check_frozen = true;
		if (all_visible && FUNC20(rel, blkno, &vmbuffer))
			check_visible = true;
		if (!check_visible && !check_frozen)
			continue;

		/* Read and lock the page. */
		buffer = FUNC14(rel, MAIN_FORKNUM, blkno, RBM_NORMAL,
									bstrategy);
		FUNC9(buffer, BUFFER_LOCK_SHARE);

		page = FUNC0(buffer);
		maxoff = FUNC13(page);

		/*
		 * The visibility map bits might have changed while we were acquiring
		 * the page lock.  Recheck to avoid returning spurious results.
		 */
		if (check_frozen && !FUNC19(rel, blkno, &vmbuffer))
			check_frozen = false;
		if (check_visible && !FUNC20(rel, blkno, &vmbuffer))
			check_visible = false;
		if (!check_visible && !check_frozen)
		{
			FUNC18(buffer);
			continue;
		}

		/* Iterate over each tuple on the page. */
		for (offnum = FirstOffsetNumber;
			 offnum <= maxoff;
			 offnum = FUNC10(offnum))
		{
			HeapTupleData tuple;
			ItemId		itemid;

			itemid = FUNC12(page, offnum);

			/* Unused or redirect line pointers are of no interest. */
			if (!FUNC7(itemid) || FUNC6(itemid))
				continue;

			/* Dead line pointers are neither all-visible nor frozen. */
			if (FUNC5(itemid))
			{
				FUNC8(&(tuple.t_self), blkno, offnum);
				FUNC25(items, &tuple.t_self);
				continue;
			}

			/* Initialize a HeapTupleData structure for checks below. */
			FUNC8(&(tuple.t_self), blkno, offnum);
			tuple.t_data = (HeapTupleHeader) FUNC11(page, itemid);
			tuple.t_len = FUNC4(itemid);
			tuple.t_tableOid = relid;

			/*
			 * If we're checking whether the page is all-visible, we expect
			 * the tuple to be all-visible.
			 */
			if (check_visible &&
				!FUNC28(&tuple, OldestXmin, buffer))
			{
				TransactionId RecomputedOldestXmin;

				/*
				 * Time has passed since we computed OldestXmin, so it's
				 * possible that this tuple is all-visible in reality even
				 * though it doesn't appear so based on our
				 * previously-computed value.  Let's compute a new value so we
				 * can be certain whether there is a problem.
				 *
				 * From a concurrency point of view, it sort of sucks to
				 * retake ProcArrayLock here while we're holding the buffer
				 * exclusively locked, but it should be safe against
				 * deadlocks, because surely GetOldestXmin() should never take
				 * a buffer lock. And this shouldn't happen often, so it's
				 * worth being careful so as to avoid false positives.
				 */
				RecomputedOldestXmin = FUNC3(NULL, PROCARRAY_FLAGS_VACUUM);

				if (!FUNC17(OldestXmin, RecomputedOldestXmin))
					FUNC25(items, &tuple.t_self);
				else
				{
					OldestXmin = RecomputedOldestXmin;
					if (!FUNC28(&tuple, OldestXmin, buffer))
						FUNC25(items, &tuple.t_self);
				}
			}

			/*
			 * If we're checking whether the page is all-frozen, we expect the
			 * tuple to be in a state where it will never need freezing.
			 */
			if (check_frozen)
			{
				if (FUNC22(tuple.t_data))
					FUNC25(items, &tuple.t_self);
			}
		}

		FUNC18(buffer);
	}

	/* Clean up. */
	if (vmbuffer != InvalidBuffer)
		FUNC16(vmbuffer);
	FUNC26(rel, AccessShareLock);

	/*
	 * Before returning, repurpose the fields to match caller's expectations.
	 * next is now the next item that should be read (rather than written) and
	 * count is now the number of items we wrote (rather than the number we
	 * allocated).
	 */
	items->count = items->next;
	items->next = 0;

	return items;
}