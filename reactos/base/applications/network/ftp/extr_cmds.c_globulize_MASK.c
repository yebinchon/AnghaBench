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
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  doglob ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** FUNC3 (char const*) ; 
 char* globerr ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char*) ; 
 int /*<<< orphan*/  stdout ; 

int FUNC5(const char **cpp)
{
	char **globbed;

	if (!doglob)
		return (1);
	globbed = FUNC3(*cpp);
	if (globerr != NULL) {
		FUNC4("%s: %s\n", *cpp, globerr);
		(void) FUNC1(stdout);
		if (globbed) {
			FUNC0(globbed);
			FUNC2((char *)globbed);
		}
		return (0);
	}
	if (globbed) {
		*cpp = *globbed++;
		/* don't waste too much memory */
		if (*globbed) {
			FUNC0(globbed);
			FUNC2((char *)globbed);
		}
	}
	return (1);
}