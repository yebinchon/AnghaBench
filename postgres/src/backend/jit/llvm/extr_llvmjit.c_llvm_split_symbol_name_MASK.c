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
 char* FUNC1 (char const*,int) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

void
FUNC6(const char *name, char **modname, char **funcname)
{
	*modname = NULL;
	*funcname = NULL;

	/*
	 * Module function names are pgextern.$module.$funcname
	 */
	if (FUNC5(name, "pgextern.", FUNC4("pgextern.")) == 0)
	{
		/*
		 * Symbol names cannot contain a ., therefore we can split based on
		 * first and last occurrence of one.
		 */
		*funcname = FUNC3(name, '.');
		(*funcname)++;			/* jump over . */

		*modname = FUNC1(name + FUNC4("pgextern."),
							*funcname - name - FUNC4("pgextern.") - 1);
		FUNC0(funcname);

		*funcname = FUNC2(*funcname);
	}
	else
	{
		*modname = NULL;
		*funcname = FUNC2(name);
	}
}