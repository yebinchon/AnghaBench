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
struct TYPE_8__ {int /*<<< orphan*/  xs_heapfetch; int /*<<< orphan*/  xs_snapshot; int /*<<< orphan*/  heapRelation; } ;
struct TYPE_7__ {scalar_t__ ps_relid; int /*<<< orphan*/  ps_snapshot_data; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* ParallelIndexScanDesc ;
typedef  TYPE_2__* IndexScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

IndexScanDesc
FUNC6(Relation heaprel, Relation indexrel, int nkeys,
						 int norderbys, ParallelIndexScanDesc pscan)
{
	Snapshot	snapshot;
	IndexScanDesc scan;

	FUNC0(FUNC2(heaprel) == pscan->ps_relid);
	snapshot = FUNC3(pscan->ps_snapshot_data);
	FUNC1(snapshot);
	scan = FUNC4(indexrel, nkeys, norderbys, snapshot,
									pscan, true);

	/*
	 * Save additional parameters into the scandesc.  Everything else was set
	 * up by index_beginscan_internal.
	 */
	scan->heapRelation = heaprel;
	scan->xs_snapshot = snapshot;

	/* prepare to fetch index matches from table */
	scan->xs_heapfetch = FUNC5(heaprel);

	return scan;
}