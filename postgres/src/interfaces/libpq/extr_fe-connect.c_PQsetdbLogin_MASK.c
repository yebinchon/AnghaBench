#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  status; void* pgpass; void* pguser; void* pgtty; void* pgoptions; void* pgport; void* pghost; void* dbName; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECTION_BAD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*) ; 
 void* FUNC9 (char const*) ; 

PGconn *
FUNC10(const char *pghost, const char *pgport, const char *pgoptions,
			 const char *pgtty, const char *dbName, const char *login,
			 const char *pwd)
{
	PGconn	   *conn;

	/*
	 * Allocate memory for the conn structure
	 */
	conn = FUNC6();
	if (conn == NULL)
		return NULL;

	/*
	 * If the dbName parameter contains what looks like a connection string,
	 * parse it into conn struct using connectOptions1.
	 */
	if (dbName && FUNC8(dbName))
	{
		if (!FUNC2(conn, dbName))
			return conn;
	}
	else
	{
		/*
		 * Old-style path: first, parse an empty conninfo string in order to
		 * set up the same defaults that PQconnectdb() would use.
		 */
		if (!FUNC2(conn, ""))
			return conn;

		/* Insert dbName parameter value into struct */
		if (dbName && dbName[0] != '\0')
		{
			if (conn->dbName)
				FUNC4(conn->dbName);
			conn->dbName = FUNC9(dbName);
			if (!conn->dbName)
				goto oom_error;
		}
	}

	/*
	 * Insert remaining parameters into struct, overriding defaults (as well
	 * as any conflicting data from dbName taken as a conninfo).
	 */
	if (pghost && pghost[0] != '\0')
	{
		if (conn->pghost)
			FUNC4(conn->pghost);
		conn->pghost = FUNC9(pghost);
		if (!conn->pghost)
			goto oom_error;
	}

	if (pgport && pgport[0] != '\0')
	{
		if (conn->pgport)
			FUNC4(conn->pgport);
		conn->pgport = FUNC9(pgport);
		if (!conn->pgport)
			goto oom_error;
	}

	if (pgoptions && pgoptions[0] != '\0')
	{
		if (conn->pgoptions)
			FUNC4(conn->pgoptions);
		conn->pgoptions = FUNC9(pgoptions);
		if (!conn->pgoptions)
			goto oom_error;
	}

	if (pgtty && pgtty[0] != '\0')
	{
		if (conn->pgtty)
			FUNC4(conn->pgtty);
		conn->pgtty = FUNC9(pgtty);
		if (!conn->pgtty)
			goto oom_error;
	}

	if (login && login[0] != '\0')
	{
		if (conn->pguser)
			FUNC4(conn->pguser);
		conn->pguser = FUNC9(login);
		if (!conn->pguser)
			goto oom_error;
	}

	if (pwd && pwd[0] != '\0')
	{
		if (conn->pgpass)
			FUNC4(conn->pgpass);
		conn->pgpass = FUNC9(pwd);
		if (!conn->pgpass)
			goto oom_error;
	}

	/*
	 * Compute derived options
	 */
	if (!FUNC3(conn))
		return conn;

	/*
	 * Connect to the database
	 */
	if (FUNC1(conn))
		(void) FUNC0(conn);

	return conn;

oom_error:
	conn->status = CONNECTION_BAD;
	FUNC7(&conn->errorMessage,
					  FUNC5("out of memory\n"));
	return conn;
}