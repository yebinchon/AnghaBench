#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  StrategyNumber ;
typedef  int /*<<< orphan*/  PartitionPruneStep ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  GeneratePruningStepsContext ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  Bitmapset ;

/* Variables and functions */
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC6(GeneratePruningStepsContext *context,
					   StrategyNumber step_opstrategy,
					   bool step_op_is_ne,
					   Expr *step_lastexpr,
					   Oid step_lastcmpfn,
					   int step_lastkeyno,
					   Bitmapset *step_nullkeys,
					   List *prefix)
{
	/* Quick exit if there are no values to prefix with. */
	if (FUNC3(prefix) == 0)
	{
		PartitionPruneStep *step;

		step = FUNC0(context,
								 step_opstrategy,
								 step_op_is_ne,
								 FUNC4(step_lastexpr),
								 FUNC5(step_lastcmpfn),
								 step_nullkeys);
		return FUNC4(step);
	}

	/* Recurse to generate steps for various combinations. */
	return FUNC1(context,
										  step_opstrategy,
										  step_op_is_ne,
										  step_lastexpr,
										  step_lastcmpfn,
										  step_lastkeyno,
										  step_nullkeys,
										  prefix,
										  FUNC2(prefix),
										  NIL, NIL);
}