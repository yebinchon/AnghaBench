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
typedef  int /*<<< orphan*/  NDBOX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

bool
FUNC5(NDBOX *a, NDBOX *b)
{
	int			i;

	if ((a == NULL) || (b == NULL))
		return false;

	if (FUNC0(a) < FUNC0(b))
	{
		/*
		 * the further comparisons will make sense if the excess dimensions of
		 * (b) were zeroes Since both UL and UR coordinates must be zero, we
		 * can check them all without worrying about which is which.
		 */
		for (i = FUNC0(a); i < FUNC0(b); i++)
		{
			if (FUNC1(b, i) != 0)
				return false;
			if (FUNC4(b, i) != 0)
				return false;
		}
	}

	/* Can't care less about the excess dimensions of (a), if any */
	for (i = 0; i < FUNC3(FUNC0(a), FUNC0(b)); i++)
	{
		if (FUNC3(FUNC1(a, i), FUNC4(a, i)) >
			FUNC3(FUNC1(b, i), FUNC4(b, i)))
			return false;
		if (FUNC2(FUNC1(a, i), FUNC4(a, i)) <
			FUNC2(FUNC1(b, i), FUNC4(b, i)))
			return false;
	}

	return true;
}