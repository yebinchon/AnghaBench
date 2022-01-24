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
 int CHAR_BIT ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static bool
FUNC8(char **text, int lineno)
{
	bool		string = false;
	int			counter = 1,
				ptr = 0;

	for (; (*text)[ptr] != '\0'; ptr++)
	{
		if ((*text)[ptr] == '\'')
			string = string ? false : true;

		if (string || (((*text)[ptr] != ':') && ((*text)[ptr] != '?')))
			continue;

		if (((*text)[ptr] == ':') && ((*text)[ptr + 1] == ':'))
			ptr += 2;			/* skip  '::' */
		else
		{
			/* a rough guess of the size we need: */
			int			buffersize = sizeof(int) * CHAR_BIT * 10 / 3;
			int			len;
			char	   *buffer,
					   *newcopy;

			if (!(buffer = (char *) FUNC0(buffersize, lineno)))
				return false;

			FUNC4(buffer, buffersize, "$%d", counter++);

			for (len = 1; (*text)[ptr + len] && FUNC2((*text)[ptr + len]); len++)
				 /* skip */ ;
			if (!(newcopy = (char *) FUNC0(FUNC7(*text) -len + FUNC7(buffer) + 1, lineno)))
			{
				FUNC1(buffer);
				return false;
			}

			FUNC3(newcopy, *text, ptr);
			FUNC6(newcopy + ptr, buffer);
			FUNC5(newcopy, (*text) +ptr + len);

			FUNC1(*text);
			FUNC1(buffer);

			*text = newcopy;

			if ((*text)[ptr] == '\0')	/* we reached the end */
				ptr--;			/* since we will (*text)[ptr]++ in the top
								 * level for loop */
		}
	}
	return true;
}