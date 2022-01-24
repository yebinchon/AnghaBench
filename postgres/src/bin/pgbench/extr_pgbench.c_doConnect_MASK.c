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
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 scalar_t__ CONNECTION_BAD ; 
 int PARAMS_ARRAY_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (char const**,char const**,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 char* dbName ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* login ; 
 char* pghost ; 
 char* pgport ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static PGconn *
FUNC7(void)
{
	PGconn	   *conn;
	bool		new_pass;
	static bool have_password = false;
	static char password[100];

	/*
	 * Start the connection.  Loop until we have a password if requested by
	 * backend.
	 */
	do
	{
#define PARAMS_ARRAY_SIZE	7

		const char *keywords[PARAMS_ARRAY_SIZE];
		const char *values[PARAMS_ARRAY_SIZE];

		keywords[0] = "host";
		values[0] = pghost;
		keywords[1] = "port";
		values[1] = pgport;
		keywords[2] = "user";
		values[2] = login;
		keywords[3] = "password";
		values[3] = have_password ? password : NULL;
		keywords[4] = "dbname";
		values[4] = dbName;
		keywords[5] = "fallback_application_name";
		values[5] = progname;
		keywords[6] = NULL;
		values[6] = NULL;

		new_pass = false;

		conn = FUNC0(keywords, values, true);

		if (!conn)
		{
			FUNC5(stderr, "connection to database \"%s\" failed\n",
					dbName);
			return NULL;
		}

		if (FUNC4(conn) == CONNECTION_BAD &&
			FUNC1(conn) &&
			!have_password)
		{
			FUNC3(conn);
			FUNC6("Password: ", password, sizeof(password), false);
			have_password = true;
			new_pass = true;
		}
	} while (new_pass);

	/* check to see that the backend connection was successfully made */
	if (FUNC4(conn) == CONNECTION_BAD)
	{
		FUNC5(stderr, "connection to database \"%s\" failed:\n%s",
				dbName, FUNC2(conn));
		FUNC3(conn);
		return NULL;
	}

	return conn;
}