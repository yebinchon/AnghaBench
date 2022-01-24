#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int int16 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_21__ {int heapkeyspace; } ;
struct TYPE_20__ {int t_info; int /*<<< orphan*/  t_tid; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_1__* IndexTuple ;
typedef  TYPE_2__* BTScanInsert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int INDEX_SIZE_MASK ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,TYPE_2__*) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 

IndexTuple
FUNC19(Relation rel, IndexTuple lastleft, IndexTuple firstright,
			 BTScanInsert itup_key)
{
	TupleDesc	itupdesc = FUNC13(rel);
	int16		natts = FUNC4(rel);
	int16		nkeyatts = FUNC5(rel);
	int			keepnatts;
	IndexTuple	pivot;
	ItemPointer pivotheaptid;
	Size		newsize;

	/*
	 * We should only ever truncate leaf index tuples.  It's never okay to
	 * truncate a second time.
	 */
	FUNC0(FUNC1(lastleft, rel) == natts);
	FUNC0(FUNC1(firstright, rel) == natts);

	/* Determine how many attributes must be kept in truncated tuple */
	keepnatts = FUNC14(rel, lastleft, firstright, itup_key);

#ifdef DEBUG_NO_TRUNCATE
	/* Force truncation to be ineffective for testing purposes */
	keepnatts = nkeyatts + 1;
#endif

	if (keepnatts <= natts)
	{
		IndexTuple	tidpivot;

		pivot = FUNC15(itupdesc, firstright, keepnatts);

		/*
		 * If there is a distinguishing key attribute within new pivot tuple,
		 * there is no need to add an explicit heap TID attribute
		 */
		if (keepnatts <= nkeyatts)
		{
			FUNC3(pivot, keepnatts);
			return pivot;
		}

		/*
		 * Only truncation of non-key attributes was possible, since key
		 * attributes are all equal.  It's necessary to add a heap TID
		 * attribute to the new pivot tuple.
		 */
		FUNC0(natts != nkeyatts);
		newsize = FUNC6(pivot) + FUNC11(sizeof(ItemPointerData));
		tidpivot = FUNC17(newsize);
		FUNC16(tidpivot, pivot, FUNC6(pivot));
		/* cannot leak memory here */
		FUNC18(pivot);
		pivot = tidpivot;
	}
	else
	{
		/*
		 * No truncation was possible, since key attributes are all equal.
		 * It's necessary to add a heap TID attribute to the new pivot tuple.
		 */
		FUNC0(natts == nkeyatts);
		newsize = FUNC6(firstright) + FUNC11(sizeof(ItemPointerData));
		pivot = FUNC17(newsize);
		FUNC16(pivot, firstright, FUNC6(firstright));
	}

	/*
	 * We have to use heap TID as a unique-ifier in the new pivot tuple, since
	 * no non-TID key attribute in the right item readily distinguishes the
	 * right side of the split from the left side.  Use enlarged space that
	 * holds a copy of first right tuple; place a heap TID value within the
	 * extra space that remains at the end.
	 *
	 * nbtree conceptualizes this case as an inability to truncate away any
	 * key attribute.  We must use an alternative representation of heap TID
	 * within pivots because heap TID is only treated as an attribute within
	 * nbtree (e.g., there is no pg_attribute entry).
	 */
	FUNC0(itup_key->heapkeyspace);
	pivot->t_info &= ~INDEX_SIZE_MASK;
	pivot->t_info |= newsize;

	/*
	 * Lehman & Yao use lastleft as the leaf high key in all cases, but don't
	 * consider suffix truncation.  It seems like a good idea to follow that
	 * example in cases where no truncation takes place -- use lastleft's heap
	 * TID.  (This is also the closest value to negative infinity that's
	 * legally usable.)
	 */
	pivotheaptid = (ItemPointer) ((char *) pivot + newsize -
								  sizeof(ItemPointerData));
	FUNC8(&lastleft->t_tid, pivotheaptid);

	/*
	 * Lehman and Yao require that the downlink to the right page, which is to
	 * be inserted into the parent page in the second phase of a page split be
	 * a strict lower bound on items on the right page, and a non-strict upper
	 * bound for items on the left page.  Assert that heap TIDs follow these
	 * invariants, since a heap TID value is apparently needed as a
	 * tiebreaker.
	 */
#ifndef DEBUG_NO_TRUNCATE
	FUNC0(FUNC7(&lastleft->t_tid, &firstright->t_tid) < 0);
	FUNC0(FUNC7(pivotheaptid, &lastleft->t_tid) >= 0);
	FUNC0(FUNC7(pivotheaptid, &firstright->t_tid) < 0);
#else

	/*
	 * Those invariants aren't guaranteed to hold for lastleft + firstright
	 * heap TID attribute values when they're considered here only because
	 * DEBUG_NO_TRUNCATE is defined (a heap TID is probably not actually
	 * needed as a tiebreaker).  DEBUG_NO_TRUNCATE must therefore use a heap
	 * TID value that always works as a strict lower bound for items to the
	 * right.  In particular, it must avoid using firstright's leading key
	 * attribute values along with lastleft's heap TID value when lastleft's
	 * TID happens to be greater than firstright's TID.
	 */
	ItemPointerCopy(&firstright->t_tid, pivotheaptid);

	/*
	 * Pivot heap TID should never be fully equal to firstright.  Note that
	 * the pivot heap TID will still end up equal to lastleft's heap TID when
	 * that's the only usable value.
	 */
	ItemPointerSetOffsetNumber(pivotheaptid,
							   OffsetNumberPrev(ItemPointerGetOffsetNumber(pivotheaptid)));
	Assert(ItemPointerCompare(pivotheaptid, &firstright->t_tid) < 0);
#endif

	FUNC3(pivot, nkeyatts);
	FUNC2(pivot);

	return pivot;
}