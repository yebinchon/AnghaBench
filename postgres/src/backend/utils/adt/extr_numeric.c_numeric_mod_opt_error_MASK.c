#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ ndigits; scalar_t__* digits; } ;
typedef  TYPE_1__ NumericVar ;
typedef  int /*<<< orphan*/ * Numeric ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const_nan ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

Numeric
FUNC7(Numeric num1, Numeric num2, bool *have_error)
{
	Numeric		res;
	NumericVar	arg1;
	NumericVar	arg2;
	NumericVar	result;

	if (have_error)
		*have_error = false;

	if (FUNC0(num1) || FUNC0(num2))
		return FUNC4(&const_nan);

	FUNC3(num1, &arg1);
	FUNC3(num2, &arg2);

	FUNC2(&result);

	/*
	 * If "have_error" is provided, check for division by zero here
	 */
	if (have_error && (arg2.ndigits == 0 || arg2.digits[0] == 0))
	{
		*have_error = true;
		return NULL;
	}

	FUNC6(&arg1, &arg2, &result);

	res = FUNC5(&result, NULL);

	FUNC1(&result);

	return res;
}