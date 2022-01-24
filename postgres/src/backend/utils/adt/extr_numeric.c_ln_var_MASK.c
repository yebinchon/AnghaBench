#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int weight; scalar_t__ ndigits; } ;
typedef  TYPE_1__ const NumericVar ;

/* Variables and functions */
 int DEC_DIGITS ; 
 int /*<<< orphan*/  ERRCODE_INVALID_ARGUMENT_FOR_LOG ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMERIC_MIN_DISPLAY_SCALE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int FUNC2 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 TYPE_1__ const const_one ; 
 int /*<<< orphan*/  const_one_point_one ; 
 TYPE_1__ const const_two ; 
 int /*<<< orphan*/  const_zero ; 
 int /*<<< orphan*/  const_zero_point_nine ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 

__attribute__((used)) static void
FUNC13(const NumericVar *arg, NumericVar *result, int rscale)
{
	NumericVar	x;
	NumericVar	xx;
	NumericVar	ni;
	NumericVar	elem;
	NumericVar	fact;
	int			local_rscale;
	int			cmp;

	cmp = FUNC2(arg, &const_zero);
	if (cmp == 0)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_ARGUMENT_FOR_LOG),
				 FUNC6("cannot take logarithm of zero")));
	else if (cmp < 0)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_ARGUMENT_FOR_LOG),
				 FUNC6("cannot take logarithm of a negative number")));

	FUNC8(&x);
	FUNC8(&xx);
	FUNC8(&ni);
	FUNC8(&elem);
	FUNC8(&fact);

	FUNC10(arg, &x);
	FUNC10(&const_two, &fact);

	/*
	 * Reduce input into range 0.9 < x < 1.1 with repeated sqrt() operations.
	 *
	 * The final logarithm will have up to around rscale+6 significant digits.
	 * Each sqrt() will roughly halve the weight of x, so adjust the local
	 * rscale as we work so that we keep this many significant digits at each
	 * step (plus a few more for good measure).
	 */
	while (FUNC2(&x, &const_zero_point_nine) <= 0)
	{
		local_rscale = rscale - x.weight * DEC_DIGITS / 2 + 8;
		local_rscale = FUNC0(local_rscale, NUMERIC_MIN_DISPLAY_SCALE);
		FUNC11(&x, &x, local_rscale);
		FUNC9(&fact, &const_two, &fact, 0);
	}
	while (FUNC2(&x, &const_one_point_one) >= 0)
	{
		local_rscale = rscale - x.weight * DEC_DIGITS / 2 + 8;
		local_rscale = FUNC0(local_rscale, NUMERIC_MIN_DISPLAY_SCALE);
		FUNC11(&x, &x, local_rscale);
		FUNC9(&fact, &const_two, &fact, 0);
	}

	/*
	 * We use the Taylor series for 0.5 * ln((1+z)/(1-z)),
	 *
	 * z + z^3/3 + z^5/5 + ...
	 *
	 * where z = (x-1)/(x+1) is in the range (approximately) -0.053 .. 0.048
	 * due to the above range-reduction of x.
	 *
	 * The convergence of this is not as fast as one would like, but is
	 * tolerable given that z is small.
	 */
	local_rscale = rscale + 8;

	FUNC12(&x, &const_one, result);
	FUNC1(&x, &const_one, &elem);
	FUNC3(result, &elem, result, local_rscale, true);
	FUNC10(result, &xx);
	FUNC9(result, result, &x, local_rscale);

	FUNC10(&const_one, &ni);

	for (;;)
	{
		FUNC1(&ni, &const_two, &ni);
		FUNC9(&xx, &x, &xx, local_rscale);
		FUNC3(&xx, &ni, &elem, local_rscale, true);

		if (elem.ndigits == 0)
			break;

		FUNC1(result, &elem, result);

		if (elem.weight < (result->weight - local_rscale * 2 / DEC_DIGITS))
			break;
	}

	/* Compensate for argument range reduction, round to requested rscale */
	FUNC9(result, &fact, result, rscale);

	FUNC7(&x);
	FUNC7(&xx);
	FUNC7(&ni);
	FUNC7(&elem);
	FUNC7(&fact);
}