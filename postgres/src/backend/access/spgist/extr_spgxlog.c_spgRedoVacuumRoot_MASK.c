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
struct TYPE_6__ {int /*<<< orphan*/  nDelete; int /*<<< orphan*/ * offsets; } ;
typedef  TYPE_1__ spgxlogVacuumRoot ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_7__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC8(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	char	   *ptr = FUNC7(record);
	spgxlogVacuumRoot *xldata = (spgxlogVacuumRoot *) ptr;
	OffsetNumber *toDelete;
	Buffer		buffer;
	Page		page;

	toDelete = xldata->offsets;

	if (FUNC6(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		page = FUNC0(buffer);

		/* The tuple numbers are in order */
		FUNC3(page, toDelete, xldata->nDelete);

		FUNC4(page, lsn);
		FUNC2(buffer);
	}
	if (FUNC1(buffer))
		FUNC5(buffer);
}