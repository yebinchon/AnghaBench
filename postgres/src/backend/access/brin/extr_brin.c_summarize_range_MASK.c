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
struct TYPE_3__ {int bs_pagesPerRange; int bs_currRangeStart; int /*<<< orphan*/  bs_dtuple; int /*<<< orphan*/  bs_bdesc; int /*<<< orphan*/  bs_rmAccess; int /*<<< orphan*/  bs_irel; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  IndexInfo ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BrinTuple ;
typedef  TYPE_1__ BrinBuildState ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  brinbuildCallback ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,int,int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(IndexInfo *indexInfo, BrinBuildState *state, Relation heapRel,
				BlockNumber heapBlk, BlockNumber heapNumBlks)
{
	Buffer		phbuf;
	BrinTuple  *phtup;
	Size		phsz;
	OffsetNumber offset;
	BlockNumber scanNumBlks;

	/*
	 * Insert the placeholder tuple
	 */
	phbuf = InvalidBuffer;
	phtup = FUNC11(state->bs_bdesc, heapBlk, &phsz);
	offset = FUNC9(state->bs_irel, state->bs_pagesPerRange,
						   state->bs_rmAccess, &phbuf,
						   heapBlk, phtup, phsz);

	/*
	 * Compute range end.  We hold ShareUpdateExclusive lock on table, so it
	 * cannot shrink concurrently (but it can grow).
	 */
	FUNC0(heapBlk % state->bs_pagesPerRange == 0);
	if (heapBlk + state->bs_pagesPerRange > heapNumBlks)
	{
		/*
		 * If we're asked to scan what we believe to be the final range on the
		 * table (i.e. a range that might be partial) we need to recompute our
		 * idea of what the latest page is after inserting the placeholder
		 * tuple.  Anyone that grows the table later will update the
		 * placeholder tuple, so it doesn't matter that we won't scan these
		 * pages ourselves.  Careful: the table might have been extended
		 * beyond the current range, so clamp our result.
		 *
		 * Fortunately, this should occur infrequently.
		 */
		scanNumBlks = FUNC3(FUNC4(heapRel) - heapBlk,
						  state->bs_pagesPerRange);
	}
	else
	{
		/* Easy case: range is known to be complete */
		scanNumBlks = state->bs_pagesPerRange;
	}

	/*
	 * Execute the partial heap scan covering the heap blocks in the specified
	 * page range, summarizing the heap tuples in it.  This scan stops just
	 * short of brinbuildCallback creating the new index entry.
	 *
	 * Note that it is critical we use the "any visible" mode of
	 * table_index_build_range_scan here: otherwise, we would miss tuples
	 * inserted by transactions that are still in progress, among other corner
	 * cases.
	 */
	state->bs_currRangeStart = heapBlk;
	FUNC15(heapRel, state->bs_irel, indexInfo, false, true, false,
								 heapBlk, scanNumBlks,
								 brinbuildCallback, (void *) state, NULL);

	/*
	 * Now we update the values obtained by the scan with the placeholder
	 * tuple.  We do this in a loop which only terminates if we're able to
	 * update the placeholder tuple successfully; if we are not, this means
	 * somebody else modified the placeholder tuple after we read it.
	 */
	for (;;)
	{
		BrinTuple  *newtup;
		Size		newsize;
		bool		didupdate;
		bool		samepage;

		FUNC1();

		/*
		 * Update the summary tuple and try to update.
		 */
		newtup = FUNC12(state->bs_bdesc,
								 heapBlk, state->bs_dtuple, &newsize);
		samepage = FUNC7(phbuf, phsz, newsize);
		didupdate =
			FUNC10(state->bs_irel, state->bs_pagesPerRange,
						  state->bs_rmAccess, heapBlk, phbuf, offset,
						  phtup, phsz, newtup, newsize, samepage);
		FUNC13(phtup);
		FUNC13(newtup);

		/* If the update succeeded, we're done. */
		if (didupdate)
			break;

		/*
		 * If the update didn't work, it might be because somebody updated the
		 * placeholder tuple concurrently.  Extract the new version, union it
		 * with the values we have from the scan, and start over.  (There are
		 * other reasons for the update to fail, but it's simple to treat them
		 * the same.)
		 */
		phtup = FUNC6(state->bs_rmAccess, heapBlk, &phbuf,
										 &offset, &phsz, BUFFER_LOCK_SHARE,
										 NULL);
		/* the placeholder tuple must exist */
		if (phtup == NULL)
			FUNC14(ERROR, "missing placeholder tuple");
		phtup = FUNC8(phtup, phsz, NULL, NULL);
		FUNC2(phbuf, BUFFER_LOCK_UNLOCK);

		/* merge it into the tuple from the heap scan */
		FUNC16(state->bs_bdesc, state->bs_dtuple, phtup);
	}

	FUNC5(phbuf);
}