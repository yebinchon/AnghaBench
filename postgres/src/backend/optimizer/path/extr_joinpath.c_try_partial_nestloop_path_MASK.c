#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {int /*<<< orphan*/  total_cost; } ;
struct TYPE_30__ {int /*<<< orphan*/  restrictlist; } ;
struct TYPE_29__ {TYPE_2__* parent; TYPE_1__* param_info; } ;
struct TYPE_28__ {scalar_t__ relids; scalar_t__ top_parent_relids; int /*<<< orphan*/  lateral_relids; } ;
struct TYPE_27__ {scalar_t__ ppi_req_outer; } ;
typedef  scalar_t__ Relids ;
typedef  TYPE_2__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_3__ Path ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinType ;
typedef  TYPE_4__ JoinPathExtraData ;
typedef  TYPE_5__ JoinCostWorkspace ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,TYPE_4__*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(PlannerInfo *root,
						  RelOptInfo *joinrel,
						  Path *outer_path,
						  Path *inner_path,
						  List *pathkeys,
						  JoinType jointype,
						  JoinPathExtraData *extra)
{
	JoinCostWorkspace workspace;

	/*
	 * If the inner path is parameterized, the parameterization must be fully
	 * satisfied by the proposed outer path.  Parameterized partial paths are
	 * not supported.  The caller should already have verified that no
	 * extra_lateral_rels are required here.
	 */
	FUNC0(FUNC4(joinrel->lateral_relids));
	if (inner_path->param_info != NULL)
	{
		Relids		inner_paramrels = inner_path->param_info->ppi_req_outer;
		RelOptInfo *outerrel = outer_path->parent;
		Relids		outerrelids;

		/*
		 * The inner and outer paths are parameterized, if at all, by the top
		 * level parents, not the child relations, so we must use those relids
		 * for our parameterization tests.
		 */
		if (outerrel->top_parent_relids)
			outerrelids = outerrel->top_parent_relids;
		else
			outerrelids = outerrel->relids;

		if (!FUNC5(inner_paramrels, outerrelids))
			return;
	}

	/*
	 * Before creating a path, get a quick lower bound on what it is likely to
	 * cost.  Bail out right away if it looks terrible.
	 */
	FUNC7(root, &workspace, jointype,
						  outer_path, inner_path, extra);
	if (!FUNC3(joinrel, workspace.total_cost, pathkeys))
		return;

	/*
	 * If the inner path is parameterized, it is parameterized by the topmost
	 * parent of the outer rel, not the outer rel itself.  Fix that.
	 */
	if (FUNC1(inner_path, outer_path->parent))
	{
		inner_path = FUNC8(root, inner_path,
												  outer_path->parent);

		/*
		 * If we could not translate the path, we can't create nest loop path.
		 */
		if (!inner_path)
			return;
	}

	/* Might be good enough to be worth trying, so let's try it. */
	FUNC2(joinrel, (Path *)
					 FUNC6(root,
										  joinrel,
										  jointype,
										  &workspace,
										  extra,
										  outer_path,
										  inner_path,
										  extra->restrictlist,
										  pathkeys,
										  NULL));
}