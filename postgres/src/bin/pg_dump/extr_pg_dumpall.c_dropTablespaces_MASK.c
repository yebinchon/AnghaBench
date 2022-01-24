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
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  OPF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ if_exists ; 

__attribute__((used)) static void
FUNC6(PGconn *conn)
{
	PGresult   *res;
	int			i;

	/*
	 * Get all tablespaces except built-in ones (which we assume are named
	 * pg_xxx)
	 */
	res = FUNC3(conn, "SELECT spcname "
					   "FROM pg_catalog.pg_tablespace "
					   "WHERE spcname !~ '^pg_' "
					   "ORDER BY 1");

	if (FUNC2(res) > 0)
		FUNC5(OPF, "--\n-- Drop tablespaces\n--\n\n");

	for (i = 0; i < FUNC2(res); i++)
	{
		char	   *spcname = FUNC1(res, i, 0);

		FUNC5(OPF, "DROP TABLESPACE %s%d;\n",
				if_exists ? "IF EXISTS " : "",
				FUNC4(spcname));
	}

	FUNC0(res);

	FUNC5(OPF, "\n\n");
}