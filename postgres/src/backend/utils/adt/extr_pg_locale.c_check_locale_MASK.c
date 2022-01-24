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
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (int,char const*) ; 

bool
FUNC4(int category, const char *locale, char **canonname)
{
	char	   *save;
	char	   *res;

	if (canonname)
		*canonname = NULL;		/* in case of failure */

	save = FUNC3(category, NULL);
	if (!save)
		return false;			/* won't happen, we hope */

	/* save may be pointing at a modifiable scratch variable, see above. */
	save = FUNC2(save);

	/* set the locale with setlocale, to see if it accepts it. */
	res = FUNC3(category, locale);

	/* save canonical name if requested. */
	if (res && canonname)
		*canonname = FUNC2(res);

	/* restore old value. */
	if (!FUNC3(category, save))
		FUNC0(WARNING, "failed to restore old locale \"%s\"", save);
	FUNC1(save);

	return (res != NULL);
}