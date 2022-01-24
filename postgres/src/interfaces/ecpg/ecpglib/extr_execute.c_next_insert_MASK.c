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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 

__attribute__((used)) static int
FUNC3(char *text, int pos, bool questionmarks, bool std_strings)
{
	bool		string = false;
	int			p = pos;

	for (; text[p] != '\0'; p++)
	{
		if (string && !std_strings && text[p] == '\\')	/* escape character */
			p++;
		else if (text[p] == '\'')
			string = string ? false : true;
		else if (!string)
		{
			if (text[p] == '$' && FUNC2((unsigned char) text[p + 1]))
			{
				/* this can be either a dollar quote or a variable */
				int			i;

				for (i = p + 1; FUNC2((unsigned char) text[i]); i++)
					 /* empty loop body */ ;
				if (!FUNC0((unsigned char) text[i]) &&
					FUNC1((unsigned char) text[i]) &&text[i] != '_')
					/* not dollar delimited quote */
					return p;
			}
			else if (questionmarks && text[p] == '?')
			{
				/* also allow old style placeholders */
				return p;
			}
		}
	}

	return -1;
}