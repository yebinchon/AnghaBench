#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* storeRes_func ) (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int,int,int,int /*<<< orphan*/ *) ;
struct TYPE_18__ {scalar_t__ norderbys; int recheck; double* distances; int recheckDistances; scalar_t__ leafValue; int /*<<< orphan*/  leafDatum; int /*<<< orphan*/  returnData; int /*<<< orphan*/  level; int /*<<< orphan*/  traversalValue; int /*<<< orphan*/  reconstructedValue; int /*<<< orphan*/  orderbys; int /*<<< orphan*/  nkeys; int /*<<< orphan*/  scankeys; } ;
typedef  TYPE_2__ spgLeafConsistentOut ;
typedef  TYPE_2__ spgLeafConsistentIn ;
struct TYPE_20__ {int /*<<< orphan*/  heapPtr; } ;
struct TYPE_19__ {int /*<<< orphan*/  level; int /*<<< orphan*/  traversalValue; int /*<<< orphan*/  value; } ;
struct TYPE_17__ {int searchNulls; scalar_t__ numberOfNonNullOrderBys; int /*<<< orphan*/  traversalCxt; int /*<<< orphan*/  indexCollation; int /*<<< orphan*/  leafConsistentFn; int /*<<< orphan*/  state; int /*<<< orphan*/  want_itup; int /*<<< orphan*/  orderByData; int /*<<< orphan*/  numberOfKeys; int /*<<< orphan*/  keyData; int /*<<< orphan*/  tempCxt; } ;
typedef  TYPE_4__ SpGistSearchItem ;
typedef  TYPE_1__* SpGistScanOpaque ;
typedef  TYPE_6__* SpGistLeafTuple ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  scalar_t__ Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_4__*) ; 
 TYPE_4__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int,int,int,double*) ; 

__attribute__((used)) static bool
FUNC8(SpGistScanOpaque so, SpGistSearchItem *item,
			SpGistLeafTuple leafTuple, bool isnull,
			bool *reportedSome, storeRes_func storeRes)
{
	Datum		leafValue;
	double	   *distances;
	bool		result;
	bool		recheck;
	bool		recheckDistances;

	if (isnull)
	{
		/* Should not have arrived on a nulls page unless nulls are wanted */
		FUNC0(so->searchNulls);
		leafValue = (Datum) 0;
		distances = NULL;
		recheck = false;
		recheckDistances = false;
		result = true;
	}
	else
	{
		spgLeafConsistentIn in;
		spgLeafConsistentOut out;

		/* use temp context for calling leaf_consistent */
		MemoryContext oldCxt = FUNC3(so->tempCxt);

		in.scankeys = so->keyData;
		in.nkeys = so->numberOfKeys;
		in.orderbys = so->orderByData;
		in.norderbys = so->numberOfNonNullOrderBys;
		in.reconstructedValue = item->value;
		in.traversalValue = item->traversalValue;
		in.level = item->level;
		in.returnData = so->want_itup;
		in.leafDatum = FUNC5(leafTuple, &so->state);

		out.leafValue = (Datum) 0;
		out.recheck = false;
		out.distances = NULL;
		out.recheckDistances = false;

		result = FUNC1(FUNC2(&so->leafConsistentFn,
												so->indexCollation,
												FUNC4(&in),
												FUNC4(&out)));
		recheck = out.recheck;
		recheckDistances = out.recheckDistances;
		leafValue = out.leafValue;
		distances = out.distances;

		FUNC3(oldCxt);
	}

	if (result)
	{
		/* item passes the scankeys */
		if (so->numberOfNonNullOrderBys > 0)
		{
			/* the scan is ordered -> add the item to the queue */
			MemoryContext oldCxt = FUNC3(so->traversalCxt);
			SpGistSearchItem *heapItem = FUNC7(so, item->level,
														&leafTuple->heapPtr,
														leafValue,
														recheck,
														recheckDistances,
														isnull,
														distances);

			FUNC6(so, heapItem);

			FUNC3(oldCxt);
		}
		else
		{
			/* non-ordered scan, so report the item right away */
			FUNC0(!recheckDistances);
			storeRes(so, &leafTuple->heapPtr, leafValue, isnull,
					 recheck, false, NULL);
			*reportedSome = true;
		}
	}

	return result;
}