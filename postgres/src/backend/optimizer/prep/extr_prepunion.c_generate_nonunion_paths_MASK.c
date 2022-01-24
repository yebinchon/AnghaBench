#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_49__   TYPE_4__ ;
typedef  struct TYPE_48__   TYPE_3__ ;
typedef  struct TYPE_47__   TYPE_2__ ;
typedef  struct TYPE_46__   TYPE_1__ ;

/* Type definitions */
struct TYPE_49__ {double rows; } ;
struct TYPE_48__ {double tuple_fraction; } ;
struct TYPE_47__ {double rows; int /*<<< orphan*/  reltarget; int /*<<< orphan*/  relids; TYPE_4__* cheapest_total_path; } ;
struct TYPE_46__ {int op; int /*<<< orphan*/  colTypes; scalar_t__ all; int /*<<< orphan*/  colCollations; int /*<<< orphan*/  rarg; int /*<<< orphan*/  larg; } ;
typedef  TYPE_1__ SetOperationStmt ;
typedef  int /*<<< orphan*/  SetOpCmd ;
typedef  TYPE_2__ RelOptInfo ;
typedef  TYPE_3__ PlannerInfo ;
typedef  TYPE_4__ Path ;
typedef  TYPE_4__ List ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 double FUNC0 (double,double) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  SETOPCMD_EXCEPT ; 
 int /*<<< orphan*/  SETOPCMD_EXCEPT_ALL ; 
 int /*<<< orphan*/  SETOPCMD_INTERSECT ; 
 int /*<<< orphan*/  SETOPCMD_INTERSECT_ALL ; 
#define  SETOP_EXCEPT 129 
 int /*<<< orphan*/  SETOP_HASHED ; 
#define  SETOP_INTERSECT 128 
 int /*<<< orphan*/  SETOP_SORTED ; 
 int /*<<< orphan*/  UPPERREL_SETOP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,TYPE_4__*,TYPE_4__*,double,double,char*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,int,double,double) ; 
 scalar_t__ FUNC7 (TYPE_3__*,TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_4__*,TYPE_4__*) ; 
 TYPE_4__* FUNC11 (TYPE_1__*,TYPE_4__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC13 (TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_4__*,TYPE_4__*) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,TYPE_4__*,TYPE_4__**,double*) ; 

