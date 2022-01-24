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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,char const*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3(char *cp, int value, const char *units,
				  bool *is_zero, bool *is_before)
{
	if (value == 0)
		return cp;
	/* first nonzero value sets is_before */
	if (*is_zero)
	{
		*is_before = (value < 0);
		value = FUNC0(value);
	}
	else if (*is_before)
		value = -value;
	FUNC1(cp, " %d %s%s", value, units, (value == 1) ? "" : "s");
	*is_zero = false;
	return cp + FUNC2(cp);
}