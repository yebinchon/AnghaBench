#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {size_t simple_rel_array_size; double total_table_pages; int /*<<< orphan*/ * all_baserels; TYPE_1__** simple_rel_array; } ;
struct TYPE_12__ {size_t relid; scalar_t__ reloptkind; int /*<<< orphan*/  relids; scalar_t__ pages; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ PlannerInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  size_t Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ RELOPT_BASEREL ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

RelOptInfo *
FUNC9(PlannerInfo *root, List *joinlist)
{
	RelOptInfo *rel;
	Index		rti;
	double		total_pages;

	/*
	 * Construct the all_baserels Relids set.
	 */
	root->all_baserels = NULL;
	for (rti = 1; rti < root->simple_rel_array_size; rti++)
	{
		RelOptInfo *brel = root->simple_rel_array[rti];

		/* there may be empty slots corresponding to non-baserel RTEs */
		if (brel == NULL)
			continue;

		FUNC0(brel->relid == rti); /* sanity check on array */

		/* ignore RTEs that are "other rels" */
		if (brel->reloptkind != RELOPT_BASEREL)
			continue;

		root->all_baserels = FUNC3(root->all_baserels, brel->relid);
	}

	/* Mark base rels as to whether we care about fast-start plans */
	FUNC6(root);

	/*
	 * Compute size estimates and consider_parallel flags for each base rel.
	 */
	FUNC8(root);

	/*
	 * We should now have size estimates for every actual table involved in
	 * the query, and we also know which if any have been deleted from the
	 * query by join removal, pruned by partition pruning, or eliminated by
	 * constraint exclusion.  So we can now compute total_table_pages.
	 *
	 * Note that appendrels are not double-counted here, even though we don't
	 * bother to distinguish RelOptInfos for appendrel parents, because the
	 * parents will have pages = 0.
	 *
	 * XXX if a table is self-joined, we will count it once per appearance,
	 * which perhaps is the wrong thing ... but that's not completely clear,
	 * and detecting self-joins here is difficult, so ignore it for now.
	 */
	total_pages = 0;
	for (rti = 1; rti < root->simple_rel_array_size; rti++)
	{
		RelOptInfo *brel = root->simple_rel_array[rti];

		if (brel == NULL)
			continue;

		FUNC0(brel->relid == rti); /* sanity check on array */

		if (FUNC1(brel))
			continue;

		if (FUNC2(brel))
			total_pages += (double) brel->pages;
	}
	root->total_table_pages = total_pages;

	/*
	 * Generate access paths for each base rel.
	 */
	FUNC7(root);

	/*
	 * Generate access paths for the entire join tree.
	 */
	rel = FUNC5(root, joinlist);

	/*
	 * The result should join all and only the query's base rels.
	 */
	FUNC0(FUNC4(rel->relids, root->all_baserels));

	return rel;
}