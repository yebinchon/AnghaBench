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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

__attribute__((used)) static bool
FUNC2(const char *prosrc, const char *literal,
						int cursorpos, int *newcursorpos)
{
	int			newcp = cursorpos;
	int			chlen;

	/*
	 * This implementation handles backslashes and doubled quotes in the
	 * string literal.  It does not handle the SQL syntax for literals
	 * continued across line boundaries.
	 *
	 * We do the comparison a character at a time, not a byte at a time, so
	 * that we can do the correct cursorpos math.
	 */
	while (*prosrc)
	{
		cursorpos--;			/* characters left before cursor */

		/*
		 * Check for backslashes and doubled quotes in the literal; adjust
		 * newcp when one is found before the cursor.
		 */
		if (*literal == '\\')
		{
			literal++;
			if (cursorpos > 0)
				newcp++;
		}
		else if (*literal == '\'')
		{
			if (literal[1] != '\'')
				goto fail;
			literal++;
			if (cursorpos > 0)
				newcp++;
		}
		chlen = FUNC0(prosrc);
		if (FUNC1(prosrc, literal, chlen) != 0)
			goto fail;
		prosrc += chlen;
		literal += chlen;
	}

	if (*literal == '\'' && literal[1] != '\'')
	{
		/* success */
		*newcursorpos = newcp;
		return true;
	}

fail:
	/* Must set *newcursorpos to suppress compiler warning */
	*newcursorpos = newcp;
	return false;
}