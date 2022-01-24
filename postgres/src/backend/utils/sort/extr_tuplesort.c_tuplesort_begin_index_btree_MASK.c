#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
struct TYPE_11__ {int nKeys; int abbrevNext; int enforceUnique; TYPE_2__* sortKeys; void* indexRel; void* heapRel; int /*<<< orphan*/  readtup; int /*<<< orphan*/  writetup; int /*<<< orphan*/  copytup; int /*<<< orphan*/  comparetup; int /*<<< orphan*/  sortcontext; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_14__ {TYPE_3__* scankeys; } ;
struct TYPE_13__ {int sk_flags; scalar_t__ sk_attno; int /*<<< orphan*/  sk_collation; } ;
struct TYPE_12__ {int ssup_nulls_first; scalar_t__ ssup_attno; int abbreviate; int /*<<< orphan*/  ssup_collation; int /*<<< orphan*/  ssup_cxt; } ;
typedef  int /*<<< orphan*/  SortSupportData ;
typedef  TYPE_2__* SortSupport ;
typedef  int /*<<< orphan*/  SortCoordinate ;
typedef  TYPE_3__* ScanKey ;
typedef  void* Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_4__* BTScanInsert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTGreaterStrategyNumber ; 
 int /*<<< orphan*/  BTLessStrategyNumber ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  INDEX_SORT ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int SK_BT_DESC ; 
 int SK_BT_NULLS_FIRST ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  comparetup_index_btree ; 
 int /*<<< orphan*/  copytup_index ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char,int,char) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  readtup_index ; 
 scalar_t__ trace_sort ; 
 TYPE_1__* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  writetup_index ; 

Tuplesortstate *
FUNC11(Relation heapRel,
							Relation indexRel,
							bool enforceUnique,
							int workMem,
							SortCoordinate coordinate,
							bool randomAccess)
{
	Tuplesortstate *state = FUNC10(workMem, coordinate,
												   randomAccess);
	BTScanInsert indexScanKey;
	MemoryContext oldcontext;
	int			i;

	oldcontext = FUNC2(state->sortcontext);

#ifdef TRACE_SORT
	if (trace_sort)
		elog(LOG,
			 "begin index sort: unique = %c, workMem = %d, randomAccess = %c",
			 enforceUnique ? 't' : 'f',
			 workMem, randomAccess ? 't' : 'f');
#endif

	state->nKeys = FUNC1(indexRel);

	FUNC5(INDEX_SORT,
								enforceUnique,
								state->nKeys,
								workMem,
								randomAccess,
								FUNC3(state));

	state->comparetup = comparetup_index_btree;
	state->copytup = copytup_index;
	state->writetup = writetup_index;
	state->readtup = readtup_index;
	state->abbrevNext = 10;

	state->heapRel = heapRel;
	state->indexRel = indexRel;
	state->enforceUnique = enforceUnique;

	indexScanKey = FUNC6(indexRel, NULL);

	/* Prepare SortSupport data for each column */
	state->sortKeys = (SortSupport) FUNC8(state->nKeys *
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

		FUNC0(sortKey->ssup_attno != 0);

		strategy = (scanKey->sk_flags & SK_BT_DESC) != 0 ?
			BTGreaterStrategyNumber : BTLessStrategyNumber;

		FUNC4(indexRel, strategy, sortKey);
	}

	FUNC9(indexScanKey);

	FUNC2(oldcontext);

	return state;
}