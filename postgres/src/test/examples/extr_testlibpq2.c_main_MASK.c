#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_4__ {char* relname; int be_pid; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ PGnotify ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 scalar_t__ CONNECTION_OK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC15 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC16 (int /*<<< orphan*/ ) ; 

int
FUNC17(int argc, char **argv)
{
	const char *conninfo;
	PGconn	   *conn;
	PGresult   *res;
	PGnotify   *notify;
	int			nnotifies;

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
	conn = FUNC3(conninfo);

	/* Check to see that the backend connection was successfully made */
	if (FUNC12(conn) != CONNECTION_OK)
	{
		FUNC14(stderr, "Connection to database failed: %s",
				FUNC5(conn));
		FUNC13(conn);
	}

	/* Set always-secure search path, so malicious users can't take control. */
	res = FUNC6(conn,
				 "SELECT pg_catalog.set_config('search_path', '', false)");
	if (FUNC10(res) != PGRES_TUPLES_OK)
	{
		FUNC14(stderr, "SET failed: %s", FUNC5(conn));
		FUNC2(res);
		FUNC13(conn);
	}

	/*
	 * Should PQclear PGresult whenever it is no longer needed to avoid memory
	 * leaks
	 */
	FUNC2(res);

	/*
	 * Issue LISTEN command to enable notifications from the rule's NOTIFY.
	 */
	res = FUNC6(conn, "LISTEN TBL2");
	if (FUNC10(res) != PGRES_COMMAND_OK)
	{
		FUNC14(stderr, "LISTEN command failed: %s", FUNC5(conn));
		FUNC2(res);
		FUNC13(conn);
	}
	FUNC2(res);

	/* Quit after four notifies are received. */
	nnotifies = 0;
	while (nnotifies < 4)
	{
		/*
		 * Sleep until something happens on the connection.  We use select(2)
		 * to wait for input, but you could also use poll() or similar
		 * facilities.
		 */
		int			sock;
		fd_set		input_mask;

		sock = FUNC11(conn);

		if (sock < 0)
			break;				/* shouldn't happen */

		FUNC1(&input_mask);
		FUNC0(sock, &input_mask);

		if (FUNC15(sock + 1, &input_mask, NULL, NULL, NULL) < 0)
		{
			FUNC14(stderr, "select() failed: %s\n", FUNC16(errno));
			FUNC13(conn);
		}

		/* Now check for input */
		FUNC4(conn);
		while ((notify = FUNC9(conn)) != NULL)
		{
			FUNC14(stderr,
					"ASYNC NOTIFY of '%s' received from backend PID %d\n",
					notify->relname, notify->be_pid);
			FUNC8(notify);
			nnotifies++;
			FUNC4(conn);
		}
	}

	FUNC14(stderr, "Done.\n");

	/* close the connection to the database and cleanup */
	FUNC7(conn);

	return 0;
}