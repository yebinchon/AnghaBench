#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ItemPointer ;
typedef  int /*<<< orphan*/  IndexFetchTableData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool
FUNC5(Relation rel,
							  ItemPointer tid,
							  Snapshot snapshot,
							  bool *all_dead)
{
	IndexFetchTableData *scan;
	TupleTableSlot *slot;
	bool		call_again = false;
	bool		found;

	slot = FUNC4(rel, NULL);
	scan = FUNC1(rel);
	found = FUNC3(scan, tid, snapshot, slot, &call_again,
									all_dead);
	FUNC2(scan);
	FUNC0(slot);

	return found;
}