#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_5__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_1__ XLogReaderState ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIN_INCOMPLETE_SPLIT ; 
 TYPE_4__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(XLogReaderState *record, uint8 block_id)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	Buffer		buffer;
	Page		page;

	if (FUNC6(record, block_id, &buffer) == BLK_NEEDS_REDO)
	{
		page = (Page) FUNC0(buffer);
		FUNC2(page)->flags &= ~GIN_INCOMPLETE_SPLIT;

		FUNC4(page, lsn);
		FUNC3(buffer);
	}
	if (FUNC1(buffer))
		FUNC5(buffer);
}