#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  total_cost; } ;
struct TYPE_25__ {int /*<<< orphan*/  restrictlist; } ;
struct TYPE_24__ {TYPE_1__* param_info; } ;
struct TYPE_23__ {int /*<<< orphan*/  lateral_relids; } ;
struct TYPE_22__ {int /*<<< orphan*/  ppi_req_outer; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_2__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_3__ Path ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinType ;
typedef  TYPE_4__ JoinPathExtraData ;
typedef  TYPE_5__ JoinCostWorkspace ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,TYPE_3__*,TYPE_4__*,int) ; 

__attribute__((used)) static void
FUNC6(PlannerInfo *root,
						  RelOptInfo *joinrel,
						  Path *outer_path,
						  Path *inner_path,
						  List *hashclauses,
						  JoinType jointype,
						  JoinPathExtraData *extra,
						  bool parallel_hash)
{
	JoinCostWorkspace workspace;

	/*
	 * If the inner path is parameterized, the parameterization must be fully
	 * satisfied by the proposed outer path.  Parameterized partial paths are
	 * not supported.  The caller should already have verified that no
	 * extra_lateral_rels are required here.
	 */
	FUNC0(FUNC3(joinrel->lateral_relids));
	if (inner_path->param_info != NULL)
	{
		Relids		inner_paramrels = inner_path->param_info->ppi_req_outer;

		if (!FUNC3(inner_paramrels))
			return;
	}

	/*
	 * Before creating a path, get a quick lower bound on what it is likely to
	 * cost.  Bail out right away if it looks terrible.
	 */
	FUNC5(root, &workspace, jointype, hashclauses,
						  outer_path, inner_path, extra, parallel_hash);
	if (!FUNC2(joinrel, workspace.total_cost, NIL))
		return;

	/* Might be good enough to be worth trying, so let's try it. */
	FUNC1(joinrel, (Path *)
					 FUNC4(root,
										  joinrel,
										  jointype,
										  &workspace,
										  extra,
										  outer_path,
										  inner_path,
										  parallel_hash,
										  extra->restrictlist,
										  NULL,
										  hashclauses));
}