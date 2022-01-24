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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MaxOffsetNumber ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(Relation rel, Buffer buffer, Relation heapRel)
{
	OffsetNumber deletable[MaxOffsetNumber];
	int			ndeletable = 0;
	OffsetNumber offnum,
				minoff,
				maxoff;
	Page		page = FUNC1(buffer);
	BTPageOpaque opaque = (BTPageOpaque) FUNC8(page);

	FUNC0(FUNC5(opaque));

	/*
	 * Scan over all items to see which ones need to be deleted according to
	 * LP_DEAD flags.
	 */
	minoff = FUNC4(opaque);
	maxoff = FUNC7(page);
	for (offnum = minoff;
		 offnum <= maxoff;
		 offnum = FUNC3(offnum))
	{
		ItemId		itemId = FUNC6(page, offnum);

		if (FUNC2(itemId))
			deletable[ndeletable++] = offnum;
	}

	if (ndeletable > 0)
		FUNC9(rel, buffer, deletable, ndeletable, heapRel);

	/*
	 * Note: if we didn't find any LP_DEAD items, then the page's
	 * BTP_HAS_GARBAGE hint bit is falsely set.  We do not bother expending a
	 * separate write to clear it, however.  We will clear it when we split
	 * the page.
	 */
}