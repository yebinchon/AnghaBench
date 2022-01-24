#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  bt_blkno; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_1__ BrinTuple ;
typedef  int /*<<< orphan*/  BrinRevmap ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BRIN_EVACUATE_PAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC14(Relation idxRel, BlockNumber pagesPerRange,
				   BrinRevmap *revmap, Buffer buf)
{
	OffsetNumber off;
	OffsetNumber maxoff;
	Page		page;
	BrinTuple  *btup = NULL;
	Size		btupsz = 0;

	page = FUNC3(buf);

	FUNC0(FUNC2(page) & BRIN_EVACUATE_PAGE);

	maxoff = FUNC10(page);
	for (off = FirstOffsetNumber; off <= maxoff; off++)
	{
		BrinTuple  *tup;
		Size		sz;
		ItemId		lp;

		FUNC4();

		lp = FUNC9(page, off);
		if (FUNC6(lp))
		{
			sz = FUNC5(lp);
			tup = (BrinTuple *) FUNC8(page, lp);
			tup = FUNC12(tup, sz, btup, &btupsz);

			FUNC7(buf, BUFFER_LOCK_UNLOCK);

			if (!FUNC13(idxRel, pagesPerRange, revmap, tup->bt_blkno,
							   buf, off, tup, sz, tup, sz, false))
				off--;			/* retry */

			FUNC7(buf, BUFFER_LOCK_SHARE);

			/* It's possible that someone extended the revmap over this page */
			if (!FUNC1(page))
				break;
		}
	}

	FUNC11(buf);
}