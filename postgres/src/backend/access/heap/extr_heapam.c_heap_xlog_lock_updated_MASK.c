#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flags; scalar_t__ offnum; int /*<<< orphan*/  xmax; int /*<<< orphan*/  infobits_set; } ;
typedef  TYPE_1__ xl_heap_lock_updated ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int t_infomask; int /*<<< orphan*/  t_infomask2; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemId ;
typedef  TYPE_3__* HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEAP_KEYS_UPDATED ; 
 int HEAP_MOVED ; 
 int HEAP_XMAX_BITS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VISIBILITYMAP_ALL_FROZEN ; 
 int XLH_LOCK_ALL_FROZEN_CLEARED ; 
 scalar_t__ FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC20(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_heap_lock_updated *xlrec;
	Buffer		buffer;
	Page		page;
	OffsetNumber offnum;
	ItemId		lp = NULL;
	HeapTupleHeader htup;

	xlrec = (xl_heap_lock_updated *) FUNC15(record);

	/*
	 * The visibility map may need to be fixed even if the heap page is
	 * already up-to-date.
	 */
	if (xlrec->flags & XLH_LOCK_ALL_FROZEN_CLEARED)
	{
		RelFileNode rnode;
		Buffer		vmbuffer = InvalidBuffer;
		BlockNumber block;
		Relation	reln;

		FUNC14(record, 0, &rnode, NULL, &block);
		reln = FUNC2(rnode);

		FUNC19(reln, block, &vmbuffer);
		FUNC18(reln, block, vmbuffer, VISIBILITYMAP_ALL_FROZEN);

		FUNC11(vmbuffer);
		FUNC3(reln);
	}

	if (FUNC13(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		page = FUNC0(buffer);

		offnum = xlrec->offnum;
		if (FUNC9(page) >= offnum)
			lp = FUNC8(page, offnum);

		if (FUNC9(page) < offnum || !FUNC5(lp))
			FUNC16(PANIC, "invalid lp");

		htup = (HeapTupleHeader) FUNC7(page, lp);

		htup->t_infomask &= ~(HEAP_XMAX_BITS | HEAP_MOVED);
		htup->t_infomask2 &= ~HEAP_KEYS_UPDATED;
		FUNC17(xlrec->infobits_set, &htup->t_infomask,
								   &htup->t_infomask2);
		FUNC4(htup, xlrec->xmax);

		FUNC10(page, lsn);
		FUNC6(buffer);
	}
	if (FUNC1(buffer))
		FUNC12(buffer);
}