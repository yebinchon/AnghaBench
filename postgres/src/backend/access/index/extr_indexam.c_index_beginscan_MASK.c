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
struct TYPE_4__ {int /*<<< orphan*/  xs_heapfetch; int /*<<< orphan*/  xs_snapshot; int /*<<< orphan*/  heapRelation; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* IndexScanDesc ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

IndexScanDesc
FUNC2(Relation heapRelation,
				Relation indexRelation,
				Snapshot snapshot,
				int nkeys, int norderbys)
{
	IndexScanDesc scan;

	scan = FUNC0(indexRelation, nkeys, norderbys, snapshot, NULL, false);

	/*
	 * Save additional parameters into the scandesc.  Everything else was set
	 * up by RelationGetIndexScan.
	 */
	scan->heapRelation = heapRelation;
	scan->xs_snapshot = snapshot;

	/* prepare to fetch index matches from table */
	scan->xs_heapfetch = FUNC1(heapRelation);

	return scan;
}