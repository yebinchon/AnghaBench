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
 double FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

void
FUNC5(NDBOX *a, double *size)
{
	double		result;
	int			i;

	if (a == (NDBOX *) NULL)
	{
		/* special case for GiST */
		result = 0.0;
	}
	else if (FUNC2(a) || FUNC1(a) == 0)
	{
		/* necessarily has zero size */
		result = 0.0;
	}
	else
	{
		result = 1.0;
		for (i = 0; i < FUNC1(a); i++)
			result *= FUNC0(FUNC4(a, i) - FUNC3(a, i));
	}
	*size = result;
}