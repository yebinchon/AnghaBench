#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_17__ {int query_level; int /*<<< orphan*/  all_baserels; } ;
struct TYPE_16__ {TYPE_1__* tablesample; } ;
struct TYPE_15__ {int /*<<< orphan*/  lateral_relids; } ;
struct TYPE_14__ {int /*<<< orphan*/  tsmhandler; } ;
struct TYPE_13__ {int /*<<< orphan*/  repeatable_across_scans; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_2__ RelOptInfo ;
typedef  TYPE_3__ RangeTblEntry ;
typedef  TYPE_4__ PlannerInfo ;
typedef  int /*<<< orphan*/  Path ;

/* Variables and functions */
 scalar_t__ BMS_SINGLETON ; 
 TYPE_12__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(PlannerInfo *root, RelOptInfo *rel, RangeTblEntry *rte)
{
	Relids		required_outer;
	Path	   *path;

	/*
	 * We don't support pushing join clauses into the quals of a samplescan,
	 * but it could still have required parameterization due to LATERAL refs
	 * in its tlist or TABLESAMPLE arguments.
	 */
	required_outer = rel->lateral_relids;

	/* Consider sampled scan */
	path = FUNC4(root, rel, required_outer);

	/*
	 * If the sampling method does not support repeatable scans, we must avoid
	 * plans that would scan the rel multiple times.  Ideally, we'd simply
	 * avoid putting the rel on the inside of a nestloop join; but adding such
	 * a consideration to the planner seems like a great deal of complication
	 * to support an uncommon usage of second-rate sampling methods.  Instead,
	 * if there is a risk that the query might perform an unsafe join, just
	 * wrap the SampleScan in a Materialize node.  We can check for joins by
	 * counting the membership of all_baserels (note that this correctly
	 * counts inheritance trees as single rels).  If we're inside a subquery,
	 * we can't easily check whether a join might occur in the outer query, so
	 * just assume one is possible.
	 *
	 * GetTsmRoutine is relatively expensive compared to the other tests here,
	 * so check repeatable_across_scans last, even though that's a bit odd.
	 */
	if ((root->query_level > 1 ||
		 FUNC2(root->all_baserels) != BMS_SINGLETON) &&
		!(FUNC0(rte->tablesample->tsmhandler)->repeatable_across_scans))
	{
		path = (Path *) FUNC3(rel, path);
	}

	FUNC1(rel, path);

	/* For the moment, at least, there are no other paths to consider */
}