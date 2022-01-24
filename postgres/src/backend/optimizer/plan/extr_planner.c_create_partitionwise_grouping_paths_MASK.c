#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  grouping_sets_data ;
typedef  int /*<<< orphan*/  child_extra ;
struct TYPE_25__ {int /*<<< orphan*/ * havingQual; int /*<<< orphan*/  target_parallel_safe; scalar_t__ patype; int /*<<< orphan*/ * targetList; } ;
struct TYPE_24__ {int /*<<< orphan*/ * exprs; } ;
struct TYPE_23__ {int nparts; scalar_t__ pathlist; int /*<<< orphan*/  relids; struct TYPE_23__** part_rels; TYPE_2__* reltarget; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_2__ PathTarget ;
typedef  scalar_t__ PartitionwiseAggregateType ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__ GroupPathExtraData ;
typedef  int /*<<< orphan*/  AppendRelInfo ;
typedef  int /*<<< orphan*/  AggClauseCosts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ PARTITIONWISE_AGGREGATE_FULL ; 
 scalar_t__ PARTITIONWISE_AGGREGATE_NONE ; 
 scalar_t__ PARTITIONWISE_AGGREGATE_PARTIAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,TYPE_3__*,TYPE_1__**) ; 
 int /*<<< orphan*/ ** FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC12(PlannerInfo *root,
									RelOptInfo *input_rel,
									RelOptInfo *grouped_rel,
									RelOptInfo *partially_grouped_rel,
									const AggClauseCosts *agg_costs,
									grouping_sets_data *gd,
									PartitionwiseAggregateType patype,
									GroupPathExtraData *extra)
{
	int			nparts = input_rel->nparts;
	int			cnt_parts;
	List	   *grouped_live_children = NIL;
	List	   *partially_grouped_live_children = NIL;
	PathTarget *target = grouped_rel->reltarget;
	bool		partial_grouping_valid = true;

	FUNC0(patype != PARTITIONWISE_AGGREGATE_NONE);
	FUNC0(patype != PARTITIONWISE_AGGREGATE_PARTIAL ||
		   partially_grouped_rel != NULL);

	/* Add paths for partitionwise aggregation/grouping. */
	for (cnt_parts = 0; cnt_parts < nparts; cnt_parts++)
	{
		RelOptInfo *child_input_rel = input_rel->part_rels[cnt_parts];
		PathTarget *child_target = FUNC4(target);
		AppendRelInfo **appinfos;
		int			nappinfos;
		GroupPathExtraData child_extra;
		RelOptInfo *child_grouped_rel;
		RelOptInfo *child_partially_grouped_rel;

		/* Pruned or dummy children can be ignored. */
		if (child_input_rel == NULL || FUNC1(child_input_rel))
			continue;

		/*
		 * Copy the given "extra" structure as is and then override the
		 * members specific to this child.
		 */
		FUNC9(&child_extra, extra, sizeof(child_extra));

		appinfos = FUNC6(root, child_input_rel->relids,
										   &nappinfos);

		child_target->exprs = (List *)
			FUNC3(root,
								   (Node *) target->exprs,
								   nappinfos, appinfos);

		/* Translate havingQual and targetList. */
		child_extra.havingQual = (Node *)
			FUNC3(root,
								   extra->havingQual,
								   nappinfos, appinfos);
		child_extra.targetList = (List *)
			FUNC3(root,
								   (Node *) extra->targetList,
								   nappinfos, appinfos);

		/*
		 * extra->patype was the value computed for our parent rel; patype is
		 * the value for this relation.  For the child, our value is its
		 * parent rel's value.
		 */
		child_extra.patype = patype;

		/*
		 * Create grouping relation to hold fully aggregated grouping and/or
		 * aggregation paths for the child.
		 */
		child_grouped_rel = FUNC8(root, child_input_rel,
											  child_target,
											  extra->target_parallel_safe,
											  child_extra.havingQual);

		/* Create grouping paths for this child relation. */
		FUNC5(root, child_input_rel,
									   child_grouped_rel,
									   agg_costs, gd, &child_extra,
									   &child_partially_grouped_rel);

		if (child_partially_grouped_rel)
		{
			partially_grouped_live_children =
				FUNC7(partially_grouped_live_children,
						child_partially_grouped_rel);
		}
		else
			partial_grouping_valid = false;

		if (patype == PARTITIONWISE_AGGREGATE_FULL)
		{
			FUNC11(child_grouped_rel);
			grouped_live_children = FUNC7(grouped_live_children,
											child_grouped_rel);
		}

		FUNC10(appinfos);
	}

	/*
	 * Try to create append paths for partially grouped children. For full
	 * partitionwise aggregation, we might have paths in the partial_pathlist
	 * if parallel aggregation is possible.  For partial partitionwise
	 * aggregation, we may have paths in both pathlist and partial_pathlist.
	 *
	 * NB: We must have a partially grouped path for every child in order to
	 * generate a partially grouped path for this relation.
	 */
	if (partially_grouped_rel && partial_grouping_valid)
	{
		FUNC0(partially_grouped_live_children != NIL);

		FUNC2(root, partially_grouped_rel,
								partially_grouped_live_children);

		/*
		 * We need call set_cheapest, since the finalization step will use the
		 * cheapest path from the rel.
		 */
		if (partially_grouped_rel->pathlist)
			FUNC11(partially_grouped_rel);
	}

	/* If possible, create append paths for fully grouped children. */
	if (patype == PARTITIONWISE_AGGREGATE_FULL)
	{
		FUNC0(grouped_live_children != NIL);

		FUNC2(root, grouped_rel, grouped_live_children);
	}
}