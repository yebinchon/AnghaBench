#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  parentOffset; int /*<<< orphan*/  deleteXid; int /*<<< orphan*/  rightLink; } ;
typedef  TYPE_1__ ginxlogDeletePage ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_8__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_9__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  rightlink; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIN_DELETED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC13(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	ginxlogDeletePage *data = (ginxlogDeletePage *) FUNC12(record);
	Buffer		dbuffer;
	Buffer		pbuffer;
	Buffer		lbuffer;
	Page		page;

	/*
	 * Lock left page first in order to prevent possible deadlock with
	 * ginStepRight().
	 */
	if (FUNC11(record, 2, &lbuffer) == BLK_NEEDS_REDO)
	{
		page = FUNC1(lbuffer);
		FUNC0(FUNC5(page));
		FUNC4(page)->rightlink = data->rightLink;
		FUNC9(page, lsn);
		FUNC8(lbuffer);
	}

	if (FUNC11(record, 0, &dbuffer) == BLK_NEEDS_REDO)
	{
		page = FUNC1(dbuffer);
		FUNC0(FUNC5(page));
		FUNC4(page)->flags = GIN_DELETED;
		FUNC7(page, data->deleteXid);
		FUNC9(page, lsn);
		FUNC8(dbuffer);
	}

	if (FUNC11(record, 1, &pbuffer) == BLK_NEEDS_REDO)
	{
		page = FUNC1(pbuffer);
		FUNC0(FUNC5(page));
		FUNC0(!FUNC6(page));
		FUNC3(page, data->parentOffset);
		FUNC9(page, lsn);
		FUNC8(pbuffer);
	}

	if (FUNC2(lbuffer))
		FUNC10(lbuffer);
	if (FUNC2(pbuffer))
		FUNC10(pbuffer);
	if (FUNC2(dbuffer))
		FUNC10(dbuffer);
}