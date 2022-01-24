#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  tts_tid; } ;
typedef  TYPE_1__ TupleTableSlot ;
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_15__ {int /*<<< orphan*/  ecxt_per_tuple_memory; TYPE_1__* ecxt_scantuple; } ;
struct TYPE_14__ {int /*<<< orphan*/ * ii_PredicateState; int /*<<< orphan*/  ii_ExpressionsState; int /*<<< orphan*/  ii_Predicate; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_2__ IndexInfo ;
typedef  int /*<<< orphan*/  ExprState ;
typedef  TYPE_3__ ExprContext ;
typedef  int /*<<< orphan*/  EState ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *) ; 
 int INDEX_MAX_KEYS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC20(Relation heapRelation,
					Relation indexRelation,
					IndexInfo *indexInfo)
{
	TableScanDesc scan;
	Datum		values[INDEX_MAX_KEYS];
	bool		isnull[INDEX_MAX_KEYS];
	ExprState  *predicate;
	TupleTableSlot *slot;
	EState	   *estate;
	ExprContext *econtext;
	Snapshot	snapshot;

	/*
	 * If we are reindexing the target index, mark it as no longer being
	 * reindexed, to forestall an Assert in index_beginscan when we try to use
	 * the index for probes.  This is OK because the index is now fully valid.
	 */
	if (FUNC11(FUNC12(indexRelation)))
		FUNC13();

	/*
	 * Need an EState for evaluation of index expressions and partial-index
	 * predicates.  Also a slot to hold the current tuple.
	 */
	estate = FUNC1();
	econtext = FUNC8(estate);
	slot = FUNC19(heapRelation, NULL);

	/* Arrange for econtext's scan tuple to be the tuple under test */
	econtext->ecxt_scantuple = slot;

	/* Set up execution state for predicate, if any. */
	predicate = FUNC3(indexInfo->ii_Predicate, estate);

	/*
	 * Scan all live tuples in the base relation.
	 */
	snapshot = FUNC10(FUNC7());
	scan = FUNC16(heapRelation,	/* relation */
								 snapshot,	/* snapshot */
								 0, /* number of keys */
								 NULL,	/* scan key */
								 true,	/* buffer access strategy OK */
								 true); /* syncscan OK */

	while (FUNC18(scan, ForwardScanDirection, slot))
	{
		FUNC0();

		/*
		 * In a partial index, ignore tuples that don't satisfy the predicate.
		 */
		if (predicate != NULL)
		{
			if (!FUNC4(predicate, econtext))
				continue;
		}

		/*
		 * Extract index column values, including computing expressions.
		 */
		FUNC5(indexInfo,
					   slot,
					   estate,
					   values,
					   isnull);

		/*
		 * Check that this tuple has no conflicts.
		 */
		FUNC15(heapRelation,
								   indexRelation, indexInfo,
								   &(slot->tts_tid), values, isnull,
								   estate, true);

		FUNC9(econtext->ecxt_per_tuple_memory);
	}

	FUNC17(scan);
	FUNC14(snapshot);

	FUNC2(slot);

	FUNC6(estate);

	/* These may have been pointing to the now-gone estate */
	indexInfo->ii_ExpressionsState = NIL;
	indexInfo->ii_PredicateState = NULL;
}