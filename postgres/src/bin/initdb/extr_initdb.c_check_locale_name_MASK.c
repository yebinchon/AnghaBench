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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (int,char const*) ; 

__attribute__((used)) static void
FUNC5(int category, const char *locale, char **canonname)
{
	char	   *save;
	char	   *res;

	if (canonname)
		*canonname = NULL;		/* in case of failure */

	save = FUNC4(category, NULL);
	if (!save)
	{
		FUNC2("setlocale() failed");
		FUNC0(1);
	}

	/* save may be pointing at a modifiable scratch variable, so copy it. */
	save = FUNC3(save);

	/* for setlocale() call */
	if (!locale)
		locale = "";

	/* set the locale with setlocale, to see if it accepts it. */
	res = FUNC4(category, locale);

	/* save canonical name if requested. */
	if (res && canonname)
		*canonname = FUNC3(res);

	/* restore old value. */
	if (!FUNC4(category, save))
	{
		FUNC2("failed to restore old locale \"%s\"", save);
		FUNC0(1);
	}
	FUNC1(save);

	/* complain if locale wasn't valid */
	if (res == NULL)
	{
		if (*locale)
			FUNC2("invalid locale name \"%s\"", locale);
		else
		{
			/*
			 * If no relevant switch was given on command line, locale is an
			 * empty string, which is not too helpful to report.  Presumably
			 * setlocale() found something it did not like in the environment.
			 * Ideally we'd report the bad environment variable, but since
			 * setlocale's behavior is implementation-specific, it's hard to
			 * be sure what it didn't like.  Print a safe generic message.
			 */
			FUNC2("invalid locale settings; check LANG and LC_* environment variables");
		}
		FUNC0(1);
	}
}