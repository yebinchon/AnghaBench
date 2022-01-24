#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int int32 ;
struct TYPE_4__ {scalar_t__ nextkey; int /*<<< orphan*/ * scantid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_1__* BTScanInsert ;
typedef  scalar_t__ BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static OffsetNumber
FUNC9(Relation rel,
			BTScanInsert key,
			Buffer buf)
{
	Page		page;
	BTPageOpaque opaque;
	OffsetNumber low,
				high;
	int32		result,
				cmpval;

	page = FUNC1(buf);
	opaque = (BTPageOpaque) FUNC6(page);

	/* Requesting nextkey semantics while using scantid seems nonsensical */
	FUNC0(!key->nextkey || key->scantid == NULL);
	/* scantid-set callers must use _bt_binsrch_insert() on leaf pages */
	FUNC0(!FUNC4(opaque) || key->scantid == NULL);

	low = FUNC3(opaque);
	high = FUNC5(page);

	/*
	 * If there are no keys on the page, return the first available slot. Note
	 * this covers two cases: the page is really empty (no keys), or it
	 * contains only a high key.  The latter case is possible after vacuuming.
	 * This can never happen on an internal page, however, since they are
	 * never empty (an internal page must have children).
	 */
	if (FUNC8(high < low))
		return low;

	/*
	 * Binary search to find the first key on the page >= scan key, or first
	 * key > scankey when nextkey is true.
	 *
	 * For nextkey=false (cmpval=1), the loop invariant is: all slots before
	 * 'low' are < scan key, all slots at or after 'high' are >= scan key.
	 *
	 * For nextkey=true (cmpval=0), the loop invariant is: all slots before
	 * 'low' are <= scan key, all slots at or after 'high' are > scan key.
	 *
	 * We can fall out when high == low.
	 */
	high++;						/* establish the loop invariant for high */

	cmpval = key->nextkey ? 0 : 1;	/* select comparison value */

	while (high > low)
	{
		OffsetNumber mid = low + ((high - low) / 2);

		/* We have low <= mid < high, so mid points at a real slot */

		result = FUNC7(rel, key, page, mid);

		if (result >= cmpval)
			low = mid + 1;
		else
			high = mid;
	}

	/*
	 * At this point we have high == low, but be careful: they could point
	 * past the last slot on the page.
	 *
	 * On a leaf page, we always return the first key >= scan key (resp. >
	 * scan key), which could be the last slot + 1.
	 */
	if (FUNC4(opaque))
		return low;

	/*
	 * On a non-leaf page, return the last key < scan key (resp. <= scan key).
	 * There must be one if _bt_compare() is playing by the rules.
	 */
	FUNC0(low > FUNC3(opaque));

	return FUNC2(low);
}