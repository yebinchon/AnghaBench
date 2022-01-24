#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bs_bdesc; int /*<<< orphan*/  bs_dtuple; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BrinTuple ;
typedef  int /*<<< orphan*/  BrinRevmap ;
typedef  TYPE_1__ BrinBuildState ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BRIN_ALL_BLOCKRANGES ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC16(Relation index, Relation heapRel, BlockNumber pageRange,
			  bool include_partial, double *numSummarized, double *numExisting)
{
	BrinRevmap *revmap;
	BrinBuildState *state = NULL;
	IndexInfo  *indexInfo = NULL;
	BlockNumber heapNumBlocks;
	BlockNumber pagesPerRange;
	Buffer		buf;
	BlockNumber startBlk;

	revmap = FUNC9(index, &pagesPerRange, NULL);

	/* determine range of pages to process */
	heapNumBlocks = FUNC6(heapRel);
	if (pageRange == BRIN_ALL_BLOCKRANGES)
		startBlk = 0;
	else
	{
		startBlk = (pageRange / pagesPerRange) * pagesPerRange;
		heapNumBlocks = FUNC5(heapNumBlocks, startBlk + pagesPerRange);
	}
	if (startBlk > heapNumBlocks)
	{
		/* Nothing to do if start point is beyond end of table */
		FUNC10(revmap);
		return;
	}

	/*
	 * Scan the revmap to find unsummarized items.
	 */
	buf = InvalidBuffer;
	for (; startBlk < heapNumBlocks; startBlk += pagesPerRange)
	{
		BrinTuple  *tup;
		OffsetNumber off;

		/*
		 * Unless requested to summarize even a partial range, go away now if
		 * we think the next range is partial.  Caller would pass true when it
		 * is typically run once bulk data loading is done
		 * (brin_summarize_new_values), and false when it is typically the
		 * result of arbitrarily-scheduled maintenance command (vacuuming).
		 */
		if (!include_partial &&
			(startBlk + pagesPerRange > heapNumBlocks))
			break;

		FUNC3();

		tup = FUNC8(revmap, startBlk, &buf, &off, NULL,
									   BUFFER_LOCK_SHARE, NULL);
		if (tup == NULL)
		{
			/* no revmap entry for this heap range. Summarize it. */
			if (state == NULL)
			{
				/* first time through */
				FUNC0(!indexInfo);
				state = FUNC12(index, revmap,
												   pagesPerRange);
				indexInfo = FUNC2(index);
			}
			FUNC14(indexInfo, state, heapRel, startBlk, heapNumBlocks);

			/* and re-initialize state for the next range */
			FUNC11(state->bs_dtuple, state->bs_bdesc);

			if (numSummarized)
				*numSummarized += 1.0;
		}
		else
		{
			if (numExisting)
				*numExisting += 1.0;
			FUNC4(buf, BUFFER_LOCK_UNLOCK);
		}
	}

	if (FUNC1(buf))
		FUNC7(buf);

	/* free resources */
	FUNC10(revmap);
	if (state)
	{
		FUNC15(state);
		FUNC13(indexInfo);
	}
}