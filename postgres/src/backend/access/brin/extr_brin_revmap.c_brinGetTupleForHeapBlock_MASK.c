#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ rm_pagesPerRange; void* rm_currBuf; int /*<<< orphan*/  rm_irel; } ;
struct TYPE_8__ {scalar_t__ bt_blkno; } ;
struct TYPE_7__ {int /*<<< orphan*/ * rm_tids; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_1__ RevmapContents ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  void* Buffer ;
typedef  TYPE_2__ BrinTuple ;
typedef  TYPE_3__ BrinRevmap ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int BUFFER_LOCK_SHARE ; 
 int BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ InvalidBlockNumber ; 
 void* InvalidBuffer ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (void*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 void* FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 scalar_t__ FUNC25 (TYPE_3__*,scalar_t__) ; 

BrinTuple *
FUNC26(BrinRevmap *revmap, BlockNumber heapBlk,
						 Buffer *buf, OffsetNumber *off, Size *size, int mode,
						 Snapshot snapshot)
{
	Relation	idxRel = revmap->rm_irel;
	BlockNumber mapBlk;
	RevmapContents *contents;
	ItemPointerData *iptr;
	BlockNumber blk;
	Page		page;
	ItemId		lp;
	BrinTuple  *tup;
	ItemPointerData previptr;

	/* normalize the heap block number to be the first page in the range */
	heapBlk = (heapBlk / revmap->rm_pagesPerRange) * revmap->rm_pagesPerRange;

	/*
	 * Compute the revmap page number we need.  If Invalid is returned (i.e.,
	 * the revmap page hasn't been created yet), the requested page range is
	 * not summarized.
	 */
	mapBlk = FUNC25(revmap, heapBlk);
	if (mapBlk == InvalidBlockNumber)
	{
		*off = InvalidOffsetNumber;
		return NULL;
	}

	FUNC13(&previptr);
	for (;;)
	{
		FUNC5();

		if (revmap->rm_currBuf == InvalidBuffer ||
			FUNC2(revmap->rm_currBuf) != mapBlk)
		{
			if (revmap->rm_currBuf != InvalidBuffer)
				FUNC20(revmap->rm_currBuf);

			FUNC0(mapBlk != InvalidBlockNumber);
			revmap->rm_currBuf = FUNC19(revmap->rm_irel, mapBlk);
		}

		FUNC14(revmap->rm_currBuf, BUFFER_LOCK_SHARE);

		contents = (RevmapContents *)
			FUNC15(FUNC3(revmap->rm_currBuf));
		iptr = contents->rm_tids;
		iptr += FUNC6(revmap->rm_pagesPerRange, heapBlk);

		if (!FUNC12(iptr))
		{
			FUNC14(revmap->rm_currBuf, BUFFER_LOCK_UNLOCK);
			return NULL;
		}

		/*
		 * Check the TID we got in a previous iteration, if any, and save the
		 * current TID we got from the revmap; if we loop, we can sanity-check
		 * that the next one we get is different.  Otherwise we might be stuck
		 * looping forever if the revmap is somehow badly broken.
		 */
		if (FUNC12(&previptr) && FUNC9(&previptr, iptr))
			FUNC22(ERROR,
					(FUNC23(ERRCODE_INDEX_CORRUPTED),
					 FUNC24("corrupted BRIN index: inconsistent range map")));
		previptr = *iptr;

		blk = FUNC10(iptr);
		*off = FUNC11(iptr);

		FUNC14(revmap->rm_currBuf, BUFFER_LOCK_UNLOCK);

		/* Ok, got a pointer to where the BrinTuple should be. Fetch it. */
		if (!FUNC4(*buf) || FUNC2(*buf) != blk)
		{
			if (FUNC4(*buf))
				FUNC20(*buf);
			*buf = FUNC19(idxRel, blk);
		}
		FUNC14(*buf, mode);
		page = FUNC3(*buf);
		FUNC21(snapshot, idxRel, page);

		/* If we land on a revmap page, start over */
		if (FUNC1(page))
		{
			if (*off > FUNC18(page))
				FUNC22(ERROR,
						(FUNC23(ERRCODE_INDEX_CORRUPTED),
						 FUNC24("corrupted BRIN index: inconsistent range map")));
			lp = FUNC17(page, *off);
			if (FUNC8(lp))
			{
				tup = (BrinTuple *) FUNC16(page, lp);

				if (tup->bt_blkno == heapBlk)
				{
					if (size)
						*size = FUNC7(lp);
					/* found it! */
					return tup;
				}
			}
		}

		/*
		 * No luck. Assume that the revmap was updated concurrently.
		 */
		FUNC14(*buf, BUFFER_LOCK_UNLOCK);
	}
	/* not reached, but keep compiler quiet */
	return NULL;
}