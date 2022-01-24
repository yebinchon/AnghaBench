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
typedef  int int32 ;
typedef  int /*<<< orphan*/  NDBOX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

int32
FUNC5(NDBOX *a, NDBOX *b)
{
	int			i;
	int			dim;

	dim = FUNC3(FUNC0(a), FUNC0(b));

	/* compare the common dimensions */
	for (i = 0; i < dim; i++)
	{
		if (FUNC3(FUNC1(a, i), FUNC4(a, i)) >
			FUNC3(FUNC1(b, i), FUNC4(b, i)))
			return 1;
		if (FUNC3(FUNC1(a, i), FUNC4(a, i)) <
			FUNC3(FUNC1(b, i), FUNC4(b, i)))
			return -1;
	}
	for (i = 0; i < dim; i++)
	{
		if (FUNC2(FUNC1(a, i), FUNC4(a, i)) >
			FUNC2(FUNC1(b, i), FUNC4(b, i)))
			return 1;
		if (FUNC2(FUNC1(a, i), FUNC4(a, i)) <
			FUNC2(FUNC1(b, i), FUNC4(b, i)))
			return -1;
	}

	/* compare extra dimensions to zero */
	if (FUNC0(a) > FUNC0(b))
	{
		for (i = dim; i < FUNC0(a); i++)
		{
			if (FUNC3(FUNC1(a, i), FUNC4(a, i)) > 0)
				return 1;
			if (FUNC3(FUNC1(a, i), FUNC4(a, i)) < 0)
				return -1;
		}
		for (i = dim; i < FUNC0(a); i++)
		{
			if (FUNC2(FUNC1(a, i), FUNC4(a, i)) > 0)
				return 1;
			if (FUNC2(FUNC1(a, i), FUNC4(a, i)) < 0)
				return -1;
		}

		/*
		 * if all common dimensions are equal, the cube with more dimensions
		 * wins
		 */
		return 1;
	}
	if (FUNC0(a) < FUNC0(b))
	{
		for (i = dim; i < FUNC0(b); i++)
		{
			if (FUNC3(FUNC1(b, i), FUNC4(b, i)) > 0)
				return -1;
			if (FUNC3(FUNC1(b, i), FUNC4(b, i)) < 0)
				return 1;
		}
		for (i = dim; i < FUNC0(b); i++)
		{
			if (FUNC2(FUNC1(b, i), FUNC4(b, i)) > 0)
				return -1;
			if (FUNC2(FUNC1(b, i), FUNC4(b, i)) < 0)
				return 1;
		}

		/*
		 * if all common dimensions are equal, the cube with more dimensions
		 * wins
		 */
		return -1;
	}

	/* They're really equal */
	return 0;
}