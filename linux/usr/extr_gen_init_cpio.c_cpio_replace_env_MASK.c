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
 int /*<<< orphan*/  PATH_MAX ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*,char*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char*) ; 

__attribute__((used)) static char *FUNC5(char *new_location)
{
	char expanded[PATH_MAX + 1];
	char *start, *end, *var;

	while ((start = FUNC4(new_location, "${")) &&
	       (end = FUNC2(start + 2, '}'))) {
		*start = *end = 0;
		var = FUNC0(start + 2);
		FUNC1(expanded, sizeof expanded, "%s%s%s",
			 new_location, var ? var : "", end + 1);
		FUNC3(new_location, expanded);
	}

	return new_location;
}