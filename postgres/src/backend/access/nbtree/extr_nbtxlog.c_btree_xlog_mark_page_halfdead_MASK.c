#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  topparent; int /*<<< orphan*/  rightblk; int /*<<< orphan*/  leftblk; int /*<<< orphan*/  poffset; } ;
typedef  TYPE_2__ xl_btree_mark_page_halfdead ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_14__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_3__ XLogReaderState ;
struct TYPE_12__ {scalar_t__ level; } ;
struct TYPE_16__ {int btpo_flags; scalar_t__ btpo_cycleid; TYPE_1__ btpo; int /*<<< orphan*/  btpo_next; int /*<<< orphan*/  btpo_prev; } ;
struct TYPE_15__ {int t_info; } ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Item ;
typedef  TYPE_4__ IndexTupleData ;
typedef  scalar_t__ IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  TYPE_5__* BTPageOpaque ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int BTP_HALF_DEAD ; 
 int BTP_LEAF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_HIKEY ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC21(uint8 info, XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_btree_mark_page_halfdead *xlrec = (xl_btree_mark_page_halfdead *) FUNC18(record);
	Buffer		buffer;
	Page		page;
	BTPageOpaque pageop;
	IndexTupleData trunctuple;

	/*
	 * In normal operation, we would lock all the pages this WAL record
	 * touches before changing any of them.  In WAL replay, it should be okay
	 * to lock just one page at a time, since no concurrent index updates can
	 * be happening, and readers should not care whether they arrive at the
	 * target page or not (since it's surely empty).
	 */

	/* parent page */
	if (FUNC17(record, 1, &buffer) == BLK_NEEDS_REDO)
	{
		OffsetNumber poffset;
		ItemId		itemid;
		IndexTuple	itup;
		OffsetNumber nextoffset;
		BlockNumber rightsib;

		page = (Page) FUNC3(buffer);
		pageop = (BTPageOpaque) FUNC12(page);

		poffset = xlrec->poffset;

		nextoffset = FUNC8(poffset);
		itemid = FUNC11(page, nextoffset);
		itup = (IndexTuple) FUNC10(page, itemid);
		rightsib = FUNC0(itup);

		itemid = FUNC11(page, poffset);
		itup = (IndexTuple) FUNC10(page, itemid);
		FUNC1(itup, rightsib);
		nextoffset = FUNC8(poffset);
		FUNC13(page, nextoffset);

		FUNC14(page, lsn);
		FUNC6(buffer);
	}
	if (FUNC5(buffer))
		FUNC15(buffer);

	/* Rewrite the leaf page as a halfdead page */
	buffer = FUNC16(record, 0);
	page = (Page) FUNC3(buffer);

	FUNC19(page, FUNC4(buffer));
	pageop = (BTPageOpaque) FUNC12(page);

	pageop->btpo_prev = xlrec->leftblk;
	pageop->btpo_next = xlrec->rightblk;
	pageop->btpo.level = 0;
	pageop->btpo_flags = BTP_HALF_DEAD | BTP_LEAF;
	pageop->btpo_cycleid = 0;

	/*
	 * Construct a dummy hikey item that points to the next parent to be
	 * deleted (if any).
	 */
	FUNC7(&trunctuple, 0, sizeof(IndexTupleData));
	trunctuple.t_info = sizeof(IndexTupleData);
	FUNC2(&trunctuple, xlrec->topparent);

	if (FUNC9(page, (Item) &trunctuple, sizeof(IndexTupleData), P_HIKEY,
					false, false) == InvalidOffsetNumber)
		FUNC20(ERROR, "could not add dummy high key to half-dead page");

	FUNC14(page, lsn);
	FUNC6(buffer);
	FUNC15(buffer);
}