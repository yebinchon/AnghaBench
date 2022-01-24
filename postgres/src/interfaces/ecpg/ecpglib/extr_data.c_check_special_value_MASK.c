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
 double FUNC0 () ; 
 double FUNC1 () ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

__attribute__((used)) static bool
FUNC3(char *ptr, double *retval, char **endptr)
{
	if (FUNC2(ptr, "NaN", 3) == 0)
	{
		*retval = FUNC1();
		*endptr = ptr + 3;
		return true;
	}
	else if (FUNC2(ptr, "Infinity", 8) == 0)
	{
		*retval = FUNC0();
		*endptr = ptr + 8;
		return true;
	}
	else if (FUNC2(ptr, "-Infinity", 9) == 0)
	{
		*retval = -FUNC0();
		*endptr = ptr + 9;
		return true;
	}

	return false;
}