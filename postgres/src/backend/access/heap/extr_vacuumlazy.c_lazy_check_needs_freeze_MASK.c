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
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FreezeLimit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MultiXactCutoff ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC10(Buffer buf, bool *hastup)
{
	Page		page = FUNC0(buf);
	OffsetNumber offnum,
				maxoff;
	HeapTupleHeader tupleheader;

	*hastup = false;

	/*
	 * New and empty pages, obviously, don't contain tuples. We could make
	 * sure that the page is registered in the FSM, but it doesn't seem worth
	 * waiting for a cleanup lock just for that, especially because it's
	 * likely that the pin holder will do so.
	 */
	if (FUNC8(page) || FUNC7(page))
		return false;

	maxoff = FUNC6(page);
	for (offnum = FirstOffsetNumber;
		 offnum <= maxoff;
		 offnum = FUNC3(offnum))
	{
		ItemId		itemid;

		itemid = FUNC5(page, offnum);

		/* this should match hastup test in count_nondeletable_pages() */
		if (FUNC2(itemid))
			*hastup = true;

		/* dead and redirect items never need freezing */
		if (!FUNC1(itemid))
			continue;

		tupleheader = (HeapTupleHeader) FUNC4(page, itemid);

		if (FUNC9(tupleheader, FreezeLimit,
									MultiXactCutoff, buf))
			return true;
	}							/* scan along page */

	return false;
}