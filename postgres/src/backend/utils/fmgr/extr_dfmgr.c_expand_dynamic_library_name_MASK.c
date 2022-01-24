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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  DLSUFFIX ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static char *
FUNC8(const char *name)
{
	bool		have_slash;
	char	   *new;
	char	   *full;

	FUNC0(name);

	have_slash = (FUNC3(name) != NULL);

	if (!have_slash)
	{
		full = FUNC2(name);
		if (full)
			return full;
	}
	else
	{
		full = FUNC7(name);
		if (FUNC1(full))
			return full;
		FUNC4(full);
	}

	new = FUNC5("%s%s", name, DLSUFFIX);

	if (!have_slash)
	{
		full = FUNC2(new);
		FUNC4(new);
		if (full)
			return full;
	}
	else
	{
		full = FUNC7(new);
		FUNC4(new);
		if (FUNC1(full))
			return full;
		FUNC4(full);
	}

	/*
	 * If we can't find the file, just return the string as-is. The ensuing
	 * load attempt will fail and report a suitable message.
	 */
	return FUNC6(name);
}