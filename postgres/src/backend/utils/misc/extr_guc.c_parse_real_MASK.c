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
 scalar_t__ ERANGE ; 
 int GUC_UNIT ; 
 int GUC_UNIT_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (double,char*,int,double*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (double) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 char* memory_units_hint ; 
 double FUNC3 (char const*,char**) ; 
 char* time_units_hint ; 

bool
FUNC4(const char *value, double *result, int flags, const char **hintmsg)
{
	double		val;
	char	   *endptr;

	/* To suppress compiler warnings, always set output params */
	if (result)
		*result = 0;
	if (hintmsg)
		*hintmsg = NULL;

	errno = 0;
	val = FUNC3(value, &endptr);

	if (endptr == value || errno == ERANGE)
		return false;			/* no HINT for these cases */

	/* reject NaN (infinities will fail range checks later) */
	if (FUNC1(val))
		return false;			/* treat same as syntax error; no HINT */

	/* allow whitespace between number and unit */
	while (FUNC2((unsigned char) *endptr))
		endptr++;

	/* Handle possible unit */
	if (*endptr != '\0')
	{
		if ((flags & GUC_UNIT) == 0)
			return false;		/* this setting does not accept a unit */

		if (!FUNC0(val,
								  endptr, (flags & GUC_UNIT),
								  &val))
		{
			/* invalid unit, or garbage after the unit; set hint and fail. */
			if (hintmsg)
			{
				if (flags & GUC_UNIT_MEMORY)
					*hintmsg = memory_units_hint;
				else
					*hintmsg = time_units_hint;
			}
			return false;
		}
	}

	if (result)
		*result = val;
	return true;
}