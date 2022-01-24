#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  in_index ;
struct TYPE_25__ {int htups; int tups_inserted; int /*<<< orphan*/  tuplesort; } ;
typedef  TYPE_2__ ValidateIndexState ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  scalar_t__ TableScanDesc ;
struct TYPE_30__ {int /*<<< orphan*/  ecxt_per_tuple_memory; int /*<<< orphan*/ * ecxt_scantuple; } ;
struct TYPE_29__ {scalar_t__ rs_nblocks; scalar_t__ rs_cblock; int /*<<< orphan*/  rs_cbuf; } ;
struct TYPE_28__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_27__ {int /*<<< orphan*/ * ii_PredicateState; int /*<<< orphan*/  ii_ExpressionsState; scalar_t__ ii_Unique; int /*<<< orphan*/  ii_Predicate; } ;
struct TYPE_26__ {TYPE_1__* rd_rel; } ;
struct TYPE_24__ {int /*<<< orphan*/  relam; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_4__ IndexInfo ;
typedef  TYPE_5__* HeapTuple ;
typedef  TYPE_6__* HeapScanDesc ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_7__ ExprContext ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATA_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_5__*) ; 
 int INDEX_MAX_KEYS ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MaxHeapTuplesPerPage ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROGRESS_SCAN_BLOCKS_DONE ; 
 int /*<<< orphan*/  PROGRESS_SCAN_BLOCKS_TOTAL ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 
 int /*<<< orphan*/  TTSOpsHeapTuple ; 
 int /*<<< orphan*/  UNIQUE_CHECK_NO ; 
 int /*<<< orphan*/  UNIQUE_CHECK_YES ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int*) ; 
 TYPE_5__* FUNC29 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC35 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC38(Relation heapRelation,
						   Relation indexRelation,
						   IndexInfo *indexInfo,
						   Snapshot snapshot,
						   ValidateIndexState *state)
{
	TableScanDesc scan;
	HeapScanDesc hscan;
	HeapTuple	heapTuple;
	Datum		values[INDEX_MAX_KEYS];
	bool		isnull[INDEX_MAX_KEYS];
	ExprState  *predicate;
	TupleTableSlot *slot;
	EState	   *estate;
	ExprContext *econtext;
	BlockNumber root_blkno = InvalidBlockNumber;
	OffsetNumber root_offsets[MaxHeapTuplesPerPage];
	bool		in_index[MaxHeapTuplesPerPage];
	BlockNumber previous_blkno = InvalidBlockNumber;

	/* state variables for the merge */
	ItemPointer indexcursor = NULL;
	ItemPointerData decoded;
	bool		tuplesort_empty = false;

	/*
	 * sanity checks
	 */
	FUNC0(FUNC22(indexRelation->rd_rel->relam));

	/*
	 * Need an EState for evaluation of index expressions and partial-index
	 * predicates.  Also a slot to hold the current tuple.
	 */
	estate = FUNC3();
	econtext = FUNC12(estate);
	slot = FUNC19(FUNC23(heapRelation),
									&TTSOpsHeapTuple);

	/* Arrange for econtext's scan tuple to be the tuple under test */
	econtext->ecxt_scantuple = slot;

	/* Set up execution state for predicate, if any. */
	predicate = FUNC7(indexInfo->ii_Predicate, estate);

	/*
	 * Prepare for scan of the base relation.  We need just those tuples
	 * satisfying the passed-in reference snapshot.  We must disable syncscan
	 * here, because it's critical that we read from block zero forward to
	 * match the sorted TIDs.
	 */
	scan = FUNC35(heapRelation,	/* relation */
								 snapshot,	/* snapshot */
								 0, /* number of keys */
								 NULL,	/* scan key */
								 true,	/* buffer access strategy OK */
								 false);	/* syncscan not OK */
	hscan = (HeapScanDesc) scan;

	FUNC34(PROGRESS_SCAN_BLOCKS_TOTAL,
								 hscan->rs_nblocks);

	/*
	 * Scan all tuples matching the snapshot.
	 */
	while ((heapTuple = FUNC29(scan, ForwardScanDirection)) != NULL)
	{
		ItemPointer heapcursor = &heapTuple->t_self;
		ItemPointerData rootTuple;
		OffsetNumber root_offnum;

		FUNC2();

		state->htups += 1;

		if ((previous_blkno == InvalidBlockNumber) ||
			(hscan->rs_cblock != previous_blkno))
		{
			FUNC34(PROGRESS_SCAN_BLOCKS_DONE,
										 hscan->rs_cblock);
			previous_blkno = hscan->rs_cblock;
		}

		/*
		 * As commented in table_index_build_scan, we should index heap-only
		 * tuples under the TIDs of their root tuples; so when we advance onto
		 * a new heap page, build a map of root item offsets on the page.
		 *
		 * This complicates merging against the tuplesort output: we will
		 * visit the live tuples in order by their offsets, but the root
		 * offsets that we need to compare against the index contents might be
		 * ordered differently.  So we might have to "look back" within the
		 * tuplesort output, but only within the current page.  We handle that
		 * by keeping a bool array in_index[] showing all the
		 * already-passed-over tuplesort output TIDs of the current page. We
		 * clear that array here, when advancing onto a new heap page.
		 */
		if (hscan->rs_cblock != root_blkno)
		{
			Page		page = FUNC1(hscan->rs_cbuf);

			FUNC18(hscan->rs_cbuf, BUFFER_LOCK_SHARE);
			FUNC28(page, root_offsets);
			FUNC18(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

			FUNC32(in_index, 0, sizeof(in_index));

			root_blkno = hscan->rs_cblock;
		}

		/* Convert actual tuple TID to root TID */
		rootTuple = *heapcursor;
		root_offnum = FUNC16(heapcursor);

		if (FUNC13(heapTuple))
		{
			root_offnum = root_offsets[root_offnum - 1];
			if (!FUNC21(root_offnum))
				FUNC25(ERROR,
						(FUNC26(ERRCODE_DATA_CORRUPTED),
						 FUNC27("failed to find parent tuple for heap-only tuple at (%u,%u) in table \"%s\"",
										 FUNC15(heapcursor),
										 FUNC16(heapcursor),
										 FUNC24(heapRelation))));
			FUNC17(&rootTuple, root_offnum);
		}

		/*
		 * "merge" by skipping through the index tuples until we find or pass
		 * the current root tuple.
		 */
		while (!tuplesort_empty &&
			   (!indexcursor ||
				FUNC14(indexcursor, &rootTuple) < 0))
		{
			Datum		ts_val;
			bool		ts_isnull;

			if (indexcursor)
			{
				/*
				 * Remember index items seen earlier on the current heap page
				 */
				if (FUNC15(indexcursor) == root_blkno)
					in_index[FUNC16(indexcursor) - 1] = true;
			}

			tuplesort_empty = !FUNC37(state->tuplesort, true,
												  &ts_val, &ts_isnull, NULL);
			FUNC0(tuplesort_empty || !ts_isnull);
			if (!tuplesort_empty)
			{
				FUNC31(&decoded, FUNC4(ts_val));
				indexcursor = &decoded;

				/* If int8 is pass-by-ref, free (encoded) TID Datum memory */
#ifndef USE_FLOAT8_BYVAL
				FUNC33(FUNC5(ts_val));
#endif
			}
			else
			{
				/* Be tidy */
				indexcursor = NULL;
			}
		}

		/*
		 * If the tuplesort has overshot *and* we didn't see a match earlier,
		 * then this tuple is missing from the index, so insert it.
		 */
		if ((tuplesort_empty ||
			 FUNC14(indexcursor, &rootTuple) > 0) &&
			!in_index[root_offnum - 1])
		{
			FUNC20(econtext->ecxt_per_tuple_memory);

			/* Set up for predicate or expression evaluation */
			FUNC9(heapTuple, slot, false);

			/*
			 * In a partial index, discard tuples that don't satisfy the
			 * predicate.
			 */
			if (predicate != NULL)
			{
				if (!FUNC8(predicate, econtext))
					continue;
			}

			/*
			 * For the current heap tuple, extract all the attributes we use
			 * in this index, and note which are null.  This also performs
			 * evaluation of any expressions needed.
			 */
			FUNC10(indexInfo,
						   slot,
						   estate,
						   values,
						   isnull);

			/*
			 * You'd think we should go ahead and build the index tuple here,
			 * but some index AMs want to do further processing on the data
			 * first. So pass the values[] and isnull[] arrays, instead.
			 */

			/*
			 * If the tuple is already committed dead, you might think we
			 * could suppress uniqueness checking, but this is no longer true
			 * in the presence of HOT, because the insert is actually a proxy
			 * for a uniqueness check on the whole HOT-chain.  That is, the
			 * tuple we have here could be dead because it was already
			 * HOT-updated, and if so the updating transaction will not have
			 * thought it should insert index entries.  The index AM will
			 * check the whole HOT-chain and correctly detect a conflict if
			 * there is one.
			 */

			FUNC30(indexRelation,
						 values,
						 isnull,
						 &rootTuple,
						 heapRelation,
						 indexInfo->ii_Unique ?
						 UNIQUE_CHECK_YES : UNIQUE_CHECK_NO,
						 indexInfo);

			state->tups_inserted += 1;
		}
	}

	FUNC36(scan);

	FUNC6(slot);

	FUNC11(estate);

	/* These may have been pointing to the now-gone estate */
	indexInfo->ii_ExpressionsState = NIL;
	indexInfo->ii_PredicateState = NULL;
}