#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct winsize {int ws_row; } ;
struct TYPE_3__ {unsigned short pager; int pager_min_lines; } ;
typedef  TYPE_1__ printTableOpt ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* DEFAULT_PAGER ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

FILE *
FUNC9(int lines, const printTableOpt *topt)
{
	/* check whether we need / can / are supposed to use pager */
	if (topt && topt->pager && FUNC4(FUNC1(stdin)) && FUNC4(FUNC1(stdout)))
	{
#ifdef TIOCGWINSZ
		unsigned short int pager = topt->pager;
		int			min_lines = topt->pager_min_lines;
		int			result;
		struct winsize screen_size;

		result = ioctl(fileno(stdout), TIOCGWINSZ, &screen_size);

		/* >= accounts for a one-line prompt */
		if (result == -1
			|| (lines >= screen_size.ws_row && lines >= min_lines)
			|| pager > 1)
#endif
		{
			const char *pagerprog;
			FILE	   *pagerpipe;

			pagerprog = FUNC2("PSQL_PAGER");
			if (!pagerprog)
				pagerprog = FUNC2("PAGER");
			if (!pagerprog)
				pagerprog = DEFAULT_PAGER;
			else
			{
				/* if PAGER is empty or all-white-space, don't use pager */
				if (FUNC8(pagerprog, " \t\r\n") == FUNC7(pagerprog))
					return stdout;
			}
			FUNC0();
			pagerpipe = FUNC5(pagerprog, "w");
			if (pagerpipe)
				return pagerpipe;
			/* if popen fails, silently proceed without pager */
			FUNC6();
		}
	}

	return stdout;
}