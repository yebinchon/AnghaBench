#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ sign; void* dscale; void* rscale; } ;
typedef  TYPE_1__ numeric ;

/* Variables and functions */
 void* FUNC0 (void*,void*) ; 
 scalar_t__ NUMERIC_NEG ; 
 scalar_t__ NUMERIC_POS ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int
FUNC5(numeric *var1, numeric *var2, numeric *result)
{
	/*
	 * Decide on the signs of the two variables what to do
	 */
	if (var1->sign == NUMERIC_POS)
	{
		if (var2->sign == NUMERIC_NEG)
		{
			/* ----------
			 * var1 is positive, var2 is negative
			 * result = +(ABS(var1) + ABS(var2))
			 * ----------
			 */
			if (FUNC1(var1, var2, result) != 0)
				return -1;
			result->sign = NUMERIC_POS;
		}
		else
		{
			/* ----------
			 * Both are positive
			 * Must compare absolute values
			 * ----------
			 */
			switch (FUNC2(var1, var2))
			{
				case 0:
					/* ----------
					 * ABS(var1) == ABS(var2)
					 * result = ZERO
					 * ----------
					 */
					FUNC4(result);
					result->rscale = FUNC0(var1->rscale, var2->rscale);
					result->dscale = FUNC0(var1->dscale, var2->dscale);
					break;

				case 1:
					/* ----------
					 * ABS(var1) > ABS(var2)
					 * result = +(ABS(var1) - ABS(var2))
					 * ----------
					 */
					if (FUNC3(var1, var2, result) != 0)
						return -1;
					result->sign = NUMERIC_POS;
					break;

				case -1:
					/* ----------
					 * ABS(var1) < ABS(var2)
					 * result = -(ABS(var2) - ABS(var1))
					 * ----------
					 */
					if (FUNC3(var2, var1, result) != 0)
						return -1;
					result->sign = NUMERIC_NEG;
					break;
			}
		}
	}
	else
	{
		if (var2->sign == NUMERIC_NEG)
		{
			/* ----------
			 * Both are negative
			 * Must compare absolute values
			 * ----------
			 */
			switch (FUNC2(var1, var2))
			{
				case 0:
					/* ----------
					 * ABS(var1) == ABS(var2)
					 * result = ZERO
					 * ----------
					 */
					FUNC4(result);
					result->rscale = FUNC0(var1->rscale, var2->rscale);
					result->dscale = FUNC0(var1->dscale, var2->dscale);
					break;

				case 1:
					/* ----------
					 * ABS(var1) > ABS(var2)
					 * result = -(ABS(var1) - ABS(var2))
					 * ----------
					 */
					if (FUNC3(var1, var2, result) != 0)
						return -1;
					result->sign = NUMERIC_NEG;
					break;

				case -1:
					/* ----------
					 * ABS(var1) < ABS(var2)
					 * result = +(ABS(var2) - ABS(var1))
					 * ----------
					 */
					if (FUNC3(var2, var1, result) != 0)
						return -1;
					result->sign = NUMERIC_POS;
					break;
			}
		}
		else
		{
			/* ----------
			 * var1 is negative, var2 is positive
			 * result = -(ABS(var1) + ABS(var2))
			 * ----------
			 */
			if (FUNC1(var1, var2, result) != 0)
				return -1;
			result->sign = NUMERIC_NEG;
		}
	}

	return 0;
}