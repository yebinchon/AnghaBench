#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ StringInfoData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(char **argv, int *argcp, const char *optstr)
{
	StringInfoData s;

	FUNC1(&s);

	while (*optstr)
	{
		bool		last_was_escape = false;

		FUNC5(&s);

		/* skip over leading space */
		while (FUNC2((unsigned char) *optstr))
			optstr++;

		if (*optstr == '\0')
			break;

		/*
		 * Parse a single option, stopping at the first space, unless it's
		 * escaped.
		 */
		while (*optstr)
		{
			if (FUNC2((unsigned char) *optstr) && !last_was_escape)
				break;

			if (!last_was_escape && *optstr == '\\')
				last_was_escape = true;
			else
			{
				last_was_escape = false;
				FUNC0(&s, *optstr);
			}

			optstr++;
		}

		/* now store the option in the next argv[] position */
		argv[(*argcp)++] = FUNC4(s.data);
	}

	FUNC3(s.data);
}