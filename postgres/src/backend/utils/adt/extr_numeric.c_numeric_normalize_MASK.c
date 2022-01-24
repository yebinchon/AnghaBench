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
typedef  int /*<<< orphan*/  NumericVar ;
typedef  int /*<<< orphan*/  Numeric ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 

char *
FUNC6(Numeric num)
{
	NumericVar	x;
	char	   *str;
	int			last;

	/*
	 * Handle NaN
	 */
	if (FUNC0(num))
		return FUNC3("NaN");

	FUNC2(num, &x);

	str = FUNC1(&x);

	/* If there's no decimal point, there's certainly nothing to remove. */
	if (FUNC4(str, '.') != NULL)
	{
		/*
		 * Back up over trailing fractional zeroes.  Since there is a decimal
		 * point, this loop will terminate safely.
		 */
		last = FUNC5(str) - 1;
		while (str[last] == '0')
			last--;

		/* We want to get rid of the decimal point too, if it's now last. */
		if (str[last] == '.')
			last--;

		/* Delete whatever we backed up over. */
		str[last + 1] = '\0';
	}

	return str;
}