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
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WARNING ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static bool
FUNC7(PGconn *conn, const char *query, bool ignore_errors)
{
	PGresult   *result = NULL;
	TimestampTz endtime;

	/*
	 * If it takes too long to execute a cleanup query, assume the connection
	 * is dead.  It's fairly likely that this is why we aborted in the first
	 * place (e.g. statement timeout, user cancel), so the timeout shouldn't
	 * be too long.
	 */
	endtime = FUNC4(FUNC0(), 30000);

	/*
	 * Submit a query.  Since we don't use non-blocking mode, this also can
	 * block.  But its risk is relatively small, so we ignore that for now.
	 */
	if (!FUNC3(conn, query))
	{
		FUNC6(WARNING, NULL, conn, false, query);
		return false;
	}

	/* Get the result of the query. */
	if (FUNC5(conn, endtime, &result))
		return false;

	/* Issue a warning if not successful. */
	if (FUNC2(result) != PGRES_COMMAND_OK)
	{
		FUNC6(WARNING, result, conn, true, query);
		return ignore_errors;
	}
	FUNC1(result);

	return true;
}