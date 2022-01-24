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
struct TYPE_6__ {int /*<<< orphan*/  downlinkOffset; int /*<<< orphan*/  deleteXid; } ;
typedef  TYPE_1__ gistxlogPageDelete ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_7__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	gistxlogPageDelete *xldata = (gistxlogPageDelete *) FUNC8(record);
	Buffer		parentBuffer;
	Buffer		leafBuffer;

	if (FUNC7(record, 0, &leafBuffer) == BLK_NEEDS_REDO)
	{
		Page		page = (Page) FUNC0(leafBuffer);

		FUNC2(page, xldata->deleteXid);

		FUNC5(page, lsn);
		FUNC3(leafBuffer);
	}

	if (FUNC7(record, 1, &parentBuffer) == BLK_NEEDS_REDO)
	{
		Page		page = (Page) FUNC0(parentBuffer);

		FUNC4(page, xldata->downlinkOffset);

		FUNC5(page, lsn);
		FUNC3(parentBuffer);
	}

	if (FUNC1(parentBuffer))
		FUNC6(parentBuffer);
	if (FUNC1(leafBuffer))
		FUNC6(leafBuffer);
}