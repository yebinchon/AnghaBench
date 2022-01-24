#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ ndigits; scalar_t__* digits; } ;
typedef  TYPE_1__ NumericVar ;
typedef  int /*<<< orphan*/ * Numeric ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const_nan ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int*) ; 
 int FUNC7 (TYPE_1__*,TYPE_1__*) ; 

Numeric
FUNC8(Numeric num1, Numeric num2, bool *have_error)
{
	NumericVar	arg1;
	NumericVar	arg2;
	NumericVar	result;
	Numeric		res;
	int			rscale;

	if (have_error)
		*have_error = false;

	/*
	 * Handle NaN
	 */
	if (FUNC0(num1) || FUNC0(num2))
		return FUNC5(&const_nan);

	/*
	 * Unpack the arguments
	 */
	FUNC4(num1, &arg1);
	FUNC4(num2, &arg2);

	FUNC3(&result);

	/*
	 * Select scale for division result
	 */
	rscale = FUNC7(&arg1, &arg2);

	/*
	 * If "have_error" is provided, check for division by zero here
	 */
	if (have_error && (arg2.ndigits == 0 || arg2.digits[0] == 0))
	{
		*have_error = true;
		return NULL;
	}

	/*
	 * Do the divide and return the result
	 */
	FUNC1(&arg1, &arg2, &result, rscale, true);

	res = FUNC6(&result, have_error);

	FUNC2(&result);

	return res;
}