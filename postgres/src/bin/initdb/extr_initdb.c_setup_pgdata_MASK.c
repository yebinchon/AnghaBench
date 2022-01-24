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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (char*) ; 
 char* pg_data ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (char*) ; 
 void* pgdata_native ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*) ; 

void
FUNC10(void)
{
	char	   *pgdata_get_env,
			   *pgdata_set_env;

	if (!pg_data)
	{
		pgdata_get_env = FUNC4("PGDATA");
		if (pgdata_get_env && FUNC9(pgdata_get_env))
		{
			/* PGDATA found */
			pg_data = FUNC6(pgdata_get_env);
		}
		else
		{
			FUNC5("no data directory specified");
			FUNC3(stderr,
					"%s", FUNC0("You must identify the directory where the data for this database system\n"
					  "will reside.  Do this with either the invocation option -D or the\n"
					  "environment variable PGDATA.\n"));
			FUNC2(1);
		}
	}

	pgdata_native = FUNC6(pg_data);
	FUNC1(pg_data);

	/*
	 * we have to set PGDATA for postgres rather than pass it on the command
	 * line to avoid dumb quoting problems on Windows, and we would especially
	 * need quotes otherwise on Windows because paths there are most likely to
	 * have embedded spaces.
	 */
	pgdata_set_env = FUNC7("PGDATA=%s", pg_data);
	FUNC8(pgdata_set_env);
}