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
typedef  scalar_t__ uint16 ;

/* Variables and functions */
 scalar_t__ TSL_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3(char *in, char **end, uint16 *flags)
{
	char	   *start;
	char	   *lastchar;

	/* Skip leading spaces */
	while (*in && FUNC2(in))
		in += FUNC0(in);

	/* Return NULL on empty lines */
	if (*in == '\0')
	{
		*end = NULL;
		return NULL;
	}

	lastchar = start = in;

	/* Find end of word */
	while (*in && !FUNC2(in))
	{
		lastchar = in;
		in += FUNC0(in);
	}

	if (in - lastchar == 1 && FUNC1(lastchar, '*') && flags)
	{
		*flags = TSL_PREFIX;
		*end = lastchar;
	}
	else
	{
		if (flags)
			*flags = 0;
		*end = in;
	}

	return start;
}