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
 scalar_t__ CONNECTION_OK ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC14(int argc, char **argv)
{
	const char *conninfo;
	PGconn	   *conn;
	PGresult   *res;
	int			nFields;
	int			i,
				j;

	/*
	 * If the user supplies a parameter on the command line, use it as the
	 * conninfo string; otherwise default to setting dbname=postgres and using
	 * environment variables or defaults for all other connection parameters.
	 */
	if (argc > 1)
		conninfo = argv[1];
	else
		conninfo = "dbname = postgres";

	/* Make a connection to the database */
	conn = FUNC1(conninfo);

	/* Check to see that the backend connection was successfully made */
	if (FUNC10(conn) != CONNECTION_OK)
	{
		FUNC12(stderr, "Connection to database failed: %s",
				FUNC2(conn));
		FUNC11(conn);
	}

	/* Set always-secure search path, so malicious users can't take control. */
	res = FUNC3(conn,
				 "SELECT pg_catalog.set_config('search_path', '', false)");
	if (FUNC9(res) != PGRES_TUPLES_OK)
	{
		FUNC12(stderr, "SET failed: %s", FUNC2(conn));
		FUNC0(res);
		FUNC11(conn);
	}

	/*
	 * Should PQclear PGresult whenever it is no longer needed to avoid memory
	 * leaks
	 */
	FUNC0(res);

	/*
	 * Our test case here involves using a cursor, for which we must be inside
	 * a transaction block.  We could do the whole thing with a single
	 * PQexec() of "select * from pg_database", but that's too trivial to make
	 * a good example.
	 */

	/* Start a transaction block */
	res = FUNC3(conn, "BEGIN");
	if (FUNC9(res) != PGRES_COMMAND_OK)
	{
		FUNC12(stderr, "BEGIN command failed: %s", FUNC2(conn));
		FUNC0(res);
		FUNC11(conn);
	}
	FUNC0(res);

	/*
	 * Fetch rows from pg_database, the system catalog of databases
	 */
	res = FUNC3(conn, "DECLARE myportal CURSOR FOR select * from pg_database");
	if (FUNC9(res) != PGRES_COMMAND_OK)
	{
		FUNC12(stderr, "DECLARE CURSOR failed: %s", FUNC2(conn));
		FUNC0(res);
		FUNC11(conn);
	}
	FUNC0(res);

	res = FUNC3(conn, "FETCH ALL in myportal");
	if (FUNC9(res) != PGRES_TUPLES_OK)
	{
		FUNC12(stderr, "FETCH ALL failed: %s", FUNC2(conn));
		FUNC0(res);
		FUNC11(conn);
	}

	/* first, print out the attribute names */
	nFields = FUNC7(res);
	for (i = 0; i < nFields; i++)
		FUNC13("%-15s", FUNC5(res, i));
	FUNC13("\n\n");

	/* next, print out the rows */
	for (i = 0; i < FUNC8(res); i++)
	{
		for (j = 0; j < nFields; j++)
			FUNC13("%-15s", FUNC6(res, i, j));
		FUNC13("\n");
	}

	FUNC0(res);

	/* close the portal ... we don't bother to check for errors ... */
	res = FUNC3(conn, "CLOSE myportal");
	FUNC0(res);

	/* end the transaction */
	res = FUNC3(conn, "END");
	FUNC0(res);

	/* close the connection to the database and cleanup */
	FUNC4(conn);

	return 0;
}