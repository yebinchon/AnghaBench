#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ ec_broken; int /*<<< orphan*/  ec_relids; int /*<<< orphan*/  ec_members; scalar_t__ ec_has_const; } ;
struct TYPE_14__ {int /*<<< orphan*/  eq_classes; } ;
struct TYPE_13__ {int /*<<< orphan*/  relids; int /*<<< orphan*/  top_parent_relids; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ PlannerInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__ EquivalenceClass ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 

List *
FUNC12(PlannerInfo *root,
								 Relids join_relids,
								 Relids outer_relids,
								 RelOptInfo *inner_rel)
{
	List	   *result = NIL;
	Relids		inner_relids = inner_rel->relids;
	Relids		nominal_inner_relids;
	Relids		nominal_join_relids;
	Bitmapset  *matching_ecs;
	int			i;

	/* If inner rel is a child, extra setup work is needed */
	if (FUNC1(inner_rel))
	{
		FUNC0(!FUNC2(inner_rel->top_parent_relids));

		/* Fetch relid set for the topmost parent rel */
		nominal_inner_relids = inner_rel->top_parent_relids;
		/* ECs will be marked with the parent's relid, not the child's */
		nominal_join_relids = FUNC5(outer_relids, nominal_inner_relids);
	}
	else
	{
		nominal_inner_relids = inner_relids;
		nominal_join_relids = join_relids;
	}

	/*
	 * Get all eclasses in common between inner_rel's relids and outer_relids
	 */
	matching_ecs = FUNC8(root, inner_rel->relids,
											 outer_relids);

	i = -1;
	while ((i = FUNC3(matching_ecs, i)) >= 0)
	{
		EquivalenceClass *ec = (EquivalenceClass *) FUNC11(root->eq_classes, i);
		List	   *sublist = NIL;

		/* ECs containing consts do not need any further enforcement */
		if (ec->ec_has_const)
			continue;

		/* Single-member ECs won't generate any deductions */
		if (FUNC10(ec->ec_members) <= 1)
			continue;

		/* Sanity check that this eclass overlaps the join */
		FUNC0(FUNC4(ec->ec_relids, nominal_join_relids));

		if (!ec->ec_broken)
			sublist = FUNC7(root,
															  ec,
															  join_relids,
															  outer_relids,
															  inner_relids);

		/* Recover if we failed to generate required derived clauses */
		if (ec->ec_broken)
			sublist = FUNC6(root,
															  ec,
															  nominal_join_relids,
															  outer_relids,
															  nominal_inner_relids,
															  inner_rel);

		result = FUNC9(result, sublist);
	}

	return result;
}