#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {double total_cost; double plan_rows; double startup_cost; } ;
struct TYPE_9__ {double per_tuple; int /*<<< orphan*/  startup; } ;
struct TYPE_8__ {scalar_t__ subLinkType; scalar_t__ parParam; double per_call_cost; int /*<<< orphan*/  startup_cost; scalar_t__ useHashTable; scalar_t__ testexpr; } ;
typedef  TYPE_1__ SubPlan ;
typedef  TYPE_2__ QualCost ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  TYPE_3__ Plan ;
typedef  int /*<<< orphan*/  Expr ;
typedef  double Cost ;

/* Variables and functions */
 scalar_t__ ALL_SUBLINK ; 
 scalar_t__ ANY_SUBLINK ; 
 scalar_t__ EXISTS_SUBLINK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 double cpu_operator_cost ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

void
FUNC5(PlannerInfo *root, SubPlan *subplan, Plan *plan)
{
	QualCost	sp_cost;

	/* Figure any cost for evaluating the testexpr */
	FUNC2(&sp_cost,
				   FUNC3((Expr *) subplan->testexpr),
				   root);

	if (subplan->useHashTable)
	{
		/*
		 * If we are using a hash table for the subquery outputs, then the
		 * cost of evaluating the query is a one-time cost.  We charge one
		 * cpu_operator_cost per tuple for the work of loading the hashtable,
		 * too.
		 */
		sp_cost.startup += plan->total_cost +
			cpu_operator_cost * plan->plan_rows;

		/*
		 * The per-tuple costs include the cost of evaluating the lefthand
		 * expressions, plus the cost of probing the hashtable.  We already
		 * accounted for the lefthand expressions as part of the testexpr, and
		 * will also have counted one cpu_operator_cost for each comparison
		 * operator.  That is probably too low for the probing cost, but it's
		 * hard to make a better estimate, so live with it for now.
		 */
	}
	else
	{
		/*
		 * Otherwise we will be rescanning the subplan output on each
		 * evaluation.  We need to estimate how much of the output we will
		 * actually need to scan.  NOTE: this logic should agree with the
		 * tuple_fraction estimates used by make_subplan() in
		 * plan/subselect.c.
		 */
		Cost		plan_run_cost = plan->total_cost - plan->startup_cost;

		if (subplan->subLinkType == EXISTS_SUBLINK)
		{
			/* we only need to fetch 1 tuple; clamp to avoid zero divide */
			sp_cost.per_tuple += plan_run_cost / FUNC1(plan->plan_rows);
		}
		else if (subplan->subLinkType == ALL_SUBLINK ||
				 subplan->subLinkType == ANY_SUBLINK)
		{
			/* assume we need 50% of the tuples */
			sp_cost.per_tuple += 0.50 * plan_run_cost;
			/* also charge a cpu_operator_cost per row examined */
			sp_cost.per_tuple += 0.50 * plan->plan_rows * cpu_operator_cost;
		}
		else
		{
			/* assume we need all tuples */
			sp_cost.per_tuple += plan_run_cost;
		}

		/*
		 * Also account for subplan's startup cost. If the subplan is
		 * uncorrelated or undirect correlated, AND its topmost node is one
		 * that materializes its output, assume that we'll only need to pay
		 * its startup cost once; otherwise assume we pay the startup cost
		 * every time.
		 */
		if (subplan->parParam == NIL &&
			FUNC0(FUNC4(plan)))
			sp_cost.startup += plan->startup_cost;
		else
			sp_cost.per_tuple += plan->startup_cost;
	}

	subplan->startup_cost = sp_cost.startup;
	subplan->per_call_cost = sp_cost.per_tuple;
}