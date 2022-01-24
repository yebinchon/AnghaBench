#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ ndigits; int weight; int* digits; } ;
typedef  TYPE_1__ NumericVar ;

/* Variables and functions */
 int FUNC0 (double) ; 
 int DEC_DIGITS ; 
 int NBASE ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const_one ; 
 int /*<<< orphan*/  const_one_point_one ; 
 int /*<<< orphan*/  const_zero_point_nine ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (double) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(const NumericVar *var)
{
	int			ln_dweight;

	if (FUNC1(var, &const_zero_point_nine) >= 0 &&
		FUNC1(var, &const_one_point_one) <= 0)
	{
		/*
		 * 0.9 <= var <= 1.1
		 *
		 * ln(var) has a negative weight (possibly very large).  To get a
		 * reasonably accurate result, estimate it using ln(1+x) ~= x.
		 */
		NumericVar	x;

		FUNC3(&x);
		FUNC6(var, &const_one, &x);

		if (x.ndigits > 0)
		{
			/* Use weight of most significant decimal digit of x */
			ln_dweight = x.weight * DEC_DIGITS + (int) FUNC5(x.digits[0]);
		}
		else
		{
			/* x = 0.  Since ln(1) = 0 exactly, we don't need extra digits */
			ln_dweight = 0;
		}

		FUNC2(&x);
	}
	else
	{
		/*
		 * Estimate the logarithm using the first couple of digits from the
		 * input number.  This will give an accurate result whenever the input
		 * is not too close to 1.
		 */
		if (var->ndigits > 0)
		{
			int			digits;
			int			dweight;
			double		ln_var;

			digits = var->digits[0];
			dweight = var->weight * DEC_DIGITS;

			if (var->ndigits > 1)
			{
				digits = digits * NBASE + var->digits[1];
				dweight -= DEC_DIGITS;
			}

			/*----------
			 * We have var ~= digits * 10^dweight
			 * so ln(var) ~= ln(digits) + dweight * ln(10)
			 *----------
			 */
			ln_var = FUNC4((double) digits) + dweight * 2.302585092994046;
			ln_dweight = (int) FUNC5(FUNC0(ln_var));
		}
		else
		{
			/* Caller should fail on ln(0), but for the moment return zero */
			ln_dweight = 0;
		}
	}

	return ln_dweight;
}