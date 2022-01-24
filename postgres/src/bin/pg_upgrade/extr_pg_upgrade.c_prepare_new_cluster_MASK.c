#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ verbose; } ;
struct TYPE_4__ {int /*<<< orphan*/  bindir; } ;

/* Variables and functions */
 int /*<<< orphan*/  UTILITY_LOG_FILE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ log_opts ; 
 TYPE_1__ new_cluster ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	/*
	 * It would make more sense to freeze after loading the schema, but that
	 * would cause us to lose the frozenxids restored by the load. We use
	 * --analyze so autovacuum doesn't update statistics later
	 */
	FUNC3("Analyzing all rows in the new cluster");
	FUNC2(UTILITY_LOG_FILE, NULL, true, true,
			  "\"%s/vacuumdb\" %s --all --analyze %s",
			  new_cluster.bindir, FUNC1(&new_cluster),
			  log_opts.verbose ? "--verbose" : "");
	FUNC0();

	/*
	 * We do freeze after analyze so pg_statistic is also frozen. template0 is
	 * not frozen here, but data rows were frozen by initdb, and we set its
	 * datfrozenxid, relfrozenxids, and relminmxid later to match the new xid
	 * counter later.
	 */
	FUNC3("Freezing all rows in the new cluster");
	FUNC2(UTILITY_LOG_FILE, NULL, true, true,
			  "\"%s/vacuumdb\" %s --all --freeze %s",
			  new_cluster.bindir, FUNC1(&new_cluster),
			  log_opts.verbose ? "--verbose" : "");
	FUNC0();
}