__attribute__((used)) static RelOptInfo *
FUNC16(SetOperationStmt *op, PlannerInfo *root,
						List *refnames_tlist,
						List **pTargetList)
{
	RelOptInfo *result_rel;
	RelOptInfo *lrel,
			   *rrel;
	double		save_fraction = root->tuple_fraction;
	Path	   *lpath,
			   *rpath,
			   *path;
	List	   *lpath_tlist,
			   *rpath_tlist,
			   *tlist_list,
			   *tlist,
			   *groupList,
			   *pathlist;
	double		dLeftGroups,
				dRightGroups,
				dNumGroups,
				dNumOutputRows;
	bool		use_hash;
	SetOpCmd	cmd;
	int			firstFlag;

	/*
	 * Tell children to fetch all tuples.
	 */
	root->tuple_fraction = 0.0;

	/* Recurse on children, ensuring their outputs are marked */
	lrel = FUNC15(op->larg, root,
								  op->colTypes, op->colCollations,
								  false, 0,
								  refnames_tlist,
								  &lpath_tlist,
								  &dLeftGroups);
	lpath = lrel->cheapest_total_path;
	rrel = FUNC15(op->rarg, root,
								  op->colTypes, op->colCollations,
								  false, 1,
								  refnames_tlist,
								  &rpath_tlist,
								  &dRightGroups);
	rpath = rrel->cheapest_total_path;

	/* Undo effects of forcing tuple_fraction to 0 */
	root->tuple_fraction = save_fraction;

	/*
	 * For EXCEPT, we must put the left input first.  For INTERSECT, either
	 * order should give the same results, and we prefer to put the smaller
	 * input first in order to minimize the size of the hash table in the
	 * hashing case.  "Smaller" means the one with the fewer groups.
	 */
	if (op->op == SETOP_EXCEPT || dLeftGroups <= dRightGroups)
	{
		pathlist = FUNC13(lpath, rpath);
		tlist_list = FUNC13(lpath_tlist, rpath_tlist);
		firstFlag = 0;
	}
	else
	{
		pathlist = FUNC13(rpath, lpath);
		tlist_list = FUNC13(rpath_tlist, lpath_tlist);
		firstFlag = 1;
	}

	/*
	 * Generate tlist for Append plan node.
	 *
	 * The tlist for an Append plan isn't important as far as the Append is
	 * concerned, but we must make it look real anyway for the benefit of the
	 * next plan level up.  In fact, it has to be real enough that the flag
	 * column is shown as a variable not a constant, else setrefs.c will get
	 * confused.
	 */
	tlist = FUNC10(op->colTypes, op->colCollations, true,
								  tlist_list, refnames_tlist);

	*pTargetList = tlist;

	/* Build result relation. */
	result_rel = FUNC9(root, UPPERREL_SETOP,
								 FUNC2(lrel->relids, rrel->relids));
	result_rel->reltarget = FUNC5(root, tlist);

	/*
	 * Append the child results together.
	 */
	path = (Path *) FUNC4(root, result_rel, pathlist, NIL,
									   NIL, NULL, 0, false, NIL, -1);

	/* Identify the grouping semantics */
	groupList = FUNC11(op, tlist);

	/*
	 * Estimate number of distinct groups that we'll need hashtable entries
	 * for; this is the size of the left-hand input for EXCEPT, or the smaller
	 * input for INTERSECT.  Also estimate the number of eventual output rows.
	 * In non-ALL cases, we estimate each group produces one output row; in
	 * ALL cases use the relevant relation size.  These are worst-case
	 * estimates, of course, but we need to be conservative.
	 */
	if (op->op == SETOP_EXCEPT)
	{
		dNumGroups = dLeftGroups;
		dNumOutputRows = op->all ? lpath->rows : dNumGroups;
	}
	else
	{
		dNumGroups = FUNC0(dLeftGroups, dRightGroups);
		dNumOutputRows = op->all ? FUNC0(lpath->rows, rpath->rows) : dNumGroups;
	}

	/*
	 * Decide whether to hash or sort, and add a sort node if needed.
	 */
	use_hash = FUNC3(root, groupList, path,
								   dNumGroups, dNumOutputRows,
								   (op->op == SETOP_INTERSECT) ? "INTERSECT" : "EXCEPT");

	if (groupList && !use_hash)
		path = (Path *) FUNC7(root,
										 result_rel,
										 path,
										 FUNC14(root,
																	   groupList,
																	   tlist),
										 -1.0);

	/*
	 * Finally, add a SetOp path node to generate the correct output.
	 */
	switch (op->op)
	{
		case SETOP_INTERSECT:
			cmd = op->all ? SETOPCMD_INTERSECT_ALL : SETOPCMD_INTERSECT;
			break;
		case SETOP_EXCEPT:
			cmd = op->all ? SETOPCMD_EXCEPT_ALL : SETOPCMD_EXCEPT;
			break;
		default:
			FUNC8(ERROR, "unrecognized set op: %d", (int) op->op);
			cmd = SETOPCMD_INTERSECT;	/* keep compiler quiet */
			break;
	}
	path = (Path *) FUNC6(root,
									  result_rel,
									  path,
									  cmd,
									  use_hash ? SETOP_HASHED : SETOP_SORTED,
									  groupList,
									  FUNC12(op->colTypes) + 1,
									  use_hash ? firstFlag : -1,
									  dNumGroups,
									  dNumOutputRows);

	result_rel->rows = path->rows;
	FUNC1(result_rel, path);
	return result_rel;
}