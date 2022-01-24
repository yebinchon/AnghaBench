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
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 double FUNC1 (char const*,char**) ; 
 scalar_t__ FUNC2 (int) ; 

bool
FUNC3(const char *str, bool errorOK, double *dv)
{
	char	   *end;

	errno = 0;
	*dv = FUNC1(str, &end);

	if (FUNC2(errno != 0))
	{
		if (!errorOK)
			FUNC0(stderr,
					"value \"%s\" is out of range for type double\n", str);
		return false;
	}

	if (FUNC2(end == str || *end != '\0'))
	{
		if (!errorOK)
			FUNC0(stderr,
					"invalid input syntax for type double: \"%s\"\n", str);
		return false;
	}
	return true;
}