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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 char* FUNC2 (char**) ; 
 int /*<<< orphan*/  stderr ; 

const char *
FUNC3(const char *progname)
{
	const char *user_name;
	char	   *errstr;

	user_name = FUNC2(&errstr);

	if (!user_name)
	{
		FUNC1(stderr, "%s: %s\n", progname, errstr);
		FUNC0(1);
	}
	return user_name;
}