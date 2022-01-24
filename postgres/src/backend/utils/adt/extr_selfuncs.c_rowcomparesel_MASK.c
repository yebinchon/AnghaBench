#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  rargs; int /*<<< orphan*/  largs; int /*<<< orphan*/  inputcollids; int /*<<< orphan*/  opnos; } ;
typedef  int /*<<< orphan*/  SpecialJoinInfo ;
typedef  int /*<<< orphan*/  Selectivity ;
typedef  TYPE_1__ RowCompareExpr ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinType ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

Selectivity
FUNC6(PlannerInfo *root,
			  RowCompareExpr *clause,
			  int varRelid, JoinType jointype, SpecialJoinInfo *sjinfo)
{
	Selectivity s1;
	Oid			opno = FUNC3(clause->opnos);
	Oid			inputcollid = FUNC3(clause->inputcollids);
	List	   *opargs;
	bool		is_join_clause;

	/* Build equivalent arg list for single operator */
	opargs = FUNC4(FUNC2(clause->largs), FUNC2(clause->rargs));

	/*
	 * Decide if it's a join clause.  This should match clausesel.c's
	 * treat_as_join_clause(), except that we intentionally consider only the
	 * leading columns and not the rest of the clause.
	 */
	if (varRelid != 0)
	{
		/*
		 * Caller is forcing restriction mode (eg, because we are examining an
		 * inner indexscan qual).
		 */
		is_join_clause = false;
	}
	else if (sjinfo == NULL)
	{
		/*
		 * It must be a restriction clause, since it's being evaluated at a
		 * scan node.
		 */
		is_join_clause = false;
	}
	else
	{
		/*
		 * Otherwise, it's a join if there's more than one relation used.
		 */
		is_join_clause = (FUNC0((Node *) opargs) > 1);
	}

	if (is_join_clause)
	{
		/* Estimate selectivity for a join clause. */
		s1 = FUNC1(root, opno,
							  opargs,
							  inputcollid,
							  jointype,
							  sjinfo);
	}
	else
	{
		/* Estimate selectivity for a restriction clause. */
		s1 = FUNC5(root, opno,
									 opargs,
									 inputcollid,
									 varRelid);
	}

	return s1;
}