#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int rows; } ;
struct TYPE_24__ {int /*<<< orphan*/  wt_param_id; TYPE_4__* non_recursive_path; } ;
struct TYPE_23__ {int /*<<< orphan*/  reltarget; int /*<<< orphan*/  relids; TYPE_4__* cheapest_total_path; } ;
struct TYPE_22__ {scalar_t__ op; scalar_t__ all; int /*<<< orphan*/  colCollations; int /*<<< orphan*/  colTypes; int /*<<< orphan*/  rarg; int /*<<< orphan*/  larg; } ;
typedef  TYPE_1__ SetOperationStmt ;
typedef  TYPE_2__ RelOptInfo ;
typedef  TYPE_3__ PlannerInfo ;
typedef  TYPE_4__ Path ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ SETOP_UNION ; 
 int /*<<< orphan*/  UPPERREL_SETOP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_2__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_2__* FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RelOptInfo *
FUNC17(SetOperationStmt *setOp, PlannerInfo *root,
						List *refnames_tlist,
						List **pTargetList)
{
	RelOptInfo *result_rel;
	Path	   *path;
	RelOptInfo *lrel,
			   *rrel;
	Path	   *lpath;
	Path	   *rpath;
	List	   *lpath_tlist;
	List	   *rpath_tlist;
	List	   *tlist;
	List	   *groupList;
	double		dNumGroups;

	/* Parser should have rejected other cases */
	if (setOp->op != SETOP_UNION)
		FUNC5(ERROR, "only UNION queries can be recursive");
	/* Worktable ID should be assigned */
	FUNC0(root->wt_param_id >= 0);

	/*
	 * Unlike a regular UNION node, process the left and right inputs
	 * separately without any intention of combining them into one Append.
	 */
	lrel = FUNC16(setOp->larg, root,
								  setOp->colTypes, setOp->colCollations,
								  false, -1,
								  refnames_tlist,
								  &lpath_tlist,
								  NULL);
	lpath = lrel->cheapest_total_path;
	/* The right path will want to look at the left one ... */
	root->non_recursive_path = lpath;
	rrel = FUNC16(setOp->rarg, root,
								  setOp->colTypes, setOp->colCollations,
								  false, -1,
								  refnames_tlist,
								  &rpath_tlist,
								  NULL);
	rpath = rrel->cheapest_total_path;
	root->non_recursive_path = NULL;

	/*
	 * Generate tlist for RecursiveUnion path node --- same as in Append cases
	 */
	tlist = FUNC11(setOp->colTypes, setOp->colCollations, false,
								  FUNC14(lpath_tlist, rpath_tlist),
								  refnames_tlist);

	*pTargetList = tlist;

	/* Build result relation. */
	result_rel = FUNC10(root, UPPERREL_SETOP,
								 FUNC2(lrel->relids, rrel->relids));
	result_rel->reltarget = FUNC3(root, tlist);

	/*
	 * If UNION, identify the grouping operators
	 */
	if (setOp->all)
	{
		groupList = NIL;
		dNumGroups = 0;
	}
	else
	{
		/* Identify the grouping semantics */
		groupList = FUNC12(setOp, tlist);

		/* We only support hashing here */
		if (!FUNC13(groupList))
			FUNC6(ERROR,
					(FUNC7(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC9("could not implement recursive UNION"),
					 FUNC8("All column datatypes must be hashable.")));

		/*
		 * For the moment, take the number of distinct groups as equal to the
		 * total input size, ie, the worst case.
		 */
		dNumGroups = lpath->rows + rpath->rows * 10;
	}

	/*
	 * And make the path node.
	 */
	path = (Path *) FUNC4(root,
											   result_rel,
											   lpath,
											   rpath,
											   result_rel->reltarget,
											   groupList,
											   root->wt_param_id,
											   dNumGroups);

	FUNC1(result_rel, path);
	FUNC15(root, result_rel);
	return result_rel;
}