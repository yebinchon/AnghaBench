#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  regOffset; int /*<<< orphan*/  heapBlk; int /*<<< orphan*/  pagesPerRange; } ;
typedef  TYPE_1__ xl_brin_desummarize ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_7__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_brin_desummarize *xlrec;
	Buffer		buffer;
	XLogRedoAction action;

	xlrec = (xl_brin_desummarize *) FUNC8(record);

	/* Update the revmap */
	action = FUNC7(record, 0, &buffer);
	if (action == BLK_NEEDS_REDO)
	{
		ItemPointerData iptr;

		FUNC2(&iptr);
		FUNC9(buffer, xlrec->pagesPerRange, xlrec->heapBlk, iptr);

		FUNC5(FUNC0(buffer), lsn);
		FUNC3(buffer);
	}
	if (FUNC1(buffer))
		FUNC6(buffer);

	/* remove the leftover entry from the regular page */
	action = FUNC7(record, 1, &buffer);
	if (action == BLK_NEEDS_REDO)
	{
		Page		regPg = FUNC0(buffer);

		FUNC4(regPg, xlrec->regOffset);

		FUNC5(regPg, lsn);
		FUNC3(buffer);
	}
	if (FUNC1(buffer))
		FUNC6(buffer);
}