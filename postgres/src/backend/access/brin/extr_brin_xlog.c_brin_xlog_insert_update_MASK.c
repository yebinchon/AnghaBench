#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ heapBlk; scalar_t__ offnum; int /*<<< orphan*/  pagesPerRange; } ;
typedef  TYPE_1__ xl_brin_insert ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_11__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_12__ {scalar_t__ bt_blkno; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_3__ BrinTuple ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  BRIN_PAGETYPE_REGULAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int XLOG_BRIN_INIT_PAGE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC17(XLogReaderState *record,
						xl_brin_insert *xlrec)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	Buffer		buffer;
	BlockNumber regpgno;
	Page		page;
	XLogRedoAction action;

	/*
	 * If we inserted the first and only tuple on the page, re-initialize the
	 * page from scratch.
	 */
	if (FUNC13(record) & XLOG_BRIN_INIT_PAGE)
	{
		buffer = FUNC10(record, 0);
		page = FUNC2(buffer);
		FUNC15(page, BRIN_PAGETYPE_REGULAR);
		action = BLK_NEEDS_REDO;
	}
	else
	{
		action = FUNC11(record, 0, &buffer);
	}

	/* need this page's blkno to store in revmap */
	regpgno = FUNC1(buffer);

	/* insert the index item into the page */
	if (action == BLK_NEEDS_REDO)
	{
		OffsetNumber offnum;
		BrinTuple  *tuple;
		Size		tuplen;

		tuple = (BrinTuple *) FUNC12(record, 0, &tuplen);

		FUNC0(tuple->bt_blkno == xlrec->heapBlk);

		page = (Page) FUNC2(buffer);
		offnum = xlrec->offnum;
		if (FUNC7(page) + 1 < offnum)
			FUNC16(PANIC, "brin_xlog_insert_update: invalid max offset number");

		offnum = FUNC6(page, (Item) tuple, tuplen, offnum, true, false);
		if (offnum == InvalidOffsetNumber)
			FUNC16(PANIC, "brin_xlog_insert_update: failed to add tuple");

		FUNC8(page, lsn);
		FUNC5(buffer);
	}
	if (FUNC3(buffer))
		FUNC9(buffer);

	/* update the revmap */
	action = FUNC11(record, 1, &buffer);
	if (action == BLK_NEEDS_REDO)
	{
		ItemPointerData tid;

		FUNC4(&tid, regpgno, xlrec->offnum);
		page = (Page) FUNC2(buffer);

		FUNC14(buffer, xlrec->pagesPerRange, xlrec->heapBlk,
								tid);
		FUNC8(page, lsn);
		FUNC5(buffer);
	}
	if (FUNC3(buffer))
		FUNC9(buffer);

	/* XXX no FSM updates here ... */
}