#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int phs_syncscan; int /*<<< orphan*/  phs_relid; } ;
struct TYPE_4__ {int phs_nblocks; int /*<<< orphan*/  phs_nallocated; int /*<<< orphan*/  phs_startblock; int /*<<< orphan*/  phs_mutex; TYPE_1__ base; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  ParallelTableScanDesc ;
typedef  int /*<<< orphan*/  ParallelBlockTableScanDescData ;
typedef  TYPE_2__* ParallelBlockTableScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int NBuffers ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ synchronize_seqscans ; 

Size
FUNC5(Relation rel, ParallelTableScanDesc pscan)
{
	ParallelBlockTableScanDesc bpscan = (ParallelBlockTableScanDesc) pscan;

	bpscan->base.phs_relid = FUNC1(rel);
	bpscan->phs_nblocks = FUNC0(rel);
	/* compare phs_syncscan initialization to similar logic in initscan */
	bpscan->base.phs_syncscan = synchronize_seqscans &&
		!FUNC2(rel) &&
		bpscan->phs_nblocks > NBuffers / 4;
	FUNC3(&bpscan->phs_mutex);
	bpscan->phs_startblock = InvalidBlockNumber;
	FUNC4(&bpscan->phs_nallocated, 0);

	return sizeof(ParallelBlockTableScanDescData);
}