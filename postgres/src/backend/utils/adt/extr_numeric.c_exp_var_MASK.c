#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int dscale; scalar_t__ ndigits; int weight; } ;
typedef  TYPE_1__ NumericVar ;

/* Variables and functions */
 double FUNC0 (double) ; 
 int DEC_DIGITS ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int NUMERIC_MAX_RESULT_SCALE ; 
 int /*<<< orphan*/  NUMERIC_MIN_DISPLAY_SCALE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__ const_one ; 
 TYPE_1__ const const_two ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ; 
 double FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC13(const NumericVar *arg, NumericVar *result, int rscale)
{
	NumericVar	x;
	NumericVar	elem;
	NumericVar	ni;
	double		val;
	int			dweight;
	int			ndiv2;
	int			sig_digits;
	int			local_rscale;

	FUNC8(&x);
	FUNC8(&elem);
	FUNC8(&ni);

	FUNC12(arg, &x);

	/*
	 * Estimate the dweight of the result using floating point arithmetic, so
	 * that we can choose an appropriate local rscale for the calculation.
	 */
	val = FUNC10(&x);

	/* Guard against overflow */
	/* If you change this limit, see also power_var()'s limit */
	if (FUNC0(val) >= NUMERIC_MAX_RESULT_SCALE * 3)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 FUNC6("value overflows numeric format")));

	/* decimal weight = log10(e^x) = x * log10(e) */
	dweight = (int) (val * 0.434294481903252);

	/*
	 * Reduce x to the range -0.01 <= x <= 0.01 (approximately) by dividing by
	 * 2^n, to improve the convergence rate of the Taylor series.
	 */
	if (FUNC0(val) > 0.01)
	{
		NumericVar	tmp;

		FUNC8(&tmp);
		FUNC12(&const_two, &tmp);

		ndiv2 = 1;
		val /= 2;

		while (FUNC0(val) > 0.01)
		{
			ndiv2++;
			val /= 2;
			FUNC2(&tmp, &tmp, &tmp);
		}

		local_rscale = x.dscale + ndiv2;
		FUNC3(&x, &tmp, &x, local_rscale, true);

		FUNC7(&tmp);
	}
	else
		ndiv2 = 0;

	/*
	 * Set the scale for the Taylor series expansion.  The final result has
	 * (dweight + rscale + 1) significant digits.  In addition, we have to
	 * raise the Taylor series result to the power 2^ndiv2, which introduces
	 * an error of up to around log10(2^ndiv2) digits, so work with this many
	 * extra digits of precision (plus a few more for good measure).
	 */
	sig_digits = 1 + dweight + rscale + (int) (ndiv2 * 0.301029995663981);
	sig_digits = FUNC1(sig_digits, 0) + 8;

	local_rscale = sig_digits - 1;

	/*
	 * Use the Taylor series
	 *
	 * exp(x) = 1 + x + x^2/2! + x^3/3! + ...
	 *
	 * Given the limited range of x, this should converge reasonably quickly.
	 * We run the series until the terms fall below the local_rscale limit.
	 */
	FUNC2(&const_one, &x, result);

	FUNC9(&x, &x, &elem, local_rscale);
	FUNC12(&const_two, &ni);
	FUNC3(&elem, &ni, &elem, local_rscale, true);

	while (elem.ndigits != 0)
	{
		FUNC2(result, &elem, result);

		FUNC9(&elem, &x, &elem, local_rscale);
		FUNC2(&ni, &const_one, &ni);
		FUNC3(&elem, &ni, &elem, local_rscale, true);
	}

	/*
	 * Compensate for the argument range reduction.  Since the weight of the
	 * result doubles with each multiplication, we can reduce the local rscale
	 * as we proceed.
	 */
	while (ndiv2-- > 0)
	{
		local_rscale = sig_digits - result->weight * 2 * DEC_DIGITS;
		local_rscale = FUNC1(local_rscale, NUMERIC_MIN_DISPLAY_SCALE);
		FUNC9(result, result, result, local_rscale);
	}

	/* Round to requested rscale */
	FUNC11(result, rscale);

	FUNC7(&x);
	FUNC7(&elem);
	FUNC7(&ni);
}