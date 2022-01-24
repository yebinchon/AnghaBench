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
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 

char *
FUNC4(Numeric num, int scale)
{
	NumericVar	x;
	char	   *str;

	/*
	 * Handle NaN
	 */
	if (FUNC0(num))
		return FUNC3("NaN");

	FUNC2(num, &x);

	str = FUNC1(&x, scale);

	return str;
}