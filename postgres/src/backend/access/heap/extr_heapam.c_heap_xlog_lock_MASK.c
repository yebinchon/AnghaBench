#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int flags; int /*<<< orphan*/  locking_xid; int /*<<< orphan*/  infobits_set; int /*<<< orphan*/  offnum; } ;
typedef  TYPE_1__ xl_heap_lock ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_12__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_13__ {int t_infomask; int /*<<< orphan*/  t_ctid; int /*<<< orphan*/  t_infomask2; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemId ;
typedef  TYPE_3__* HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FirstCommandId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEAP_KEYS_UPDATED ; 
 int HEAP_MOVED ; 
 int HEAP_XMAX_BITS ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VISIBILITYMAP_ALL_FROZEN ; 
 int XLH_LOCK_ALL_FROZEN_CLEARED ; 
 scalar_t__ FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC25(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_heap_lock *xlrec = (xl_heap_lock *) FUNC20(record);
	Buffer		buffer;
	Page		page;
	OffsetNumber offnum;
	ItemId		lp = NULL;
	HeapTupleHeader htup;

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

		FUNC19(record, 0, &rnode, NULL, &block);
		reln = FUNC3(rnode);

		FUNC24(reln, block, &vmbuffer);
		FUNC23(reln, block, vmbuffer, VISIBILITYMAP_ALL_FROZEN);

		FUNC16(vmbuffer);
		FUNC4(reln);
	}

	if (FUNC18(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		page = (Page) FUNC1(buffer);

		offnum = xlrec->offnum;
		if (FUNC14(page) >= offnum)
			lp = FUNC13(page, offnum);

		if (FUNC14(page) < offnum || !FUNC9(lp))
			FUNC21(PANIC, "invalid lp");

		htup = (HeapTupleHeader) FUNC12(page, lp);

		htup->t_infomask &= ~(HEAP_XMAX_BITS | HEAP_MOVED);
		htup->t_infomask2 &= ~HEAP_KEYS_UPDATED;
		FUNC22(xlrec->infobits_set, &htup->t_infomask,
								   &htup->t_infomask2);

		/*
		 * Clear relevant update flags, but only if the modified infomask says
		 * there's no update.
		 */
		if (FUNC5(htup->t_infomask))
		{
			FUNC6(htup);
			/* Make sure there is no forward chain link in t_ctid */
			FUNC10(&htup->t_ctid,
						   FUNC0(buffer),
						   offnum);
		}
		FUNC8(htup, xlrec->locking_xid);
		FUNC7(htup, FirstCommandId, false);
		FUNC15(page, lsn);
		FUNC11(buffer);
	}
	if (FUNC2(buffer))
		FUNC17(buffer);
}