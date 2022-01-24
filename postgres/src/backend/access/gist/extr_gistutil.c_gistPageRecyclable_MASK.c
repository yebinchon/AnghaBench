#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

bool
FUNC5(Page page)
{
	if (FUNC4(page))
		return true;
	if (FUNC3(page))
	{
		/*
		 * The page was deleted, but when? If it was just deleted, a scan
		 * might have seen the downlink to it, and will read the page later.
		 * As long as that can happen, we must keep the deleted page around as
		 * a tombstone.
		 *
		 * Compare the deletion XID with RecentGlobalXmin. If deleteXid <
		 * RecentGlobalXmin, then no scan that's still in progress could have
		 * seen its downlink, and we can recycle it.
		 */
		FullTransactionId deletexid_full = FUNC2(page);
		FullTransactionId recentxmin_full = FUNC1();

		if (FUNC0(deletexid_full, recentxmin_full))
			return true;
	}
	return false;
}