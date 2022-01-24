#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  pages_free; int /*<<< orphan*/  pages_deleted; int /*<<< orphan*/  tuples_removed; int /*<<< orphan*/  num_pages; int /*<<< orphan*/  num_index_tuples; int /*<<< orphan*/  estimated_count; } ;
struct TYPE_11__ {int analyze_only; int report_progress; int estimated_count; int /*<<< orphan*/  strategy; int /*<<< orphan*/  num_heap_tuples; int /*<<< orphan*/  message_level; int /*<<< orphan*/  index; } ;
struct TYPE_10__ {scalar_t__ tupcount_pages; scalar_t__ rel_pages; int /*<<< orphan*/  new_rel_tuples; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  PGRUsage ;
typedef  TYPE_1__ LVRelStats ;
typedef  TYPE_2__ IndexVacuumInfo ;
typedef  TYPE_3__ IndexBulkDeleteResult ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidMultiXactId ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  elevel ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vac_strategy ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(Relation indrel,
				   IndexBulkDeleteResult *stats,
				   LVRelStats *vacrelstats)
{
	IndexVacuumInfo ivinfo;
	PGRUsage	ru0;

	FUNC6(&ru0);

	ivinfo.index = indrel;
	ivinfo.analyze_only = false;
	ivinfo.report_progress = false;
	ivinfo.estimated_count = (vacrelstats->tupcount_pages < vacrelstats->rel_pages);
	ivinfo.message_level = elevel;

	/*
	 * Now we can provide a better estimate of total number of surviving
	 * tuples (we assume indexes are more interested in that than in the
	 * number of nominally live tuples).
	 */
	ivinfo.num_heap_tuples = vacrelstats->new_rel_tuples;
	ivinfo.strategy = vac_strategy;

	stats = FUNC4(&ivinfo, stats);

	if (!stats)
		return;

	/*
	 * Now update statistics in pg_class, but only if the index says the count
	 * is accurate.
	 */
	if (!stats->estimated_count)
		FUNC8(indrel,
							stats->num_pages,
							stats->num_index_tuples,
							0,
							false,
							InvalidTransactionId,
							InvalidMultiXactId,
							false);

	FUNC1(elevel,
			(FUNC3("index \"%s\" now contains %.0f row versions in %u pages",
					FUNC0(indrel),
					stats->num_index_tuples,
					stats->num_pages),
			 FUNC2("%.0f index row versions were removed.\n"
					   "%u index pages have been deleted, %u are currently reusable.\n"
					   "%s.",
					   stats->tuples_removed,
					   stats->pages_deleted, stats->pages_free,
					   FUNC7(&ru0))));

	FUNC5(stats);
}