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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const* const) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ superuser_password ; 
 int /*<<< orphan*/  username ; 

__attribute__((used)) static void
FUNC3(FILE *cmdfd)
{
	const char *const *line;
	static const char *const pg_authid_setup[] = {
		/*
		 * The authid table shouldn't be readable except through views, to
		 * ensure passwords are not publicly visible.
		 */
		"REVOKE ALL on pg_authid FROM public;\n\n",
		NULL
	};

	for (line = pg_authid_setup; *line != NULL; line++)
		FUNC1(*line);

	if (superuser_password)
		FUNC0("ALTER USER \"%s\" WITH PASSWORD E'%s';\n\n",
					   username, FUNC2(superuser_password));
}