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
 char* DEFAULT_SHELL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static bool
FUNC5(const char *command)
{
	int			result;

	if (!command)
	{
		char	   *sys;
		const char *shellName;

		shellName = FUNC1("SHELL");
#ifdef WIN32
		if (shellName == NULL)
			shellName = getenv("COMSPEC");
#endif
		if (shellName == NULL)
			shellName = DEFAULT_SHELL;

		/* See EDITOR handling comment for an explanation */
#ifndef WIN32
		sys = FUNC3("exec %s", shellName);
#else
		sys = psprintf("\"%s\"", shellName);
#endif
		result = FUNC4(sys);
		FUNC0(sys);
	}
	else
		result = FUNC4(command);

	if (result == 127 || result == -1)
	{
		FUNC2("\\!: failed");
		return false;
	}
	return true;
}