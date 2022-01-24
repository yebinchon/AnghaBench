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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

bool
FUNC2(const char *value, const char *name, int *result)
{
	char	   *end;
	long		numval;

	/* Treat "unset" as an empty string, which will lead to error below */
	if (value == NULL)
		value = "";

	errno = 0;
	numval = FUNC1(value, &end, 0);
	if (errno == 0 && *end == '\0' && end != value && numval == (int) numval)
	{
		*result = (int) numval;
		return true;
	}
	else
	{
		/* string is not recognized; don't clobber *result */
		if (name)
			FUNC0("invalid value \"%s\" for \"%s\": integer expected",
						 value, name);
		return false;
	}
}