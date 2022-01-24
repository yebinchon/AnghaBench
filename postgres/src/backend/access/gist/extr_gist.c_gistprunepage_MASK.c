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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int MaxIndexTuplesPerPage ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static void
FUNC17(Relation rel, Page page, Buffer buffer, Relation heapRel)
{
	OffsetNumber deletable[MaxIndexTuplesPerPage];
	int			ndeletable = 0;
	OffsetNumber offnum,
				maxoff;
	TransactionId latestRemovedXid = InvalidTransactionId;

	FUNC0(FUNC3(page));

	/*
	 * Scan over all items to see which ones need to be deleted according to
	 * LP_DEAD flags.
	 */
	maxoff = FUNC8(page);
	for (offnum = FirstOffsetNumber;
		 offnum <= maxoff;
		 offnum = FUNC6(offnum))
	{
		ItemId		itemId = FUNC7(page, offnum);

		if (FUNC4(itemId))
			deletable[ndeletable++] = offnum;
	}

	if (FUNC13() && FUNC11(rel))
		latestRemovedXid =
			FUNC16(rel, heapRel, buffer,
												 deletable, ndeletable);

	if (ndeletable > 0)
	{
		FUNC12();

		FUNC9(page, deletable, ndeletable);

		/*
		 * Mark the page as not containing any LP_DEAD items.  This is not
		 * certainly true (there might be some that have recently been marked,
		 * but weren't included in our target-item list), but it will almost
		 * always be true and it doesn't seem worth an additional page scan to
		 * check it. Remember that F_HAS_GARBAGE is only a hint anyway.
		 */
		FUNC2(page);

		FUNC5(buffer);

		/* XLOG stuff */
		if (FUNC11(rel))
		{
			XLogRecPtr	recptr;

			recptr = FUNC15(buffer,
									deletable, ndeletable,
									latestRemovedXid);

			FUNC10(page, recptr);
		}
		else
			FUNC10(page, FUNC14(rel));

		FUNC1();
	}

	/*
	 * Note: if we didn't find any LP_DEAD items, then the page's
	 * F_HAS_GARBAGE hint bit is falsely set.  We do not bother expending a
	 * separate write to clear it, however.  We will clear it when we split
	 * the page.
	 */
}