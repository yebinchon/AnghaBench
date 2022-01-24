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
struct TYPE_5__ {int /*<<< orphan*/  statsTuple; } ;
typedef  TYPE_1__ VariableStatData ;
typedef  double Selectivity ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BooleanEqualOperator ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 double FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

Selectivity
FUNC5(PlannerInfo *root, Node *arg, int varRelid)
{
	VariableStatData vardata;
	double		selec;

	FUNC3(root, arg, varRelid, &vardata);
	if (FUNC1(vardata.statsTuple))
	{
		/*
		 * A boolean variable V is equivalent to the clause V = 't', so we
		 * compute the selectivity as if that is what we have.
		 */
		selec = FUNC4(&vardata, BooleanEqualOperator,
							 FUNC0(true), false, true, false);
	}
	else
	{
		/* Otherwise, the default estimate is 0.5 */
		selec = 0.5;
	}
	FUNC2(vardata);
	return selec;
}