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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * NIL ; 
 char* FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 

bool
FUNC10(char *rawstring, char separator,
					  List **namelist)
{
	char	   *nextp = rawstring;
	bool		done = false;

	*namelist = NIL;

	while (FUNC5(*nextp))
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
			/* Quoted name --- collapse quote-quote pairs, no downcasing */
			curname = nextp + 1;
			for (;;)
			{
				endp = FUNC6(nextp + 1, '"');
				if (endp == NULL)
					return false;	/* mismatched quotes */
				if (endp[1] != '"')
					break;		/* found end of quoted name */
				/* Collapse adjacent quotes into one quote, and look again */
				FUNC3(endp, endp + 1, FUNC7(endp));
				nextp = endp;
			}
			/* endp now points at the terminating quote */
			nextp = endp + 1;
		}
		else
		{
			/* Unquoted name --- extends to separator or whitespace */
			char	   *downname;
			int			len;

			curname = nextp;
			while (*nextp && *nextp != separator &&
				   !FUNC5(*nextp))
				nextp++;
			endp = nextp;
			if (curname == nextp)
				return false;	/* empty unquoted name not allowed */

			/*
			 * Downcase the identifier, using same code as main lexer does.
			 *
			 * XXX because we want to overwrite the input in-place, we cannot
			 * support a downcasing transformation that increases the string
			 * length.  This is not a problem given the current implementation
			 * of downcase_truncate_identifier, but we'll probably have to do
			 * something about this someday.
			 */
			len = endp - curname;
			downname = FUNC1(curname, len, false);
			FUNC0(FUNC7(downname) <= len);
			FUNC8(curname, downname, len);	/* strncpy is required here */
			FUNC4(downname);
		}

		while (FUNC5(*nextp))
			nextp++;			/* skip trailing whitespace */

		if (*nextp == separator)
		{
			nextp++;
			while (FUNC5(*nextp))
				nextp++;		/* skip leading whitespace for next */
			/* we expect another name, so done remains false */
		}
		else if (*nextp == '\0')
			done = true;
		else
			return false;		/* invalid syntax */

		/* Now safe to overwrite separator with a null */
		*endp = '\0';

		/* Truncate name if it's overlength */
		FUNC9(curname, FUNC7(curname), false);

		/*
		 * Finished isolating current name --- add it to list
		 */
		*namelist = FUNC2(*namelist, curname);

		/* Loop back if we didn't reach end of string */
	} while (!done);

	return true;
}