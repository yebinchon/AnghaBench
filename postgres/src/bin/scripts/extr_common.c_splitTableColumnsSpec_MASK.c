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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 char* FUNC1 (char const*) ; 

void
FUNC2(const char *spec, int encoding,
					  char **table, const char **columns)
{
	bool		inquotes = false;
	const char *cp = spec;

	/*
	 * Find the first '(' not identifier-quoted.  Based on
	 * dequote_downcase_identifier().
	 */
	while (*cp && (*cp != '(' || inquotes))
	{
		if (*cp == '"')
		{
			if (inquotes && cp[1] == '"')
				cp++;			/* pair does not affect quoting */
			else
				inquotes = !inquotes;
			cp++;
		}
		else
			cp += FUNC0(cp, encoding);
	}
	*table = FUNC1(spec);
	(*table)[cp - spec] = '\0'; /* no strndup */
	*columns = cp;
}