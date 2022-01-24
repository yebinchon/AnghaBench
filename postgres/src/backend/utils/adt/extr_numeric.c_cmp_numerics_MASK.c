#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Numeric ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(Numeric num1, Numeric num2)
{
	int			result;

	/*
	 * We consider all NANs to be equal and larger than any non-NAN. This is
	 * somewhat arbitrary; the important thing is to have a consistent sort
	 * order.
	 */
	if (FUNC1(num1))
	{
		if (FUNC1(num2))
			result = 0;			/* NAN = NAN */
		else
			result = 1;			/* NAN > non-NAN */
	}
	else if (FUNC1(num2))
	{
		result = -1;			/* non-NAN < NAN */
	}
	else
	{
		result = FUNC5(FUNC0(num1), FUNC2(num1),
								FUNC4(num1), FUNC3(num1),
								FUNC0(num2), FUNC2(num2),
								FUNC4(num2), FUNC3(num2));
	}

	return result;
}