#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  btps_mutex; scalar_t__ btps_arrayKeyCount; int /*<<< orphan*/  btps_pageStatus; int /*<<< orphan*/  btps_scanPage; } ;
struct TYPE_7__ {TYPE_1__* parallel_scan; } ;
struct TYPE_6__ {int /*<<< orphan*/  ps_offset; } ;
typedef  TYPE_1__* ParallelIndexScanDesc ;
typedef  TYPE_2__* IndexScanDesc ;
typedef  TYPE_3__* BTParallelScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BTPARALLEL_NOT_INITIALIZED ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(IndexScanDesc scan)
{
	BTParallelScanDesc btscan;
	ParallelIndexScanDesc parallel_scan = scan->parallel_scan;

	FUNC0(parallel_scan);

	btscan = (BTParallelScanDesc) FUNC1((void *) parallel_scan,
												  parallel_scan->ps_offset);

	/*
	 * In theory, we don't need to acquire the spinlock here, because there
	 * shouldn't be any other workers running at this point, but we do so for
	 * consistency.
	 */
	FUNC2(&btscan->btps_mutex);
	btscan->btps_scanPage = InvalidBlockNumber;
	btscan->btps_pageStatus = BTPARALLEL_NOT_INITIALIZED;
	btscan->btps_arrayKeyCount = 0;
	FUNC3(&btscan->btps_mutex);
}