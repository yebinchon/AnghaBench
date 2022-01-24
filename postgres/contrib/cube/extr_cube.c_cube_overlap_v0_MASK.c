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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

bool
FUNC5(NDBOX *a, NDBOX *b)
{
	int			i;

	if ((a == NULL) || (b == NULL))
		return false;

	/* swap the box pointers if needed */
	if (FUNC0(a) < FUNC0(b))
	{
		NDBOX	   *tmp = b;

		b = a;
		a = tmp;
	}

	/* compare within the dimensions of (b) */
	for (i = 0; i < FUNC0(b); i++)
	{
		if (FUNC3(FUNC1(a, i), FUNC4(a, i)) > FUNC2(FUNC1(b, i), FUNC4(b, i)))
			return false;
		if (FUNC2(FUNC1(a, i), FUNC4(a, i)) < FUNC3(FUNC1(b, i), FUNC4(b, i)))
			return false;
	}

	/* compare to zero those dimensions in (a) absent in (b) */
	for (i = FUNC0(b); i < FUNC0(a); i++)
	{
		if (FUNC3(FUNC1(a, i), FUNC4(a, i)) > 0)
			return false;
		if (FUNC2(FUNC1(a, i), FUNC4(a, i)) < 0)
			return false;
	}

	return true;
}