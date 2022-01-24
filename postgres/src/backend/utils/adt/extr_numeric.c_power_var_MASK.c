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
typedef  scalar_t__ int64 ;
struct TYPE_21__ {scalar_t__ ndigits; scalar_t__ weight; int dscale; } ;
typedef  TYPE_1__ NumericVar ;

/* Variables and functions */
 double FUNC0 (double) ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMERIC_MAX_DISPLAY_SCALE ; 
 double NUMERIC_MAX_RESULT_SCALE ; 
 int NUMERIC_MIN_DISPLAY_SCALE ; 
 int NUMERIC_MIN_SIG_DIGITS ; 
 scalar_t__ FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const_zero ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__ const*,TYPE_1__*,int) ; 
 double FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__ const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__ const*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC17(const NumericVar *base, const NumericVar *exp, NumericVar *result)
{
	NumericVar	ln_base;
	NumericVar	ln_num;
	int			ln_dweight;
	int			rscale;
	int			local_rscale;
	double		val;

	/* If exp can be represented as an integer, use power_var_int */
	if (exp->ndigits == 0 || exp->ndigits <= exp->weight + 1)
	{
		/* exact integer, but does it fit in int? */
		int64		expval64;

		if (FUNC14(exp, &expval64))
		{
			int			expval = (int) expval64;

			/* Test for overflow by reverse-conversion. */
			if ((int64) expval == expval64)
			{
				/* Okay, select rscale */
				rscale = NUMERIC_MIN_SIG_DIGITS;
				rscale = FUNC1(rscale, base->dscale);
				rscale = FUNC1(rscale, NUMERIC_MIN_DISPLAY_SCALE);
				rscale = FUNC2(rscale, NUMERIC_MAX_DISPLAY_SCALE);

				FUNC15(base, expval, result, rscale);
				return;
			}
		}
	}

	/*
	 * This avoids log(0) for cases of 0 raised to a non-integer.  0 ^ 0 is
	 * handled by power_var_int().
	 */
	if (FUNC3(base, &const_zero) == 0)
	{
		FUNC16(&const_zero, result);
		result->dscale = NUMERIC_MIN_SIG_DIGITS;	/* no need to round */
		return;
	}

	FUNC10(&ln_base);
	FUNC10(&ln_num);

	/*----------
	 * Decide on the scale for the ln() calculation.  For this we need an
	 * estimate of the weight of the result, which we obtain by doing an
	 * initial low-precision calculation of exp * ln(base).
	 *
	 * We want result = e ^ (exp * ln(base))
	 * so result dweight = log10(result) = exp * ln(base) * log10(e)
	 *
	 * We also perform a crude overflow test here so that we can exit early if
	 * the full-precision result is sure to overflow, and to guard against
	 * integer overflow when determining the scale for the real calculation.
	 * exp_var() supports inputs up to NUMERIC_MAX_RESULT_SCALE * 3, so the
	 * result will overflow if exp * ln(base) >= NUMERIC_MAX_RESULT_SCALE * 3.
	 * Since the values here are only approximations, we apply a small fuzz
	 * factor to this overflow test and let exp_var() determine the exact
	 * overflow threshold so that it is consistent for all inputs.
	 *----------
	 */
	ln_dweight = FUNC7(base);

	local_rscale = 8 - ln_dweight;
	local_rscale = FUNC1(local_rscale, NUMERIC_MIN_DISPLAY_SCALE);
	local_rscale = FUNC2(local_rscale, NUMERIC_MAX_DISPLAY_SCALE);

	FUNC11(base, &ln_base, local_rscale);

	FUNC12(&ln_base, exp, &ln_num, local_rscale);

	val = FUNC13(&ln_num);

	/* initial overflow test with fuzz factor */
	if (FUNC0(val) > NUMERIC_MAX_RESULT_SCALE * 3.01)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 FUNC6("value overflows numeric format")));

	val *= 0.434294481903252;	/* approximate decimal result weight */

	/* choose the result scale */
	rscale = NUMERIC_MIN_SIG_DIGITS - (int) val;
	rscale = FUNC1(rscale, base->dscale);
	rscale = FUNC1(rscale, exp->dscale);
	rscale = FUNC1(rscale, NUMERIC_MIN_DISPLAY_SCALE);
	rscale = FUNC2(rscale, NUMERIC_MAX_DISPLAY_SCALE);

	/* set the scale for the real exp * ln(base) calculation */
	local_rscale = rscale + (int) val - ln_dweight + 8;
	local_rscale = FUNC1(local_rscale, NUMERIC_MIN_DISPLAY_SCALE);

	/* and do the real calculation */

	FUNC11(base, &ln_base, local_rscale);

	FUNC12(&ln_base, exp, &ln_num, local_rscale);

	FUNC8(&ln_num, result, rscale);

	FUNC9(&ln_num);
	FUNC9(&ln_base);
}