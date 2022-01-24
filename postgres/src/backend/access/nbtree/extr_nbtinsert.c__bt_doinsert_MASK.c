#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_17__ {scalar_t__ itemsz; int bounds_valid; void* buf; TYPE_2__* itup_key; TYPE_1__* itup; } ;
struct TYPE_16__ {int /*<<< orphan*/ * scantid; scalar_t__ heapkeyspace; int /*<<< orphan*/  anynullkeys; } ;
struct TYPE_15__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  IndexUniqueCheck ;
typedef  TYPE_1__* IndexTuple ;
typedef  void* Buffer ;
typedef  int /*<<< orphan*/ * BTStack ;
typedef  TYPE_2__* BTScanInsert ;
typedef  scalar_t__ BTPageOpaque ;
typedef  TYPE_3__ BTInsertStateData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ InvalidBlockNumber ; 
 void* InvalidBuffer ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIQUE_CHECK_EXISTING ; 
 int /*<<< orphan*/  UNIQUE_CHECK_NO ; 
 int /*<<< orphan*/  XLTW_InsertIndex ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,TYPE_2__*,void*,void*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC27 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC29 (int /*<<< orphan*/ ,TYPE_2__*,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 

bool
FUNC31(Relation rel, IndexTuple itup,
			 IndexUniqueCheck checkUnique, Relation heapRel)
{
	bool		is_unique = false;
	BTInsertStateData insertstate;
	BTScanInsert itup_key;
	BTStack		stack = NULL;
	Buffer		buf;
	bool		fastpath;
	bool		checkingunique = (checkUnique != UNIQUE_CHECK_NO);

	/* we need an insertion scan key to do our search, so build one */
	itup_key = FUNC27(rel, itup);

	if (checkingunique)
	{
		if (!itup_key->anynullkeys)
		{
			/* No (heapkeyspace) scantid until uniqueness established */
			itup_key->scantid = NULL;
		}
		else
		{
			/*
			 * Scan key for new tuple contains NULL key values.  Bypass
			 * checkingunique steps.  They are unnecessary because core code
			 * considers NULL unequal to every value, including NULL.
			 *
			 * This optimization avoids O(N^2) behavior within the
			 * _bt_findinsertloc() heapkeyspace path when a unique index has a
			 * large number of "duplicates" with NULL key values.
			 */
			checkingunique = false;
			/* Tuple is unique in the sense that core code cares about */
			FUNC0(checkUnique != UNIQUE_CHECK_EXISTING);
			is_unique = true;
		}
	}

	/*
	 * Fill in the BTInsertState working area, to track the current page and
	 * position within the page to insert on
	 */
	insertstate.itup = itup;
	/* PageAddItem will MAXALIGN(), but be consistent */
	insertstate.itemsz = FUNC5(FUNC4(itup));
	insertstate.itup_key = itup_key;
	insertstate.bounds_valid = false;
	insertstate.buf = InvalidBuffer;

	/*
	 * It's very common to have an index on an auto-incremented or
	 * monotonically increasing value. In such cases, every insertion happens
	 * towards the end of the index. We try to optimize that case by caching
	 * the right-most leaf of the index. If our cached block is still the
	 * rightmost leaf, has enough free space to accommodate a new entry and
	 * the insertion key is strictly greater than the first key in this page,
	 * then we can safely conclude that the new key will be inserted in the
	 * cached block. So we simply search within the cached block and insert
	 * the key at the appropriate location. We call it a fastpath.
	 *
	 * Testing has revealed, though, that the fastpath can result in increased
	 * contention on the exclusive-lock on the rightmost leaf page. So we
	 * conditionally check if the lock is available. If it's not available
	 * then we simply abandon the fastpath and take the regular path. This
	 * makes sense because unavailability of the lock also signals that some
	 * other backend might be concurrently inserting into the page, thus
	 * reducing our chances to finding an insertion place in this page.
	 */
top:
	fastpath = false;
	if (FUNC15(rel) != InvalidBlockNumber)
	{
		Page		page;
		BTPageOpaque lpageop;

		/*
		 * Conditionally acquire exclusive lock on the buffer before doing any
		 * checks. If we don't get the lock, we simply follow slowpath. If we
		 * do get the lock, this ensures that the index state cannot change,
		 * as far as the rightmost part of the index is concerned.
		 */
		buf = FUNC14(rel, FUNC15(rel));

		if (FUNC3(buf))
		{
			FUNC22(rel, buf);

			page = FUNC1(buf);

			lpageop = (BTPageOpaque) FUNC13(page);

			/*
			 * Check if the page is still the rightmost leaf page, has enough
			 * free space to accommodate the new tuple, and the insertion scan
			 * key is strictly greater than the first key on the page.
			 */
			if (FUNC9(lpageop) && FUNC10(lpageop) &&
				!FUNC7(lpageop) &&
				(FUNC11(page) > insertstate.itemsz) &&
				FUNC12(page) >= FUNC6(lpageop) &&
				FUNC23(rel, itup_key, page, FUNC6(lpageop)) > 0)
			{
				/*
				 * The right-most block should never have an incomplete split.
				 * But be paranoid and check for it anyway.
				 */
				FUNC0(!FUNC8(lpageop));
				fastpath = true;
			}
			else
			{
				FUNC28(rel, buf);

				/*
				 * Something did not work out. Just forget about the cached
				 * block and follow the normal path. It might be set again if
				 * the conditions are favourable.
				 */
				FUNC16(rel, InvalidBlockNumber);
			}
		}
		else
		{
			FUNC17(buf);

			/*
			 * If someone's holding a lock, it's likely to change anyway, so
			 * don't try again until we get an updated rightmost leaf.
			 */
			FUNC16(rel, InvalidBlockNumber);
		}
	}

	if (!fastpath)
	{
		/*
		 * Find the first page containing this key.  Buffer returned by
		 * _bt_search() is locked in exclusive mode.
		 */
		stack = FUNC29(rel, itup_key, &buf, BT_WRITE, NULL);
	}

	insertstate.buf = buf;
	buf = InvalidBuffer;		/* insertstate.buf now owns the buffer */

	/*
	 * If we're not allowing duplicates, make sure the key isn't already in
	 * the index.
	 *
	 * NOTE: obviously, _bt_check_unique can only detect keys that are already
	 * in the index; so it cannot defend against concurrent insertions of the
	 * same key.  We protect against that by means of holding a write lock on
	 * the first page the value could be on, with omitted/-inf value for the
	 * implicit heap TID tiebreaker attribute.  Any other would-be inserter of
	 * the same key must acquire a write lock on the same page, so only one
	 * would-be inserter can be making the check at one time.  Furthermore,
	 * once we are past the check we hold write locks continuously until we
	 * have performed our insertion, so no later inserter can fail to see our
	 * insertion.  (This requires some care in _bt_findinsertloc.)
	 *
	 * If we must wait for another xact, we release the lock while waiting,
	 * and then must start over completely.
	 *
	 * For a partial uniqueness check, we don't wait for the other xact. Just
	 * let the tuple in and return false for possibly non-unique, or true for
	 * definitely unique.
	 */
	if (checkingunique)
	{
		TransactionId xwait;
		uint32		speculativeToken;

		xwait = FUNC21(rel, &insertstate, heapRel, checkUnique,
								 &is_unique, &speculativeToken);

		if (FUNC19(xwait))
		{
			/* Have to wait for the other guy ... */
			FUNC28(rel, insertstate.buf);
			insertstate.buf = InvalidBuffer;

			/*
			 * If it's a speculative insertion, wait for it to finish (ie. to
			 * go ahead with the insertion, or kill the tuple).  Otherwise
			 * wait for the transaction to finish as usual.
			 */
			if (speculativeToken)
				FUNC18(xwait, speculativeToken);
			else
				FUNC20(xwait, rel, &itup->t_tid, XLTW_InsertIndex);

			/* start over... */
			if (stack)
				FUNC25(stack);
			goto top;
		}

		/* Uniqueness is established -- restore heap tid as scantid */
		if (itup_key->heapkeyspace)
			itup_key->scantid = &itup->t_tid;
	}

	if (checkUnique != UNIQUE_CHECK_EXISTING)
	{
		OffsetNumber newitemoff;

		/*
		 * The only conflict predicate locking cares about for indexes is when
		 * an index tuple insert conflicts with an existing lock.  We don't
		 * know the actual page we're going to insert on for sure just yet in
		 * checkingunique and !heapkeyspace cases, but it's okay to use the
		 * first page the value could be on (with scantid omitted) instead.
		 */
		FUNC2(rel, NULL, insertstate.buf);

		/*
		 * Do the insertion.  Note that insertstate contains cached binary
		 * search bounds established within _bt_check_unique when insertion is
		 * checkingunique.
		 */
		newitemoff = FUNC24(rel, &insertstate, checkingunique,
									   stack, heapRel);
		FUNC26(rel, itup_key, insertstate.buf, InvalidBuffer, stack,
					   itup, newitemoff, false);
	}
	else
	{
		/* just release the buffer */
		FUNC28(rel, insertstate.buf);
	}

	/* be tidy */
	if (stack)
		FUNC25(stack);
	FUNC30(itup_key);

	return is_unique;
}