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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_6__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_1__ XLogReaderState ;
struct TYPE_7__ {int /*<<< orphan*/  btpo_flags; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_2__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  BTP_INCOMPLETE_SPLIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(XLogReaderState *record, uint8 block_id)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	Buffer		buf;

	if (FUNC8(record, block_id, &buf) == BLK_NEEDS_REDO)
	{
		Page		page = (Page) FUNC1(buf);
		BTPageOpaque pageop = (BTPageOpaque) FUNC5(page);

		FUNC0(FUNC4(pageop));
		pageop->btpo_flags &= ~BTP_INCOMPLETE_SPLIT;

		FUNC6(page, lsn);
		FUNC3(buf);
	}
	if (FUNC2(buf))
		FUNC7(buf);
}