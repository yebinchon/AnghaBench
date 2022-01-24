#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int analyze_only; int report_progress; int estimated_count; int /*<<< orphan*/  strategy; int /*<<< orphan*/  num_heap_tuples; int /*<<< orphan*/  message_level; int /*<<< orphan*/  index; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_dead_tuples; int /*<<< orphan*/  old_live_tuples; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  PGRUsage ;
typedef  TYPE_1__ LVRelStats ;
typedef  TYPE_2__ IndexVacuumInfo ;
typedef  int /*<<< orphan*/  IndexBulkDeleteResult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  elevel ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  lazy_tid_reaped ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vac_strategy ; 

__attribute__((used)) static void
FUNC7(Relation indrel,
				  IndexBulkDeleteResult **stats,
				  LVRelStats *vacrelstats)
{
	IndexVacuumInfo ivinfo;
	PGRUsage	ru0;

	FUNC5(&ru0);

	ivinfo.index = indrel;
	ivinfo.analyze_only = false;
	ivinfo.report_progress = false;
	ivinfo.estimated_count = true;
	ivinfo.message_level = elevel;
	/* We can only provide an approximate value of num_heap_tuples here */
	ivinfo.num_heap_tuples = vacrelstats->old_live_tuples;
	ivinfo.strategy = vac_strategy;

	/* Do bulk deletion */
	*stats = FUNC4(&ivinfo, *stats,
							   lazy_tid_reaped, (void *) vacrelstats);

	FUNC1(elevel,
			(FUNC3("scanned index \"%s\" to remove %d row versions",
					FUNC0(indrel),
					vacrelstats->num_dead_tuples),
			 FUNC2("%s", FUNC6(&ru0))));
}