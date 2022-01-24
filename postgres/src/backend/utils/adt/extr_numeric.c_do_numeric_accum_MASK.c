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
struct TYPE_11__ {int maxScale; int maxScaleCount; int /*<<< orphan*/  sumX2; scalar_t__ calcSumX2; int /*<<< orphan*/  sumX; int /*<<< orphan*/  N; int /*<<< orphan*/  agg_context; int /*<<< orphan*/  NaNcount; } ;
struct TYPE_10__ {int dscale; } ;
typedef  TYPE_1__ NumericVar ;
typedef  TYPE_2__ NumericAggState ;
typedef  int /*<<< orphan*/  Numeric ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC6(NumericAggState *state, Numeric newval)
{
	NumericVar	X;
	NumericVar	X2;
	MemoryContext old_context;

	/* Count NaN inputs separately from all else */
	if (FUNC1(newval))
	{
		state->NaNcount++;
		return;
	}

	/* load processed number in short-lived context */
	FUNC4(newval, &X);

	/*
	 * Track the highest input dscale that we've seen, to support inverse
	 * transitions (see do_numeric_discard).
	 */
	if (X.dscale > state->maxScale)
	{
		state->maxScale = X.dscale;
		state->maxScaleCount = 1;
	}
	else if (X.dscale == state->maxScale)
		state->maxScaleCount++;

	/* if we need X^2, calculate that in short-lived context */
	if (state->calcSumX2)
	{
		FUNC3(&X2);
		FUNC5(&X, &X, &X2, X.dscale * 2);
	}

	/* The rest of this needs to work in the aggregate context */
	old_context = FUNC0(state->agg_context);

	state->N++;

	/* Accumulate sums */
	FUNC2(&(state->sumX), &X);

	if (state->calcSumX2)
		FUNC2(&(state->sumX2), &X2);

	FUNC0(old_context);
}