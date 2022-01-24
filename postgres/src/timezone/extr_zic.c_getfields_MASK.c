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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static char **
FUNC7(char *cp)
{
	char	   *dp;
	char	  **array;
	int			nsubs;

	if (cp == NULL)
		return NULL;
	array = FUNC1(FUNC5(FUNC6(cp) + 1, sizeof *array));
	nsubs = 0;
	for (;;)
	{
		while (FUNC4(*cp))
			++cp;
		if (*cp == '\0' || *cp == '#')
			break;
		array[nsubs++] = dp = cp;
		do
		{
			if ((*dp = *cp++) != '"')
				++dp;
			else
				while ((*dp = *cp++) != '"')
					if (*dp != '\0')
						++dp;
					else
					{
						FUNC2(FUNC0("Odd number of quotation marks"));
						FUNC3(EXIT_FAILURE);
					}
		} while (*cp && *cp != '#' && !FUNC4(*cp));
		if (FUNC4(*cp))
			++cp;
		*dp = '\0';
	}
	array[nsubs] = NULL;
	return array;
}