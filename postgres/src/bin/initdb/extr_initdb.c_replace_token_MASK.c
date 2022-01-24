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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char*,char const*) ; 

__attribute__((used)) static char **
FUNC5(char **lines, const char *token, const char *replacement)
{
	int			numlines = 1;
	int			i;
	char	  **result;
	int			toklen,
				replen,
				diff;

	for (i = 0; lines[i]; i++)
		numlines++;

	result = (char **) FUNC1(numlines * sizeof(char *));

	toklen = FUNC3(token);
	replen = FUNC3(replacement);
	diff = replen - toklen;

	for (i = 0; i < numlines; i++)
	{
		char	   *where;
		char	   *newline;
		int			pre;

		/* just copy pointer if NULL or no change needed */
		if (lines[i] == NULL || (where = FUNC4(lines[i], token)) == NULL)
		{
			result[i] = lines[i];
			continue;
		}

		/* if we get here a change is needed - set up new line */

		newline = (char *) FUNC1(FUNC3(lines[i]) + diff + 1);

		pre = where - lines[i];

		FUNC0(newline, lines[i], pre);

		FUNC0(newline + pre, replacement, replen);

		FUNC2(newline + pre + replen, lines[i] + pre + toklen);

		result[i] = newline;
	}

	return result;
}