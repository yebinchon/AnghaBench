#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_16__ ;
typedef  struct TYPE_19__   TYPE_12__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  plan; } ;
struct TYPE_26__ {TYPE_3__ join; } ;
struct TYPE_20__ {scalar_t__ param_info; TYPE_1__* parent; } ;
struct TYPE_25__ {TYPE_16__ path; int /*<<< orphan*/  inner_unique; int /*<<< orphan*/  jointype; TYPE_12__* outerjoinpath; TYPE_12__* innerjoinpath; int /*<<< orphan*/ * joinrestrictinfo; } ;
struct TYPE_24__ {int /*<<< orphan*/  curOuterRels; } ;
struct TYPE_22__ {int /*<<< orphan*/  relids; } ;
struct TYPE_21__ {int /*<<< orphan*/  relids; } ;
struct TYPE_19__ {TYPE_2__* parent; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_4__ PlannerInfo ;
typedef  int /*<<< orphan*/  Plan ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_5__ NestPath ;
typedef  TYPE_6__ NestLoop ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_16__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,TYPE_12__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static NestLoop *
FUNC12(PlannerInfo *root,
					 NestPath *best_path)
{
	NestLoop   *join_plan;
	Plan	   *outer_plan;
	Plan	   *inner_plan;
	List	   *tlist = FUNC3(root, &best_path->path);
	List	   *joinrestrictclauses = best_path->joinrestrictinfo;
	List	   *joinclauses;
	List	   *otherclauses;
	Relids		outerrelids;
	List	   *nestParams;
	Relids		saveOuterRels = root->curOuterRels;

	/* NestLoop can project, so no need to be picky about child tlists */
	outer_plan = FUNC5(root, best_path->outerjoinpath, 0);

	/* For a nestloop, include outer relids in curOuterRels for inner side */
	root->curOuterRels = FUNC2(root->curOuterRels,
								   best_path->outerjoinpath->parent->relids);

	inner_plan = FUNC5(root, best_path->innerjoinpath, 0);

	/* Restore curOuterRels */
	FUNC1(root->curOuterRels);
	root->curOuterRels = saveOuterRels;

	/* Sort join qual clauses into best execution order */
	joinrestrictclauses = FUNC10(root, joinrestrictclauses);

	/* Get the join qual clauses (in plain expression form) */
	/* Any pseudoconstant clauses are ignored here */
	if (FUNC0(best_path->jointype))
	{
		FUNC7(joinrestrictclauses,
									best_path->path.parent->relids,
									&joinclauses, &otherclauses);
	}
	else
	{
		/* We can treat all clauses alike for an inner join */
		joinclauses = FUNC6(joinrestrictclauses, false);
		otherclauses = NIL;
	}

	/* Replace any outer-relation variables with nestloop params */
	if (best_path->path.param_info)
	{
		joinclauses = (List *)
			FUNC11(root, (Node *) joinclauses);
		otherclauses = (List *)
			FUNC11(root, (Node *) otherclauses);
	}

	/*
	 * Identify any nestloop parameters that should be supplied by this join
	 * node, and remove them from root->curOuterParams.
	 */
	outerrelids = best_path->outerjoinpath->parent->relids;
	nestParams = FUNC8(root, outerrelids);

	join_plan = FUNC9(tlist,
							  joinclauses,
							  otherclauses,
							  nestParams,
							  outer_plan,
							  inner_plan,
							  best_path->jointype,
							  best_path->inner_unique);

	FUNC4(&join_plan->join.plan, &best_path->path);

	return join_plan;
}