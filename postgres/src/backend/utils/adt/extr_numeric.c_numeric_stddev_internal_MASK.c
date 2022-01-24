#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ N; scalar_t__ NaNcount; int /*<<< orphan*/  sumX2; int /*<<< orphan*/  sumX; } ;
struct TYPE_27__ {int dscale; } ;
typedef  TYPE_1__ const NumericVar ;
typedef  TYPE_2__ NumericAggState ;
typedef  int /*<<< orphan*/ * Numeric ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,TYPE_1__ const*) ; 
 TYPE_1__ const const_nan ; 
 TYPE_1__ const const_one ; 
 TYPE_1__ const const_zero ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*,int) ; 
 int FUNC8 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 

__attribute__((used)) static Numeric
FUNC11(NumericAggState *state,
						bool variance, bool sample,
						bool *is_null)
{
	Numeric		res;
	NumericVar	vN,
				vsumX,
				vsumX2,
				vNminus1;
	const NumericVar *comp;
	int			rscale;

	/* Deal with empty input and NaN-input cases */
	if (state == NULL || (state->N + state->NaNcount) == 0)
	{
		*is_null = true;
		return NULL;
	}

	*is_null = false;

	if (state->NaNcount > 0)
		return FUNC6(&const_nan);

	FUNC4(&vN);
	FUNC4(&vsumX);
	FUNC4(&vsumX2);

	FUNC5(state->N, &vN);
	FUNC0(&(state->sumX), &vsumX);
	FUNC0(&(state->sumX2), &vsumX2);

	/*
	 * Sample stddev and variance are undefined when N <= 1; population stddev
	 * is undefined when N == 0. Return NULL in either case.
	 */
	if (sample)
		comp = &const_one;
	else
		comp = &const_zero;

	if (FUNC1(&vN, comp) <= 0)
	{
		*is_null = true;
		return NULL;
	}

	FUNC4(&vNminus1);
	FUNC10(&vN, &const_one, &vNminus1);

	/* compute rscale for mul_var calls */
	rscale = vsumX.dscale * 2;

	FUNC7(&vsumX, &vsumX, &vsumX, rscale);	/* vsumX = sumX * sumX */
	FUNC7(&vN, &vsumX2, &vsumX2, rscale); /* vsumX2 = N * sumX2 */
	FUNC10(&vsumX2, &vsumX, &vsumX2);	/* N * sumX2 - sumX * sumX */

	if (FUNC1(&vsumX2, &const_zero) <= 0)
	{
		/* Watch out for roundoff error producing a negative numerator */
		res = FUNC6(&const_zero);
	}
	else
	{
		if (sample)
			FUNC7(&vN, &vNminus1, &vNminus1, 0);	/* N * (N - 1) */
		else
			FUNC7(&vN, &vN, &vNminus1, 0);	/* N * N */
		rscale = FUNC8(&vsumX2, &vNminus1);
		FUNC2(&vsumX2, &vNminus1, &vsumX, rscale, true);	/* variance */
		if (!variance)
			FUNC9(&vsumX, &vsumX, rscale);	/* stddev */

		res = FUNC6(&vsumX);
	}

	FUNC3(&vNminus1);
	FUNC3(&vsumX);
	FUNC3(&vsumX2);

	return res;
}