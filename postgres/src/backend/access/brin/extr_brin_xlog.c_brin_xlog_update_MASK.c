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
struct TYPE_7__ {int /*<<< orphan*/  insert; int /*<<< orphan*/  oldOffnum; } ;
typedef  TYPE_1__ xl_brin_update ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_8__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_brin_update *xlrec = (xl_brin_update *) FUNC7(record);
	Buffer		buffer;
	XLogRedoAction action;

	/* First remove the old tuple */
	action = FUNC6(record, 2, &buffer);
	if (action == BLK_NEEDS_REDO)
	{
		Page		page;
		OffsetNumber offnum;

		page = (Page) FUNC0(buffer);

		offnum = xlrec->oldOffnum;

		FUNC3(page, offnum);

		FUNC4(page, lsn);
		FUNC2(buffer);
	}

	/* Then insert the new tuple and update revmap, like in an insertion. */
	FUNC8(record, &xlrec->insert);

	if (FUNC1(buffer))
		FUNC5(buffer);
}