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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

bool
FUNC9(PGconn *conn, FILE *copystream, PGresult **res)
{
	bool		OK = true;
	char	   *buf;
	int			ret;

	for (;;)
	{
		ret = FUNC2(conn, &buf, 0);

		if (ret < 0)
			break;				/* done or server/connection error */

		if (buf)
		{
			if (OK && copystream && FUNC6(buf, 1, ret, copystream) != ret)
			{
				FUNC7("could not write COPY data: %m");
				/* complain only once, keep reading data from server */
				OK = false;
			}
			FUNC1(buf);
		}
	}

	if (OK && copystream && FUNC5(copystream))
	{
		FUNC7("could not write COPY data: %m");
		OK = false;
	}

	if (ret == -2)
	{
		FUNC7("COPY data transfer failed: %s", FUNC0(conn));
		OK = false;
	}

	/*
	 * Check command status and return to normal libpq state.
	 *
	 * If for some reason libpq is still reporting PGRES_COPY_OUT state, we
	 * would like to forcibly exit that state, since our caller would be
	 * unable to distinguish that situation from reaching the next COPY in a
	 * command string that happened to contain two consecutive COPY TO STDOUT
	 * commands.  However, libpq provides no API for doing that, and in
	 * principle it's a libpq bug anyway if PQgetCopyData() returns -1 or -2
	 * but hasn't exited COPY_OUT state internally.  So we ignore the
	 * possibility here.
	 */
	*res = FUNC3(conn);
	if (FUNC4(*res) != PGRES_COMMAND_OK)
	{
		FUNC8("%s", FUNC0(conn));
		OK = false;
	}

	return OK;
}