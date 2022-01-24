#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {scalar_t__ dscale; } ;
typedef  TYPE_1__ NumericVar ;
typedef  int /*<<< orphan*/  Numeric ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  const_one ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(Numeric operand, Numeric bound1, Numeric bound2,
			   const NumericVar *count_var, NumericVar *result_var)
{
	NumericVar	bound1_var;
	NumericVar	bound2_var;
	NumericVar	operand_var;

	FUNC5(bound1, &bound1_var);
	FUNC5(bound2, &bound2_var);
	FUNC5(operand, &operand_var);

	if (FUNC1(&bound1_var, &bound2_var) < 0)
	{
		FUNC8(&operand_var, &bound1_var, &operand_var);
		FUNC8(&bound2_var, &bound1_var, &bound2_var);
		FUNC2(&operand_var, &bound2_var, result_var,
				FUNC7(&operand_var, &bound2_var), true);
	}
	else
	{
		FUNC8(&bound1_var, &operand_var, &operand_var);
		FUNC8(&bound1_var, &bound2_var, &bound1_var);
		FUNC2(&operand_var, &bound1_var, result_var,
				FUNC7(&operand_var, &bound1_var), true);
	}

	FUNC6(result_var, count_var, result_var,
			result_var->dscale + count_var->dscale);
	FUNC0(result_var, &const_one, result_var);
	FUNC3(result_var, result_var);

	FUNC4(&bound1_var);
	FUNC4(&bound2_var);
	FUNC4(&operand_var);
}