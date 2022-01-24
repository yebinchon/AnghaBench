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
typedef  int /*<<< orphan*/  password ;
typedef  enum trivalue { ____Placeholder_trivalue } trivalue ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  ALWAYS_SECURE_SEARCH_PATH_SQL ; 
 scalar_t__ CONNECTION_BAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const**,char const**,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int TRI_NO ; 
 int TRI_YES ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,int) ; 

PGconn *
FUNC10(const char *dbname, const char *pghost,
				const char *pgport, const char *pguser,
				enum trivalue prompt_password, const char *progname,
				bool echo, bool fail_ok, bool allow_password_reuse)
{
	PGconn	   *conn;
	bool		new_pass;
	static bool have_password = false;
	static char password[100];

	if (!allow_password_reuse)
		have_password = false;

	if (!have_password && prompt_password == TRI_YES)
	{
		FUNC9("Password: ", password, sizeof(password), false);
		have_password = true;
	}

	/*
	 * Start the connection.  Loop until we have a password if requested by
	 * backend.
	 */
	do
	{
		const char *keywords[7];
		const char *values[7];

		keywords[0] = "host";
		values[0] = pghost;
		keywords[1] = "port";
		values[1] = pgport;
		keywords[2] = "user";
		values[2] = pguser;
		keywords[3] = "password";
		values[3] = have_password ? password : NULL;
		keywords[4] = "dbname";
		values[4] = dbname;
		keywords[5] = "fallback_application_name";
		values[5] = progname;
		keywords[6] = NULL;
		values[6] = NULL;

		new_pass = false;
		conn = FUNC1(keywords, values, true);

		if (!conn)
		{
			FUNC8("could not connect to database %s: out of memory",
						 dbname);
			FUNC7(1);
		}

		/*
		 * No luck?  Trying asking (again) for a password.
		 */
		if (FUNC5(conn) == CONNECTION_BAD &&
			FUNC2(conn) &&
			prompt_password != TRI_NO)
		{
			FUNC4(conn);
			FUNC9("Password: ", password, sizeof(password), false);
			have_password = true;
			new_pass = true;
		}
	} while (new_pass);

	/* check to see that the backend connection was successfully made */
	if (FUNC5(conn) == CONNECTION_BAD)
	{
		if (fail_ok)
		{
			FUNC4(conn);
			return NULL;
		}
		FUNC8("could not connect to database %s: %s",
					 dbname, FUNC3(conn));
		FUNC7(1);
	}

	FUNC0(FUNC6(conn, ALWAYS_SECURE_SEARCH_PATH_SQL, echo));

	return conn;
}