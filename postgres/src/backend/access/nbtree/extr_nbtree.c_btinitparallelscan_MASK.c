#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  btps_cv; scalar_t__ btps_arrayKeyCount; int /*<<< orphan*/  btps_pageStatus; int /*<<< orphan*/  btps_scanPage; int /*<<< orphan*/  btps_mutex; } ;
typedef  TYPE_1__* BTParallelScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  BTPARALLEL_NOT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(void *target)
{
	BTParallelScanDesc bt_target = (BTParallelScanDesc) target;

	FUNC1(&bt_target->btps_mutex);
	bt_target->btps_scanPage = InvalidBlockNumber;
	bt_target->btps_pageStatus = BTPARALLEL_NOT_INITIALIZED;
	bt_target->btps_arrayKeyCount = 0;
	FUNC0(&bt_target->btps_cv);
}