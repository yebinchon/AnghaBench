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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char const*) ; 

__attribute__((used)) static char **
FUNC2(char **lines, const char *token)
{
	int			numlines = 1;
	int			i,
				src,
				dst;
	char	  **result;

	for (i = 0; lines[i]; i++)
		numlines++;

	result = (char **) FUNC0(numlines * sizeof(char *));

	for (src = 0, dst = 0; src < numlines; src++)
	{
		if (lines[src] == NULL || FUNC1(lines[src], token) == NULL)
			result[dst++] = lines[src];
	}

	return result;
}