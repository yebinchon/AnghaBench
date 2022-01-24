#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_6__ {int bounds_valid; scalar_t__ low; scalar_t__ stricthigh; int /*<<< orphan*/  buf; TYPE_1__* itup_key; } ;
struct TYPE_5__ {int /*<<< orphan*/  nextkey; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  TYPE_1__* BTScanInsert ;
typedef  scalar_t__ BTPageOpaque ;
typedef  TYPE_2__* BTInsertState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* InvalidOffsetNumber ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 

OffsetNumber
FUNC8(Relation rel, BTInsertState insertstate)
{
	BTScanInsert key = insertstate->itup_key;
	Page		page;
	BTPageOpaque opaque;
	OffsetNumber low,
				high,
				stricthigh;
	int32		result,
				cmpval;

	page = FUNC1(insertstate->buf);
	opaque = (BTPageOpaque) FUNC5(page);

	FUNC0(FUNC3(opaque));
	FUNC0(!key->nextkey);

	if (!insertstate->bounds_valid)
	{
		/* Start new binary search */
		low = FUNC2(opaque);
		high = FUNC4(page);
	}
	else
	{
		/* Restore result of previous binary search against same page */
		low = insertstate->low;
		high = insertstate->stricthigh;
	}

	/* If there are no keys on the page, return the first available slot */
	if (FUNC7(high < low))
	{
		/* Caller can't reuse bounds */
		insertstate->low = InvalidOffsetNumber;
		insertstate->stricthigh = InvalidOffsetNumber;
		insertstate->bounds_valid = false;
		return low;
	}

	/*
	 * Binary search to find the first key on the page >= scan key. (nextkey
	 * is always false when inserting).
	 *
	 * The loop invariant is: all slots before 'low' are < scan key, all slots
	 * at or after 'high' are >= scan key.  'stricthigh' is > scan key, and is
	 * maintained to save additional search effort for caller.
	 *
	 * We can fall out when high == low.
	 */
	if (!insertstate->bounds_valid)
		high++;					/* establish the loop invariant for high */
	stricthigh = high;			/* high initially strictly higher */

	cmpval = 1;					/* !nextkey comparison value */

	while (high > low)
	{
		OffsetNumber mid = low + ((high - low) / 2);

		/* We have low <= mid < high, so mid points at a real slot */

		result = FUNC6(rel, key, page, mid);

		if (result >= cmpval)
			low = mid + 1;
		else
		{
			high = mid;
			if (result != 0)
				stricthigh = high;
		}
	}

	/*
	 * On a leaf page, a binary search always returns the first key >= scan
	 * key (at least in !nextkey case), which could be the last slot + 1. This
	 * is also the lower bound of cached search.
	 *
	 * stricthigh may also be the last slot + 1, which prevents caller from
	 * using bounds directly, but is still useful to us if we're called a
	 * second time with cached bounds (cached low will be < stricthigh when
	 * that happens).
	 */
	insertstate->low = low;
	insertstate->stricthigh = stricthigh;
	insertstate->bounds_valid = true;

	return low;
}