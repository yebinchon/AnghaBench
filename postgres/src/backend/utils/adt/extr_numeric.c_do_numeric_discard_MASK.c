#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int maxScale; int maxScaleCount; int N; int /*<<< orphan*/  sumX2; scalar_t__ calcSumX2; int /*<<< orphan*/  sumX; int /*<<< orphan*/  agg_context; int /*<<< orphan*/  NaNcount; } ;
struct TYPE_10__ {int dscale; scalar_t__ sign; } ;
typedef  TYPE_1__ NumericVar ;
typedef  TYPE_2__ NumericAggState ;
typedef  int /*<<< orphan*/  Numeric ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NUMERIC_NEG ; 
 scalar_t__ NUMERIC_POS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static bool
FUNC8(NumericAggState *state, Numeric newval)
{
	NumericVar	X;
	NumericVar	X2;
	MemoryContext old_context;

	/* Count NaN inputs separately from all else */
	if (FUNC2(newval))
	{
		state->NaNcount--;
		return true;
	}

	/* load processed number in short-lived context */
	FUNC6(newval, &X);

	/*
	 * state->sumX's dscale is the maximum dscale of any of the inputs.
	 * Removing the last input with that dscale would require us to recompute
	 * the maximum dscale of the *remaining* inputs, which we cannot do unless
	 * no more non-NaN inputs remain at all.  So we report a failure instead,
	 * and force the aggregation to be redone from scratch.
	 */
	if (X.dscale == state->maxScale)
	{
		if (state->maxScaleCount > 1 || state->maxScale == 0)
		{
			/*
			 * Some remaining inputs have same dscale, or dscale hasn't gotten
			 * above zero anyway
			 */
			state->maxScaleCount--;
		}
		else if (state->N == 1)
		{
			/* No remaining non-NaN inputs at all, so reset maxScale */
			state->maxScale = 0;
			state->maxScaleCount = 0;
		}
		else
		{
			/* Correct new maxScale is uncertain, must fail */
			return false;
		}
	}

	/* if we need X^2, calculate that in short-lived context */
	if (state->calcSumX2)
	{
		FUNC5(&X2);
		FUNC7(&X, &X, &X2, X.dscale * 2);
	}

	/* The rest of this needs to work in the aggregate context */
	old_context = FUNC1(state->agg_context);

	if (state->N-- > 1)
	{
		/* Negate X, to subtract it from the sum */
		X.sign = (X.sign == NUMERIC_POS ? NUMERIC_NEG : NUMERIC_POS);
		FUNC3(&(state->sumX), &X);

		if (state->calcSumX2)
		{
			/* Negate X^2. X^2 is always positive */
			X2.sign = NUMERIC_NEG;
			FUNC3(&(state->sumX2), &X2);
		}
	}
	else
	{
		/* Zero the sums */
		FUNC0(state->N == 0);

		FUNC4(&state->sumX);
		if (state->calcSumX2)
			FUNC4(&state->sumX2);
	}

	FUNC1(old_context);

	return true;
}