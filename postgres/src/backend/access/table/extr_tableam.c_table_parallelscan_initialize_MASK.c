#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int phs_snapshot_any; int /*<<< orphan*/  phs_snapshot_off; } ;
struct TYPE_9__ {TYPE_1__* rd_tableam; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* parallelscan_initialize ) (TYPE_2__*,TYPE_3__*) ;} ;
typedef  scalar_t__ Snapshot ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* ParallelTableScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 scalar_t__ SnapshotAny ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 

void
FUNC4(Relation rel, ParallelTableScanDesc pscan,
							  Snapshot snapshot)
{
	Size		snapshot_off = rel->rd_tableam->parallelscan_initialize(rel, pscan);

	pscan->phs_snapshot_off = snapshot_off;

	if (FUNC1(snapshot))
	{
		FUNC2(snapshot, (char *) pscan + pscan->phs_snapshot_off);
		pscan->phs_snapshot_any = false;
	}
	else
	{
		FUNC0(snapshot == SnapshotAny);
		pscan->phs_snapshot_any = true;
	}
}