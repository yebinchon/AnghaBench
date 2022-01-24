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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int,char const*) ; 

__attribute__((used)) static char *
FUNC4(int category, const char *locale)
{
	char	   *save;
	char	   *res;

	/* get the current setting, so we can restore it. */
	save = FUNC3(category, NULL);
	if (!save)
		FUNC0("failed to get the current locale\n");

	/* 'save' may be pointing at a modifiable scratch variable, so copy it. */
	save = FUNC2(save);

	/* set the locale with setlocale, to see if it accepts it. */
	res = FUNC3(category, locale);

	if (!res)
		FUNC0("failed to get system locale name for \"%s\"\n", locale);

	res = FUNC2(res);

	/* restore old value. */
	if (!FUNC3(category, save))
		FUNC0("failed to restore old locale \"%s\"\n", save);

	FUNC1(save);

	return res;
}