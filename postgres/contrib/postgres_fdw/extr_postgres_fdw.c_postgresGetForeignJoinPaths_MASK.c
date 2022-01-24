#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {int /*<<< orphan*/ * sjinfo; } ;
struct TYPE_31__ {int pushdown_safe; double rows; int width; void* total_cost; void* startup_cost; int /*<<< orphan*/  jointype; int /*<<< orphan*/  joinclauses; void* joinclause_sel; int /*<<< orphan*/  use_remote_estimate; int /*<<< orphan*/  local_conds; int /*<<< orphan*/  local_conds_cost; void* local_conds_sel; int /*<<< orphan*/ * attrs_used; } ;
struct TYPE_30__ {scalar_t__ rowMarks; TYPE_1__* parse; } ;
struct TYPE_29__ {double rows; int /*<<< orphan*/  lateral_relids; TYPE_2__* reltarget; TYPE_5__* fdw_private; } ;
struct TYPE_28__ {int width; } ;
struct TYPE_27__ {scalar_t__ commandType; } ;
typedef  TYPE_3__ RelOptInfo ;
typedef  TYPE_4__ PlannerInfo ;
typedef  TYPE_5__ PgFdwRelationInfo ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  JoinType ;
typedef  TYPE_6__ JoinPathExtraData ;
typedef  int /*<<< orphan*/  ForeignPath ;
typedef  void* Cost ;

/* Variables and functions */
 scalar_t__ CMD_DELETE ; 
 scalar_t__ CMD_UPDATE ; 
 int /*<<< orphan*/  DEBUG3 ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  JOIN_INNER ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *,double,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,double*,int*,void**,void**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,TYPE_6__*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(PlannerInfo *root,
							RelOptInfo *joinrel,
							RelOptInfo *outerrel,
							RelOptInfo *innerrel,
							JoinType jointype,
							JoinPathExtraData *extra)
{
	PgFdwRelationInfo *fpinfo;
	ForeignPath *joinpath;
	double		rows;
	int			width;
	Cost		startup_cost;
	Cost		total_cost;
	Path	   *epq_path;		/* Path to create plan to be executed when
								 * EvalPlanQual gets triggered. */

	/*
	 * Skip if this join combination has been considered already.
	 */
	if (joinrel->fdw_private)
		return;

	/*
	 * This code does not work for joins with lateral references, since those
	 * must have parameterized paths, which we don't generate yet.
	 */
	if (!FUNC3(joinrel->lateral_relids))
		return;

	/*
	 * Create unfinished PgFdwRelationInfo entry which is used to indicate
	 * that the join relation is already considered, so that we won't waste
	 * time in judging safety of join pushdown and adding the same paths again
	 * if found safe. Once we know that this join can be pushed down, we fill
	 * the entry.
	 */
	fpinfo = (PgFdwRelationInfo *) FUNC10(sizeof(PgFdwRelationInfo));
	fpinfo->pushdown_safe = false;
	joinrel->fdw_private = fpinfo;
	/* attrs_used is only for base relations. */
	fpinfo->attrs_used = NULL;

	/*
	 * If there is a possibility that EvalPlanQual will be executed, we need
	 * to be able to reconstruct the row using scans of the base relations.
	 * GetExistingLocalJoinPath will find a suitable path for this purpose in
	 * the path list of the joinrel, if one exists.  We must be careful to
	 * call it before adding any ForeignPath, since the ForeignPath might
	 * dominate the only suitable local path available.  We also do it before
	 * calling foreign_join_ok(), since that function updates fpinfo and marks
	 * it as pushable if the join is found to be pushable.
	 */
	if (root->parse->commandType == CMD_DELETE ||
		root->parse->commandType == CMD_UPDATE ||
		root->rowMarks)
	{
		epq_path = FUNC0(joinrel);
		if (!epq_path)
		{
			FUNC7(DEBUG3, "could not push down foreign join because a local path suitable for EPQ checks was not found");
			return;
		}
	}
	else
		epq_path = NULL;

	if (!FUNC9(root, joinrel, jointype, outerrel, innerrel, extra))
	{
		/* Free path required for EPQ if we copied one; we don't need it now */
		if (epq_path)
			FUNC11(epq_path);
		return;
	}

	/*
	 * Compute the selectivity and cost of the local_conds, so we don't have
	 * to do it over again for each path. The best we can do for these
	 * conditions is to estimate selectivity on the basis of local statistics.
	 * The local conditions are applied after the join has been computed on
	 * the remote side like quals in WHERE clause, so pass jointype as
	 * JOIN_INNER.
	 */
	fpinfo->local_conds_sel = FUNC4(root,
													 fpinfo->local_conds,
													 0,
													 JOIN_INNER,
													 NULL);
	FUNC5(&fpinfo->local_conds_cost, fpinfo->local_conds, root);

	/*
	 * If we are going to estimate costs locally, estimate the join clause
	 * selectivity here while we have special join info.
	 */
	if (!fpinfo->use_remote_estimate)
		fpinfo->joinclause_sel = FUNC4(root, fpinfo->joinclauses,
														0, fpinfo->jointype,
														extra->sjinfo);

	/* Estimate costs for bare join relation */
	FUNC8(root, joinrel, NIL, NIL, NULL,
							&rows, &width, &startup_cost, &total_cost);
	/* Now update this information in the joinrel */
	joinrel->rows = rows;
	joinrel->reltarget->width = width;
	fpinfo->rows = rows;
	fpinfo->width = width;
	fpinfo->startup_cost = startup_cost;
	fpinfo->total_cost = total_cost;

	/*
	 * Create a new join path and add it to the joinrel which represents a
	 * join between foreign tables.
	 */
	joinpath = FUNC6(root,
										joinrel,
										NULL,	/* default pathtarget */
										rows,
										startup_cost,
										total_cost,
										NIL,	/* no pathkeys */
										joinrel->lateral_relids,
										epq_path,
										NIL);	/* no fdw_private */

	/* Add generated path into joinrel by add_path(). */
	FUNC1(joinrel, (Path *) joinpath);

	/* Consider pathkeys for the join relation */
	FUNC2(root, joinrel, epq_path);

	/* XXX Consider parameterized paths for the join relation */
}