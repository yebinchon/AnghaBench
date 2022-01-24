#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int nparts; struct TYPE_11__** part_rels; int /*<<< orphan*/  consider_partitionwise_join; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

void
FUNC11(PlannerInfo *root, RelOptInfo *rel)
{
	List	   *live_children = NIL;
	int			cnt_parts;
	int			num_parts;
	RelOptInfo **part_rels;

	/* Handle only join relations here. */
	if (!FUNC2(rel))
		return;

	/* We've nothing to do if the relation is not partitioned. */
	if (!FUNC3(rel))
		return;

	/* The relation should have consider_partitionwise_join set. */
	FUNC0(rel->consider_partitionwise_join);

	/* Guard against stack overflow due to overly deep partition hierarchy. */
	FUNC5();

	num_parts = rel->nparts;
	part_rels = rel->part_rels;

	/* Collect non-dummy child-joins. */
	for (cnt_parts = 0; cnt_parts < num_parts; cnt_parts++)
	{
		RelOptInfo *child_rel = part_rels[cnt_parts];

		/* If it's been pruned entirely, it's certainly dummy. */
		if (child_rel == NULL)
			continue;

		/* Add partitionwise join paths for partitioned child-joins. */
		FUNC11(root, child_rel);

		FUNC10(child_rel);

		/* Dummy children will not be scanned, so ignore those. */
		if (FUNC1(child_rel))
			continue;

#ifdef OPTIMIZER_DEBUG
		debug_print_rel(root, child_rel);
#endif

		live_children = FUNC7(live_children, child_rel);
	}

	/* If all child-joins are dummy, parent join is also dummy. */
	if (!live_children)
	{
		FUNC9(rel);
		return;
	}

	/* Build additional paths for this rel from child-join paths. */
	FUNC4(root, rel, live_children);
	FUNC8(live_children);
}