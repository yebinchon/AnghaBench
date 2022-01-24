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

/* Variables and functions */
 int DBL_DIG ; 
 int /*<<< orphan*/  FUNC0 (double,char*) ; 
 int extra_float_digits ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,double) ; 

char *
FUNC3(double num)
{
	char	   *ascii = (char *) FUNC1(32);
	int			ndig = DBL_DIG + extra_float_digits;

	if (extra_float_digits > 0)
	{
		FUNC0(num, ascii);
		return ascii;
	}

	(void) FUNC2(ascii, 32, ndig, num);
	return ascii;
}