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
 int ERRCODE_CONNECTION_FAILURE ; 
 int FUNC0 (char,char,char,char,char) ; 
 int /*<<< orphan*/  PG_DIAG_CONTEXT ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_DETAIL ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_HINT ; 
 int /*<<< orphan*/  PG_DIAG_MESSAGE_PRIMARY ; 
 int /*<<< orphan*/  PG_DIAG_SQLSTATE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 

void
FUNC15(int elevel, PGresult *res, PGconn *conn,
				   bool clear, const char *sql)
{
	/* If requested, PGresult must be released before leaving this function. */
	FUNC3();
	{
		char	   *diag_sqlstate = FUNC6(res, PG_DIAG_SQLSTATE);
		char	   *message_primary = FUNC6(res, PG_DIAG_MESSAGE_PRIMARY);
		char	   *message_detail = FUNC6(res, PG_DIAG_MESSAGE_DETAIL);
		char	   *message_hint = FUNC6(res, PG_DIAG_MESSAGE_HINT);
		char	   *message_context = FUNC6(res, PG_DIAG_CONTEXT);
		int			sqlstate;

		if (diag_sqlstate)
			sqlstate = FUNC0(diag_sqlstate[0],
									 diag_sqlstate[1],
									 diag_sqlstate[2],
									 diag_sqlstate[3],
									 diag_sqlstate[4]);
		else
			sqlstate = ERRCODE_CONNECTION_FAILURE;

		/*
		 * If we don't get a message from the PGresult, try the PGconn.  This
		 * is needed because for connection-level failures, PQexec may just
		 * return NULL, not a PGresult at all.
		 */
		if (message_primary == NULL)
			message_primary = FUNC14(FUNC5(conn));

		FUNC7(elevel,
				(FUNC8(sqlstate),
				 message_primary ? FUNC13("%s", message_primary) :
				 FUNC12("could not obtain message string for remote error"),
				 message_detail ? FUNC10("%s", message_detail) : 0,
				 message_hint ? FUNC11("%s", message_hint) : 0,
				 message_context ? FUNC9("%s", message_context) : 0,
				 sql ? FUNC9("remote SQL command: %s", sql) : 0));
	}
	FUNC2();
	{
		if (clear)
			FUNC4(res);
	}
	FUNC1();
}