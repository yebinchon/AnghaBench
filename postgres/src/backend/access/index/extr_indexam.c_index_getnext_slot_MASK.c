#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_5__ {int /*<<< orphan*/  xs_heaptid; int /*<<< orphan*/  xs_heap_continue; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  TYPE_1__* IndexScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

bool
FUNC5(IndexScanDesc scan, ScanDirection direction, TupleTableSlot *slot)
{
	for (;;)
	{
		if (!scan->xs_heap_continue)
		{
			ItemPointer tid;

			/* Time to fetch the next TID from the index */
			tid = FUNC4(scan, direction);

			/* If we're out of index entries, we're done */
			if (tid == NULL)
				break;

			FUNC0(FUNC1(tid, &scan->xs_heaptid));
		}

		/*
		 * Fetch the next (or only) visible heap tuple for this index entry.
		 * If we don't find anything, loop around and grab the next TID from
		 * the index.
		 */
		FUNC0(FUNC2(&scan->xs_heaptid));
		if (FUNC3(scan, slot))
			return true;
	}

	return false;
}