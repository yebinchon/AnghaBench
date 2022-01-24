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
struct TYPE_4__ {scalar_t__ btpo_cycleid; int /*<<< orphan*/  btpo_flags; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  TYPE_1__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  BTP_HAS_GARBAGE ; 
 int /*<<< orphan*/  BTP_SPLIT_END ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(char *pagedata, BlockNumber blkno)
{
	Page		page = (Page) pagedata;
	BTPageOpaque maskopaq;

	FUNC6(page);

	FUNC5(page);
	FUNC7(page);

	maskopaq = (BTPageOpaque) FUNC2(page);

	if (FUNC0(maskopaq))
	{
		/*
		 * Mask page content on a DELETED page since it will be re-initialized
		 * during replay. See btree_xlog_unlink_page() for details.
		 */
		FUNC4(page);
	}
	else if (FUNC1(maskopaq))
	{
		/*
		 * In btree leaf pages, it is possible to modify the LP_FLAGS without
		 * emitting any WAL record. Hence, mask the line pointer flags. See
		 * _bt_killitems(), _bt_check_unique() for details.
		 */
		FUNC3(page);
	}

	/*
	 * BTP_HAS_GARBAGE is just an un-logged hint bit. So, mask it. See
	 * _bt_killitems(), _bt_check_unique() for details.
	 */
	maskopaq->btpo_flags &= ~BTP_HAS_GARBAGE;

	/*
	 * During replay of a btree page split, we don't set the BTP_SPLIT_END
	 * flag of the right sibling and initialize the cycle_id to 0 for the same
	 * page. See btree_xlog_split() for details.
	 */
	maskopaq->btpo_flags &= ~BTP_SPLIT_END;
	maskopaq->btpo_cycleid = 0;
}