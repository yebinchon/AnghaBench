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
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC3(char *ptr, double value, const char *delim)
{
	if (FUNC1(value))
		FUNC2(ptr, "%s%s", "NaN", delim);
	else if (FUNC0(value))
	{
		if (value < 0)
			FUNC2(ptr, "%s%s", "-Infinity", delim);
		else
			FUNC2(ptr, "%s%s", "Infinity", delim);
	}
	else
		FUNC2(ptr, "%.15g%s", value, delim);
}