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
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_9__ {int ndigits; int weight; scalar_t__ sign; int /*<<< orphan*/ * digits; } ;
typedef  TYPE_1__ NumericVar ;
typedef  int /*<<< orphan*/  NumericDigit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NBASE ; 
 scalar_t__ NUMERIC_NEG ; 
 int /*<<< orphan*/  PG_INT64_MIN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static bool
FUNC9(const NumericVar *var, int64 *result)
{
	NumericDigit *digits;
	int			ndigits;
	int			weight;
	int			i;
	int64		val;
	bool		neg;
	NumericVar	rounded;

	/* Round to nearest integer */
	FUNC2(&rounded);
	FUNC6(var, &rounded);
	FUNC5(&rounded, 0);

	/* Check for zero input */
	FUNC7(&rounded);
	ndigits = rounded.ndigits;
	if (ndigits == 0)
	{
		*result = 0;
		FUNC1(&rounded);
		return true;
	}

	/*
	 * For input like 10000000000, we must treat stripped digits as real. So
	 * the loop assumes there are weight+1 digits before the decimal point.
	 */
	weight = rounded.weight;
	FUNC0(weight >= 0 && ndigits <= weight + 1);

	/*
	 * Construct the result. To avoid issues with converting a value
	 * corresponding to INT64_MIN (which can't be represented as a positive 64
	 * bit two's complement integer), accumulate value as a negative number.
	 */
	digits = rounded.digits;
	neg = (rounded.sign == NUMERIC_NEG);
	val = -digits[0];
	for (i = 1; i <= weight; i++)
	{
		if (FUNC8(FUNC3(val, NBASE, &val)))
		{
			FUNC1(&rounded);
			return false;
		}

		if (i < ndigits)
		{
			if (FUNC8(FUNC4(val, digits[i], &val)))
			{
				FUNC1(&rounded);
				return false;
			}
		}
	}

	FUNC1(&rounded);

	if (!neg)
	{
		if (FUNC8(val == PG_INT64_MIN))
			return false;
		val = -val;
	}
	*result = val;

	return true;
}