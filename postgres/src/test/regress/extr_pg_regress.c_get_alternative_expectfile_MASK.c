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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static char *
FUNC6(const char *expectfile, int i)
{
	char	   *last_dot;
	int			ssize = FUNC4(expectfile) + 2 + 1;
	char	   *tmp;
	char	   *s;

	if (!(tmp = (char *) FUNC1(ssize)))
		return NULL;

	if (!(s = (char *) FUNC1(ssize)))
	{
		FUNC0(tmp);
		return NULL;
	}

	FUNC3(tmp, expectfile);
	last_dot = FUNC5(tmp, '.');
	if (!last_dot)
	{
		FUNC0(tmp);
		FUNC0(s);
		return NULL;
	}
	*last_dot = '\0';
	FUNC2(s, ssize, "%s_%d.%s", tmp, i, last_dot + 1);
	FUNC0(tmp);
	return s;
}