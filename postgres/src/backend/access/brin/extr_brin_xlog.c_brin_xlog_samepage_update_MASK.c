#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  offnum; } ;
typedef  TYPE_1__ xl_brin_samepage_update ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_8__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  int /*<<< orphan*/  Size ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BrinTuple ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC10(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_brin_samepage_update *xlrec;
	Buffer		buffer;
	XLogRedoAction action;

	xlrec = (xl_brin_samepage_update *) FUNC8(record);
	action = FUNC6(record, 0, &buffer);
	if (action == BLK_NEEDS_REDO)
	{
		Size		tuplen;
		BrinTuple  *brintuple;
		Page		page;
		OffsetNumber offnum;

		brintuple = (BrinTuple *) FUNC7(record, 0, &tuplen);

		page = (Page) FUNC0(buffer);

		offnum = xlrec->offnum;

		if (!FUNC3(page, offnum, (Item) brintuple, tuplen))
			FUNC9(PANIC, "brin_xlog_samepage_update: failed to replace tuple");

		FUNC4(page, lsn);
		FUNC2(buffer);
	}
	if (FUNC1(buffer))
		FUNC5(buffer);

	/* XXX no FSM updates here ... */
}