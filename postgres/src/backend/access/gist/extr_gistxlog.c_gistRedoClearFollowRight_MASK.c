#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_4__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_1__ XLogReaderState ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ BLK_RESTORED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(XLogReaderState *record, uint8 block_id)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	Buffer		buffer;
	Page		page;
	XLogRedoAction action;

	/*
	 * Note that we still update the page even if it was restored from a full
	 * page image, because the updated NSN is not included in the image.
	 */
	action = FUNC7(record, block_id, &buffer);
	if (action == BLK_NEEDS_REDO || action == BLK_RESTORED)
	{
		page = FUNC0(buffer);

		FUNC3(page, lsn);
		FUNC2(page);

		FUNC5(page, lsn);
		FUNC4(buffer);
	}
	if (FUNC1(buffer))
		FUNC6(buffer);
}