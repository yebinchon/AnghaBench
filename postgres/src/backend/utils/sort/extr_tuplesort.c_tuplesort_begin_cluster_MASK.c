#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_20__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_24__ {int nKeys; int abbrevNext; TYPE_3__* sortKeys; int /*<<< orphan*/  estate; TYPE_20__* indexInfo; int /*<<< orphan*/  tupDesc; int /*<<< orphan*/  readtup; int /*<<< orphan*/  writetup; int /*<<< orphan*/  copytup; int /*<<< orphan*/  comparetup; int /*<<< orphan*/  sortcontext; } ;
typedef  TYPE_2__ Tuplesortstate ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_29__ {TYPE_4__* scankeys; } ;
struct TYPE_28__ {int /*<<< orphan*/ * ecxt_scantuple; } ;
struct TYPE_27__ {TYPE_1__* rd_rel; } ;
struct TYPE_26__ {int sk_flags; scalar_t__ sk_attno; int /*<<< orphan*/  sk_collation; } ;
struct TYPE_25__ {int ssup_nulls_first; scalar_t__ ssup_attno; int abbreviate; int /*<<< orphan*/  ssup_collation; int /*<<< orphan*/  ssup_cxt; } ;
struct TYPE_23__ {int /*<<< orphan*/ * ii_Expressions; } ;
struct TYPE_22__ {scalar_t__ relam; } ;
typedef  int /*<<< orphan*/  SortSupportData ;
typedef  TYPE_3__* SortSupport ;
typedef  int /*<<< orphan*/  SortCoordinate ;
typedef  TYPE_4__* ScanKey ;
typedef  TYPE_5__* Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_6__ ExprContext ;
typedef  TYPE_7__* BTScanInsert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  BTGreaterStrategyNumber ; 
 int /*<<< orphan*/  BTLessStrategyNumber ; 
 scalar_t__ BTREE_AM_OID ; 
 TYPE_20__* FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  CLUSTER_SORT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int SK_BT_DESC ; 
 int SK_BT_NULLS_FIRST ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TTSOpsHeapTuple ; 
 TYPE_7__* FUNC12 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  comparetup_cluster ; 
 int /*<<< orphan*/  copytup_cluster ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*) ; 
 int /*<<< orphan*/  readtup_cluster ; 
 scalar_t__ trace_sort ; 
 TYPE_2__* FUNC16 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  writetup_cluster ; 

Tuplesortstate *
FUNC17(TupleDesc tupDesc,
						Relation indexRel,
						int workMem,
						SortCoordinate coordinate, bool randomAccess)
{
	Tuplesortstate *state = FUNC16(workMem, coordinate,
												   randomAccess);
	BTScanInsert indexScanKey;
	MemoryContext oldcontext;
	int			i;

	FUNC0(indexRel->rd_rel->relam == BTREE_AM_OID);

	oldcontext = FUNC7(state->sortcontext);

#ifdef TRACE_SORT
	if (trace_sort)
		elog(LOG,
			 "begin tuple sort: nkeys = %d, workMem = %d, randomAccess = %c",
			 RelationGetNumberOfAttributes(indexRel),
			 workMem, randomAccess ? 't' : 'f');
#endif

	state->nKeys = FUNC5(indexRel);

	FUNC11(CLUSTER_SORT,
								false,	/* no unique check */
								state->nKeys,
								workMem,
								randomAccess,
								FUNC8(state));

	state->comparetup = comparetup_cluster;
	state->copytup = copytup_cluster;
	state->writetup = writetup_cluster;
	state->readtup = readtup_cluster;
	state->abbrevNext = 10;

	state->indexInfo = FUNC2(indexRel);

	state->tupDesc = tupDesc;	/* assume we need not copy tupDesc */

	indexScanKey = FUNC12(indexRel, NULL);

	if (state->indexInfo->ii_Expressions != NULL)
	{
		TupleTableSlot *slot;
		ExprContext *econtext;

		/*
		 * We will need to use FormIndexDatum to evaluate the index
		 * expressions.  To do that, we need an EState, as well as a
		 * TupleTableSlot to put the table tuples into.  The econtext's
		 * scantuple has to point to that slot, too.
		 */
		state->estate = FUNC3();
		slot = FUNC6(tupDesc, &TTSOpsHeapTuple);
		econtext = FUNC4(state->estate);
		econtext->ecxt_scantuple = slot;
	}

	/* Prepare SortSupport data for each column */
	state->sortKeys = (SortSupport) FUNC14(state->nKeys *
											sizeof(SortSupportData));

	for (i = 0; i < state->nKeys; i++)
	{
		SortSupport sortKey = state->sortKeys + i;
		ScanKey		scanKey = indexScanKey->scankeys + i;
		int16		strategy;

		sortKey->ssup_cxt = CurrentMemoryContext;
		sortKey->ssup_collation = scanKey->sk_collation;
		sortKey->ssup_nulls_first =
			(scanKey->sk_flags & SK_BT_NULLS_FIRST) != 0;
		sortKey->ssup_attno = scanKey->sk_attno;
		/* Convey if abbreviation optimization is applicable in principle */
		sortKey->abbreviate = (i == 0);

		FUNC1(sortKey->ssup_attno != 0);

		strategy = (scanKey->sk_flags & SK_BT_DESC) != 0 ?
			BTGreaterStrategyNumber : BTLessStrategyNumber;

		FUNC9(indexRel, strategy, sortKey);
	}

	FUNC15(indexScanKey);

	FUNC7(oldcontext);

	return state;
}