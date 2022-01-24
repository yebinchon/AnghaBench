#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  var; int /*<<< orphan*/ * rel; } ;
typedef  TYPE_1__ VariableStatData ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

bool
FUNC6(PlannerInfo *root, List *args, int varRelid,
						 VariableStatData *vardata, Node **other,
						 bool *varonleft)
{
	Node	   *left,
			   *right;
	VariableStatData rdata;

	/* Fail if not a binary opclause (probably shouldn't happen) */
	if (FUNC4(args) != 2)
		return false;

	left = (Node *) FUNC3(args);
	right = (Node *) FUNC5(args);

	/*
	 * Examine both sides.  Note that when varRelid is nonzero, Vars of other
	 * relations will be treated as pseudoconstants.
	 */
	FUNC2(root, left, varRelid, vardata);
	FUNC2(root, right, varRelid, &rdata);

	/*
	 * If one side is a variable and the other not, we win.
	 */
	if (vardata->rel && rdata.rel == NULL)
	{
		*varonleft = true;
		*other = FUNC1(root, rdata.var);
		/* Assume we need no ReleaseVariableStats(rdata) here */
		return true;
	}

	if (vardata->rel == NULL && rdata.rel)
	{
		*varonleft = false;
		*other = FUNC1(root, vardata->var);
		/* Assume we need no ReleaseVariableStats(*vardata) here */
		*vardata = rdata;
		return true;
	}

	/* Oops, clause has wrong structure (probably var op var) */
	FUNC0(*vardata);
	FUNC0(rdata);

	return false;
}