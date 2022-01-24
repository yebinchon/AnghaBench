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
typedef  int /*<<< orphan*/  remoteConn ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(PGconn *conn, remoteConn *rconn)
{
	if (!FUNC8())
	{
		if (!FUNC0(conn))
		{
			FUNC1(conn);
			if (rconn)
				FUNC7(rconn);

			FUNC2(ERROR,
					(FUNC3(ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED),
					 FUNC6("password is required"),
					 FUNC4("Non-superuser cannot connect if the server does not request a password."),
					 FUNC5("Target server's authentication method must be changed.")));
		}
	}
}