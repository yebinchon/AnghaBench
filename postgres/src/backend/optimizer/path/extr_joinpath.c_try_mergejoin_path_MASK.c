#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  total_cost; int /*<<< orphan*/  startup_cost; } ;
struct TYPE_22__ {int /*<<< orphan*/  restrictlist; int /*<<< orphan*/  param_source_rels; } ;
struct TYPE_21__ {int /*<<< orphan*/  pathkeys; } ;
typedef  scalar_t__ Relids ;
typedef  int /*<<< orphan*/  RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_1__ Path ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinType ;
typedef  TYPE_2__ JoinPathExtraData ;
typedef  TYPE_3__ JoinCostWorkspace ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(PlannerInfo *root,
				   RelOptInfo *joinrel,
				   Path *outer_path,
				   Path *inner_path,
				   List *pathkeys,
				   List *mergeclauses,
				   List *outersortkeys,
				   List *innersortkeys,
				   JoinType jointype,
				   JoinPathExtraData *extra,
				   bool is_partial)
{
	Relids		required_outer;
	JoinCostWorkspace workspace;

	if (is_partial)
	{
		FUNC8(root,
								   joinrel,
								   outer_path,
								   inner_path,
								   pathkeys,
								   mergeclauses,
								   outersortkeys,
								   innersortkeys,
								   jointype,
								   extra);
		return;
	}

	/*
	 * Check to see if proposed path is still parameterized, and reject if the
	 * parameterization wouldn't be sensible.
	 */
	required_outer = FUNC4(outer_path,
													  inner_path);
	if (required_outer &&
		!FUNC3(required_outer, extra->param_source_rels))
	{
		/* Waste no memory when we reject a path here */
		FUNC2(required_outer);
		return;
	}

	/*
	 * If the given paths are already well enough ordered, we can skip doing
	 * an explicit sort.
	 */
	if (outersortkeys &&
		FUNC7(outersortkeys, outer_path->pathkeys))
		outersortkeys = NIL;
	if (innersortkeys &&
		FUNC7(innersortkeys, inner_path->pathkeys))
		innersortkeys = NIL;

	/*
	 * See comments in try_nestloop_path().
	 */
	FUNC6(root, &workspace, jointype, mergeclauses,
						   outer_path, inner_path,
						   outersortkeys, innersortkeys,
						   extra);

	if (FUNC1(joinrel,
						  workspace.startup_cost, workspace.total_cost,
						  pathkeys, required_outer))
	{
		FUNC0(joinrel, (Path *)
				 FUNC5(root,
									   joinrel,
									   jointype,
									   &workspace,
									   extra,
									   outer_path,
									   inner_path,
									   extra->restrictlist,
									   pathkeys,
									   required_outer,
									   mergeclauses,
									   outersortkeys,
									   innersortkeys));
	}
	else
	{
		/* Waste no memory when we reject a path here */
		FUNC2(required_outer);
	}
}