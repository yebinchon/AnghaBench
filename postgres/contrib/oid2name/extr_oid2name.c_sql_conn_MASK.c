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
struct options {char* hostname; char* port; char* username; char* dbname; char* progname; } ;
typedef  int /*<<< orphan*/  password ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  ALWAYS_SECURE_SEARCH_PATH_SQL ; 
 scalar_t__ CONNECTION_BAD ; 
 int PARAMS_ARRAY_SIZE ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const**,char const**,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int,int) ; 

PGconn *
FUNC11(struct options *my_opts)
{
	PGconn	   *conn;
	bool		have_password = false;
	char		password[100];
	bool		new_pass;
	PGresult   *res;

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
		values[0] = my_opts->hostname;
		keywords[1] = "port";
		values[1] = my_opts->port;
		keywords[2] = "user";
		values[2] = my_opts->username;
		keywords[3] = "password";
		values[3] = have_password ? password : NULL;
		keywords[4] = "dbname";
		values[4] = my_opts->dbname;
		keywords[5] = "fallback_application_name";
		values[5] = my_opts->progname;
		keywords[6] = NULL;
		values[6] = NULL;

		new_pass = false;
		conn = FUNC1(keywords, values, true);

		if (!conn)
		{
			FUNC9("could not connect to database %s",
						 my_opts->dbname);
			FUNC8(1);
		}

		if (FUNC7(conn) == CONNECTION_BAD &&
			FUNC2(conn) &&
			!have_password)
		{
			FUNC5(conn);
			FUNC10("Password: ", password, sizeof(password), false);
			have_password = true;
			new_pass = true;
		}
	} while (new_pass);

	/* check to see that the backend connection was successfully made */
	if (FUNC7(conn) == CONNECTION_BAD)
	{
		FUNC9("could not connect to database %s: %s",
					 my_opts->dbname, FUNC3(conn));
		FUNC5(conn);
		FUNC8(1);
	}

	res = FUNC4(conn, ALWAYS_SECURE_SEARCH_PATH_SQL);
	if (FUNC6(res) != PGRES_TUPLES_OK)
	{
		FUNC9("could not clear search_path: %s",
					 FUNC3(conn));
		FUNC0(res);
		FUNC5(conn);
		FUNC8(-1);
	}
	FUNC0(res);

	/* return the conn if good */
	return conn;
}