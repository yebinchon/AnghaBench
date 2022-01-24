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
 char* FUNC0 (char**) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char const*) ; 

int
FUNC4(char **user_name_p)
{
	int			user_id;
	const char *user_name;
	char	   *errstr;

#ifndef WIN32
	user_id = FUNC1();
#else
	user_id = 1;
#endif

	user_name = FUNC0(&errstr);
	if (!user_name)
		FUNC2("%s\n", errstr);

	/* make a copy */
	*user_name_p = FUNC3(user_name);

	return user_id;
}