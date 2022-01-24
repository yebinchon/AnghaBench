#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_17__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_30__ {int /*<<< orphan*/  sortstate; } ;
struct TYPE_29__ {TYPE_17__* index; TYPE_1__* inskey; } ;
struct TYPE_28__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_27__ {int sk_flags; scalar_t__ sk_attno; int /*<<< orphan*/  sk_collation; } ;
struct TYPE_26__ {int ssup_nulls_first; scalar_t__ ssup_attno; int abbreviate; int /*<<< orphan*/  ssup_collation; int /*<<< orphan*/  ssup_cxt; } ;
struct TYPE_25__ {TYPE_3__* scankeys; } ;
struct TYPE_24__ {int /*<<< orphan*/  rd_smgr; } ;
typedef  int /*<<< orphan*/  SortSupportData ;
typedef  TYPE_2__* SortSupport ;
typedef  TYPE_3__* ScanKey ;
typedef  TYPE_4__* IndexTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_5__ BTWriteState ;
typedef  TYPE_6__ BTSpool ;
typedef  int /*<<< orphan*/  BTPageState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  BTGreaterStrategyNumber ; 
 int /*<<< orphan*/  BTLessStrategyNumber ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int FUNC3 (TYPE_17__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  PROGRESS_CREATEIDX_TUPLES_DONE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_17__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_17__*) ; 
 scalar_t__ FUNC7 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_17__*) ; 
 int SK_BT_DESC ; 
 int SK_BT_NULLS_FIRST ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC17 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC18(BTWriteState *wstate, BTSpool *btspool, BTSpool *btspool2)
{
	BTPageState *state = NULL;
	bool		merge = (btspool2 != NULL);
	IndexTuple	itup,
				itup2 = NULL;
	bool		load1;
	TupleDesc	tupdes = FUNC6(wstate->index);
	int			i,
				keysz = FUNC3(wstate->index);
	SortSupport sortKeys;
	int64		tuples_done = 0;

	if (merge)
	{
		/*
		 * Another BTSpool for dead tuples exists. Now we have to merge
		 * btspool and btspool2.
		 */

		/* the preparation of merge */
		itup = FUNC17(btspool->sortstate, true);
		itup2 = FUNC17(btspool2->sortstate, true);

		/* Prepare SortSupport data for each column */
		sortKeys = (SortSupport) FUNC13(keysz * sizeof(SortSupportData));

		for (i = 0; i < keysz; i++)
		{
			SortSupport sortKey = sortKeys + i;
			ScanKey		scanKey = wstate->inskey->scankeys + i;
			int16		strategy;

			sortKey->ssup_cxt = CurrentMemoryContext;
			sortKey->ssup_collation = scanKey->sk_collation;
			sortKey->ssup_nulls_first =
				(scanKey->sk_flags & SK_BT_NULLS_FIRST) != 0;
			sortKey->ssup_attno = scanKey->sk_attno;
			/* Abbreviation is not supported here */
			sortKey->abbreviate = false;

			FUNC2(sortKey->ssup_attno != 0);

			strategy = (scanKey->sk_flags & SK_BT_DESC) != 0 ?
				BTGreaterStrategyNumber : BTLessStrategyNumber;

			FUNC5(wstate->index, strategy, sortKey);
		}

		for (;;)
		{
			load1 = true;		/* load BTSpool next ? */
			if (itup2 == NULL)
			{
				if (itup == NULL)
					break;
			}
			else if (itup != NULL)
			{
				int32		compare = 0;

				for (i = 1; i <= keysz; i++)
				{
					SortSupport entry;
					Datum		attrDatum1,
								attrDatum2;
					bool		isNull1,
								isNull2;

					entry = sortKeys + i - 1;
					attrDatum1 = FUNC12(itup, i, tupdes, &isNull1);
					attrDatum2 = FUNC12(itup2, i, tupdes, &isNull2);

					compare = FUNC0(attrDatum1, isNull1,
												  attrDatum2, isNull2,
												  entry);
					if (compare > 0)
					{
						load1 = false;
						break;
					}
					else if (compare < 0)
						break;
				}

				/*
				 * If key values are equal, we sort on ItemPointer.  This is
				 * required for btree indexes, since heap TID is treated as an
				 * implicit last key attribute in order to ensure that all
				 * keys in the index are physically unique.
				 */
				if (compare == 0)
				{
					compare = FUNC4(&itup->t_tid, &itup2->t_tid);
					FUNC1(compare != 0);
					if (compare > 0)
						load1 = false;
				}
			}
			else
				load1 = false;

			/* When we see first tuple, create first index page */
			if (state == NULL)
				state = FUNC10(wstate, 0);

			if (load1)
			{
				FUNC9(wstate, state, itup);
				itup = FUNC17(btspool->sortstate, true);
			}
			else
			{
				FUNC9(wstate, state, itup2);
				itup2 = FUNC17(btspool2->sortstate, true);
			}

			/* Report progress */
			FUNC15(PROGRESS_CREATEIDX_TUPLES_DONE,
										 ++tuples_done);
		}
		FUNC14(sortKeys);
	}
	else
	{
		/* merge is unnecessary */
		while ((itup = FUNC17(btspool->sortstate,
											   true)) != NULL)
		{
			/* When we see first tuple, create first index page */
			if (state == NULL)
				state = FUNC10(wstate, 0);

			FUNC9(wstate, state, itup);

			/* Report progress */
			FUNC15(PROGRESS_CREATEIDX_TUPLES_DONE,
										 ++tuples_done);
		}
	}

	/* Close down final pages and write the metapage */
	FUNC11(wstate, state);

	/*
	 * If the index is WAL-logged, we must fsync it down to disk before it's
	 * safe to commit the transaction.  (For a non-WAL-logged index we don't
	 * care since the index will be uninteresting after a crash anyway.)
	 *
	 * It's obvious that we must do this when not WAL-logging the build. It's
	 * less obvious that we have to do it even if we did WAL-log the index
	 * pages.  The reason is that since we're building outside shared buffers,
	 * a CHECKPOINT occurring during the build has no way to flush the
	 * previously written data to disk (indeed it won't know the index even
	 * exists).  A crash later on would replay WAL from the checkpoint,
	 * therefore it wouldn't replay our earlier WAL entries. If we do not
	 * fsync those pages here, they might still not be on disk when the crash
	 * occurs.
	 */
	if (FUNC7(wstate->index))
	{
		FUNC8(wstate->index);
		FUNC16(wstate->index->rd_smgr, MAIN_FORKNUM);
	}
}