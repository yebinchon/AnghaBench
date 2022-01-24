#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ itemsz; int bounds_valid; scalar_t__ low; scalar_t__ stricthigh; int /*<<< orphan*/  buf; int /*<<< orphan*/  itup; TYPE_1__* itup_key; } ;
struct TYPE_7__ {scalar_t__ heapkeyspace; int /*<<< orphan*/ * scantid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  BTStack ;
typedef  TYPE_1__* BTScanInsert ;
typedef  scalar_t__ BTPageOpaque ;
typedef  TYPE_2__* BTInsertState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_RANDOM_VALUE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  P_HIKEY ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 () ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static OffsetNumber
FUNC17(Relation rel,
				  BTInsertState insertstate,
				  bool checkingunique,
				  BTStack stack,
				  Relation heapRel)
{
	BTScanInsert itup_key = insertstate->itup_key;
	Page		page = FUNC2(insertstate->buf);
	BTPageOpaque lpageop;

	lpageop = (BTPageOpaque) FUNC9(page);

	/* Check 1/3 of a page restriction */
	if (FUNC16(insertstate->itemsz > FUNC1(page)))
		FUNC11(rel, heapRel, itup_key->heapkeyspace, page,
							 insertstate->itup);

	FUNC0(FUNC5(lpageop) && !FUNC4(lpageop));
	FUNC0(!insertstate->bounds_valid || checkingunique);
	FUNC0(!itup_key->heapkeyspace || itup_key->scantid != NULL);
	FUNC0(itup_key->heapkeyspace || itup_key->scantid == NULL);

	if (itup_key->heapkeyspace)
	{
		/*
		 * If we're inserting into a unique index, we may have to walk right
		 * through leaf pages to find the one leaf page that we must insert on
		 * to.
		 *
		 * This is needed for checkingunique callers because a scantid was not
		 * used when we called _bt_search().  scantid can only be set after
		 * _bt_check_unique() has checked for duplicates.  The buffer
		 * initially stored in insertstate->buf has the page where the first
		 * duplicate key might be found, which isn't always the page that new
		 * tuple belongs on.  The heap TID attribute for new tuple (scantid)
		 * could force us to insert on a sibling page, though that should be
		 * very rare in practice.
		 */
		if (checkingunique)
		{
			for (;;)
			{
				/*
				 * Does the new tuple belong on this page?
				 *
				 * The earlier _bt_check_unique() call may well have
				 * established a strict upper bound on the offset for the new
				 * item.  If it's not the last item of the page (i.e. if there
				 * is at least one tuple on the page that goes after the tuple
				 * we're inserting) then we know that the tuple belongs on
				 * this page.  We can skip the high key check.
				 */
				if (insertstate->bounds_valid &&
					insertstate->low <= insertstate->stricthigh &&
					insertstate->stricthigh <= FUNC8(page))
					break;

				/* Test '<=', not '!=', since scantid is set now */
				if (FUNC6(lpageop) ||
					FUNC12(rel, itup_key, page, P_HIKEY) <= 0)
					break;

				FUNC13(rel, insertstate, stack);
				/* Update local state after stepping right */
				page = FUNC2(insertstate->buf);
				lpageop = (BTPageOpaque) FUNC9(page);
			}
		}

		/*
		 * If the target page is full, see if we can obtain enough space by
		 * erasing LP_DEAD items
		 */
		if (FUNC7(page) < insertstate->itemsz &&
			FUNC3(lpageop))
		{
			FUNC14(rel, insertstate->buf, heapRel);
			insertstate->bounds_valid = false;
		}
	}
	else
	{
		/*----------
		 * This is a !heapkeyspace (version 2 or 3) index.  The current page
		 * is the first page that we could insert the new tuple to, but there
		 * may be other pages to the right that we could opt to use instead.
		 *
		 * If the new key is equal to one or more existing keys, we can
		 * legitimately place it anywhere in the series of equal keys.  In
		 * fact, if the new key is equal to the page's "high key" we can place
		 * it on the next page.  If it is equal to the high key, and there's
		 * not room to insert the new tuple on the current page without
		 * splitting, then we move right hoping to find more free space and
		 * avoid a split.
		 *
		 * Keep scanning right until we
		 *		(a) find a page with enough free space,
		 *		(b) reach the last page where the tuple can legally go, or
		 *		(c) get tired of searching.
		 * (c) is not flippant; it is important because if there are many
		 * pages' worth of equal keys, it's better to split one of the early
		 * pages than to scan all the way to the end of the run of equal keys
		 * on every insert.  We implement "get tired" as a random choice,
		 * since stopping after scanning a fixed number of pages wouldn't work
		 * well (we'd never reach the right-hand side of previously split
		 * pages).  The probability of moving right is set at 0.99, which may
		 * seem too high to change the behavior much, but it does an excellent
		 * job of preventing O(N^2) behavior with many equal keys.
		 *----------
		 */
		while (FUNC7(page) < insertstate->itemsz)
		{
			/*
			 * Before considering moving right, see if we can obtain enough
			 * space by erasing LP_DEAD items
			 */
			if (FUNC3(lpageop))
			{
				FUNC14(rel, insertstate->buf, heapRel);
				insertstate->bounds_valid = false;

				if (FUNC7(page) >= insertstate->itemsz)
					break;		/* OK, now we have enough space */
			}

			/*
			 * Nope, so check conditions (b) and (c) enumerated above
			 *
			 * The earlier _bt_check_unique() call may well have established a
			 * strict upper bound on the offset for the new item.  If it's not
			 * the last item of the page (i.e. if there is at least one tuple
			 * on the page that's greater than the tuple we're inserting to)
			 * then we know that the tuple belongs on this page.  We can skip
			 * the high key check.
			 */
			if (insertstate->bounds_valid &&
				insertstate->low <= insertstate->stricthigh &&
				insertstate->stricthigh <= FUNC8(page))
				break;

			if (FUNC6(lpageop) ||
				FUNC12(rel, itup_key, page, P_HIKEY) != 0 ||
				FUNC15() <= (MAX_RANDOM_VALUE / 100))
				break;

			FUNC13(rel, insertstate, stack);
			/* Update local state after stepping right */
			page = FUNC2(insertstate->buf);
			lpageop = (BTPageOpaque) FUNC9(page);
		}
	}

	/*
	 * We should now be on the correct page.  Find the offset within the page
	 * for the new tuple. (Possibly reusing earlier search bounds.)
	 */
	FUNC0(FUNC6(lpageop) ||
		   FUNC12(rel, itup_key, page, P_HIKEY) <= 0);

	return FUNC10(rel, insertstate);
}