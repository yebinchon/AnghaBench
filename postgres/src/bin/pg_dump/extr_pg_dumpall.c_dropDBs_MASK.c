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
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7(PGconn *conn)
{
	PGresult   *res;
	int			i;

	/*
	 * Skip databases marked not datallowconn, since we'd be unable to connect
	 * to them anyway.  This must agree with dumpDatabases().
	 */
	res = FUNC3(conn,
					   "SELECT datname "
					   "FROM pg_database d "
					   "WHERE datallowconn "
					   "ORDER BY datname");

	if (FUNC2(res) > 0)
		FUNC5(OPF, "--\n-- Drop databases (except postgres and template1)\n--\n\n");

	for (i = 0; i < FUNC2(res); i++)
	{
		char	   *dbname = FUNC1(res, i, 0);

		/*
		 * Skip "postgres" and "template1"; dumpDatabases() will deal with
		 * them specially.  Also, be sure to skip "template0", even if for
		 * some reason it's not marked !datallowconn.
		 */
		if (FUNC6(dbname, "template1") != 0 &&
			FUNC6(dbname, "template0") != 0 &&
			FUNC6(dbname, "postgres") != 0)
		{
			FUNC5(OPF, "DROP DATABASE %s%d;\n",
					if_exists ? "IF EXISTS " : "",
					FUNC4(dbname));
		}
	}

	FUNC0(res);

	FUNC5(OPF, "\n\n");
}