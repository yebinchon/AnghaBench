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
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

bool
FUNC5(char *rawstring, char separator,
			 List **namelist)
{
	char	   *nextp = rawstring;
	bool		done = false;

	*namelist = NIL;

	while (FUNC2(*nextp))
		nextp++;				/* skip leading whitespace */

	if (*nextp == '\0')
		return true;			/* allow empty string */

	/* At the top of the loop, we are at start of a new identifier. */
	do
	{
		char	   *curname;
		char	   *endp;

		if (*nextp == '"')
		{
			/* Quoted name --- collapse quote-quote pairs */
			curname = nextp + 1;
			for (;;)
			{
				endp = FUNC3(nextp + 1, '"');
				if (endp == NULL)
					return false;	/* mismatched quotes */
				if (endp[1] != '"')
					break;		/* found end of quoted name */
				/* Collapse adjacent quotes into one quote, and look again */
				FUNC1(endp, endp + 1, FUNC4(endp));
				nextp = endp;
			}
			/* endp now points at the terminating quote */
			nextp = endp + 1;
		}
		else
		{
			/* Unquoted name --- extends to separator or whitespace */
			curname = nextp;
			while (*nextp && *nextp != separator &&
				   !FUNC2(*nextp))
				nextp++;
			endp = nextp;
			if (curname == nextp)
				return false;	/* empty unquoted name not allowed */
		}

		while (FUNC2(*nextp))
			nextp++;			/* skip trailing whitespace */

		if (*nextp == separator)
		{
			nextp++;
			while (FUNC2(*nextp))
				nextp++;		/* skip leading whitespace for next */
			/* we expect another name, so done remains false */
		}
		else if (*nextp == '\0')
			done = true;
		else
			return false;		/* invalid syntax */

		/* Now safe to overwrite separator with a null */
		*endp = '\0';

		/*
		 * Finished isolating current name --- add it to list
		 */
		*namelist = FUNC0(*namelist, curname);

		/* Loop back if we didn't reach end of string */
	} while (!done);

	return true;
}