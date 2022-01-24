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
typedef  int /*<<< orphan*/  NumericVar ;
typedef  int /*<<< orphan*/  Numeric ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const_nan ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 

Numeric
FUNC7(Numeric num1, Numeric num2, bool *have_error)
{
	NumericVar	arg1;
	NumericVar	arg2;
	NumericVar	result;
	Numeric		res;

	/*
	 * Handle NaN
	 */
	if (FUNC0(num1) || FUNC0(num2))
		return FUNC5(&const_nan);

	/*
	 * Unpack the values, let add_var() compute the result and return it.
	 */
	FUNC4(num1, &arg1);
	FUNC4(num2, &arg2);

	FUNC3(&result);
	FUNC1(&arg1, &arg2, &result);

	res = FUNC6(&result, have_error);

	FUNC2(&result);

	return res;
}