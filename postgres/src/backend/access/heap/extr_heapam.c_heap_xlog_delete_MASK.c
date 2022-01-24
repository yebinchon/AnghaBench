#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ offnum; int flags; int /*<<< orphan*/  xmax; int /*<<< orphan*/  infobits_set; } ;
typedef  TYPE_1__ xl_heap_delete ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_15__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_16__ {int t_infomask; int /*<<< orphan*/  t_ctid; int /*<<< orphan*/  t_infomask2; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/ * ItemId ;
typedef  TYPE_3__* HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FirstCommandId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HEAP_KEYS_UPDATED ; 
 int HEAP_MOVED ; 
 int HEAP_XMAX_BITS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VISIBILITYMAP_VALID_BITS ; 
 int XLH_DELETE_ALL_VISIBLE_CLEARED ; 
 int XLH_DELETE_IS_PARTITION_MOVE ; 
 int XLH_DELETE_IS_SUPER ; 
 scalar_t__ FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC29(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_heap_delete *xlrec = (xl_heap_delete *) FUNC23(record);
	Buffer		buffer;
	Page		page;
	ItemId		lp = NULL;
	HeapTupleHeader htup;
	BlockNumber blkno;
	RelFileNode target_node;
	ItemPointerData target_tid;

	FUNC22(record, 0, &target_node, NULL, &blkno);
	FUNC10(&target_tid, blkno);
	FUNC11(&target_tid, xlrec->offnum);

	/*
	 * The visibility map may need to be fixed even if the heap page is
	 * already up-to-date.
	 */
	if (xlrec->flags & XLH_DELETE_ALL_VISIBLE_CLEARED)
	{
		Relation	reln = FUNC2(target_node);
		Buffer		vmbuffer = InvalidBuffer;

		FUNC28(reln, blkno, &vmbuffer);
		FUNC27(reln, blkno, vmbuffer, VISIBILITYMAP_VALID_BITS);
		FUNC19(vmbuffer);
		FUNC3(reln);
	}

	if (FUNC21(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		page = FUNC0(buffer);

		if (FUNC16(page) >= xlrec->offnum)
			lp = FUNC15(page, xlrec->offnum);

		if (FUNC16(page) < xlrec->offnum || !FUNC9(lp))
			FUNC25(PANIC, "invalid lp");

		htup = (HeapTupleHeader) FUNC14(page, lp);

		htup->t_infomask &= ~(HEAP_XMAX_BITS | HEAP_MOVED);
		htup->t_infomask2 &= ~HEAP_KEYS_UPDATED;
		FUNC4(htup);
		FUNC26(xlrec->infobits_set,
								   &htup->t_infomask, &htup->t_infomask2);
		if (!(xlrec->flags & XLH_DELETE_IS_SUPER))
			FUNC7(htup, xlrec->xmax);
		else
			FUNC8(htup, InvalidTransactionId);
		FUNC5(htup, FirstCommandId, false);

		/* Mark the page as a candidate for pruning */
		FUNC18(page, FUNC24(record));

		if (xlrec->flags & XLH_DELETE_ALL_VISIBLE_CLEARED)
			FUNC13(page);

		/* Make sure t_ctid is set correctly */
		if (xlrec->flags & XLH_DELETE_IS_PARTITION_MOVE)
			FUNC6(htup);
		else
			htup->t_ctid = target_tid;
		FUNC17(page, lsn);
		FUNC12(buffer);
	}
	if (FUNC1(buffer))
		FUNC20(buffer);
}