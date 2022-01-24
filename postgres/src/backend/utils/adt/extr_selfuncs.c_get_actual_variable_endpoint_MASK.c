#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_7__ {int xs_want_itup; int /*<<< orphan*/  xs_itupdesc; int /*<<< orphan*/  xs_itup; scalar_t__ xs_recheck; } ;
typedef  int /*<<< orphan*/  SnapshotData ;
typedef  int /*<<< orphan*/  ScanKey ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int INDEX_MAX_KEYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RecentGlobalXmin ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC15(Relation heapRel,
							 Relation indexRel,
							 ScanDirection indexscandir,
							 ScanKey scankeys,
							 int16 typLen,
							 bool typByVal,
							 TupleTableSlot *tableslot,
							 MemoryContext outercontext,
							 Datum *endpointDatum)
{
	bool		have_data = false;
	SnapshotData SnapshotNonVacuumable;
	IndexScanDesc index_scan;
	Buffer		vmbuffer = InvalidBuffer;
	ItemPointer tid;
	Datum		values[INDEX_MAX_KEYS];
	bool		isnull[INDEX_MAX_KEYS];
	MemoryContext oldcontext;

	/*
	 * We use the index-only-scan machinery for this.  With mostly-static
	 * tables that's a win because it avoids a heap visit.  It's also a win
	 * for dynamic data, but the reason is less obvious; read on for details.
	 *
	 * In principle, we should scan the index with our current active
	 * snapshot, which is the best approximation we've got to what the query
	 * will see when executed.  But that won't be exact if a new snap is taken
	 * before running the query, and it can be very expensive if a lot of
	 * recently-dead or uncommitted rows exist at the beginning or end of the
	 * index (because we'll laboriously fetch each one and reject it).
	 * Instead, we use SnapshotNonVacuumable.  That will accept recently-dead
	 * and uncommitted rows as well as normal visible rows.  On the other
	 * hand, it will reject known-dead rows, and thus not give a bogus answer
	 * when the extreme value has been deleted (unless the deletion was quite
	 * recent); that case motivates not using SnapshotAny here.
	 *
	 * A crucial point here is that SnapshotNonVacuumable, with
	 * RecentGlobalXmin as horizon, yields the inverse of the condition that
	 * the indexscan will use to decide that index entries are killable (see
	 * heap_hot_search_buffer()).  Therefore, if the snapshot rejects a tuple
	 * (or more precisely, all tuples of a HOT chain) and we have to continue
	 * scanning past it, we know that the indexscan will mark that index entry
	 * killed.  That means that the next get_actual_variable_endpoint() call
	 * will not have to re-consider that index entry.  In this way we avoid
	 * repetitive work when this function is used a lot during planning.
	 *
	 * But using SnapshotNonVacuumable creates a hazard of its own.  In a
	 * recently-created index, some index entries may point at "broken" HOT
	 * chains in which not all the tuple versions contain data matching the
	 * index entry.  The live tuple version(s) certainly do match the index,
	 * but SnapshotNonVacuumable can accept recently-dead tuple versions that
	 * don't match.  Hence, if we took data from the selected heap tuple, we
	 * might get a bogus answer that's not close to the index extremal value,
	 * or could even be NULL.  We avoid this hazard because we take the data
	 * from the index entry not the heap.
	 */
	FUNC1(SnapshotNonVacuumable, RecentGlobalXmin);

	index_scan = FUNC9(heapRel, indexRel,
								 &SnapshotNonVacuumable,
								 1, 0);
	/* Set it up for index-only scan */
	index_scan->xs_want_itup = true;
	FUNC14(index_scan, scankeys, 1, NULL, 0);

	/* Fetch first/next tuple in specified direction */
	while ((tid = FUNC13(index_scan, indexscandir)) != NULL)
	{
		if (!FUNC6(heapRel,
							FUNC2(tid),
							&vmbuffer))
		{
			/* Rats, we have to visit the heap to check visibility */
			if (!FUNC12(index_scan, tableslot))
				continue;		/* no visible tuple, try next index entry */

			/* We don't actually need the heap tuple for anything */
			FUNC0(tableslot);

			/*
			 * We don't care whether there's more than one visible tuple in
			 * the HOT chain; if any are visible, that's good enough.
			 */
		}

		/*
		 * We expect that btree will return data in IndexTuple not HeapTuple
		 * format.  It's not lossy either.
		 */
		if (!index_scan->xs_itup)
			FUNC8(ERROR, "no data returned for index-only scan");
		if (index_scan->xs_recheck)
			FUNC8(ERROR, "unexpected recheck indication from btree");

		/* OK to deconstruct the index tuple */
		FUNC10(index_scan->xs_itup,
						   index_scan->xs_itupdesc,
						   values, isnull);

		/* Shouldn't have got a null, but be careful */
		if (isnull[0])
			FUNC8(ERROR, "found unexpected null value in index \"%s\"",
				 FUNC4(indexRel));

		/* Copy the index column value out to caller's context */
		oldcontext = FUNC3(outercontext);
		*endpointDatum = FUNC7(values[0], typByVal, typLen);
		FUNC3(oldcontext);
		have_data = true;
		break;
	}

	if (vmbuffer != InvalidBuffer)
		FUNC5(vmbuffer);
	FUNC11(index_scan);

	return have_data;
}