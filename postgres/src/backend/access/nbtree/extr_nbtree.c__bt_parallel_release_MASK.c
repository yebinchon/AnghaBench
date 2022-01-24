#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  btps_cv; int /*<<< orphan*/  btps_mutex; int /*<<< orphan*/  btps_pageStatus; int /*<<< orphan*/  btps_scanPage; } ;
struct TYPE_6__ {TYPE_1__* parallel_scan; } ;
struct TYPE_5__ {int /*<<< orphan*/  ps_offset; } ;
typedef  TYPE_1__* ParallelIndexScanDesc ;
typedef  TYPE_2__* IndexScanDesc ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  TYPE_3__* BTParallelScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  BTPARALLEL_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(IndexScanDesc scan, BlockNumber scan_page)
{
	ParallelIndexScanDesc parallel_scan = scan->parallel_scan;
	BTParallelScanDesc btscan;

	btscan = (BTParallelScanDesc) FUNC1((void *) parallel_scan,
												  parallel_scan->ps_offset);

	FUNC2(&btscan->btps_mutex);
	btscan->btps_scanPage = scan_page;
	btscan->btps_pageStatus = BTPARALLEL_IDLE;
	FUNC3(&btscan->btps_mutex);
	FUNC0(&btscan->btps_cv);
}