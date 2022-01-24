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
 scalar_t__ CONNECTION_BAD ; 
 scalar_t__ PGRES_COPY_BOTH ; 
 scalar_t__ PGRES_COPY_IN ; 
 scalar_t__ PGRES_COPY_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PGresult *
FUNC5(PGconn *streamConn, const char *query)
{
	PGresult   *lastResult = NULL;

	/*
	 * PQexec() silently discards any prior query results on the connection.
	 * This is not required for this function as it's expected that the caller
	 * (which is this library in all cases) will behave correctly and we don't
	 * have to be backwards compatible with old libpq.
	 */

	/*
	 * Submit the query.  Since we don't use non-blocking mode, this could
	 * theoretically block.  In practice, since we don't send very long query
	 * strings, the risk seems negligible.
	 */
	if (!FUNC2(streamConn, query))
		return NULL;

	for (;;)
	{
		/* Wait for, and collect, the next PGresult. */
		PGresult   *result;

		result = FUNC4(streamConn);
		if (result == NULL)
			break;				/* query is complete, or failure */

		/*
		 * Emulate PQexec()'s behavior of returning the last result when there
		 * are many.  We are fine with returning just last error message.
		 */
		FUNC0(lastResult);
		lastResult = result;

		if (FUNC1(lastResult) == PGRES_COPY_IN ||
			FUNC1(lastResult) == PGRES_COPY_OUT ||
			FUNC1(lastResult) == PGRES_COPY_BOTH ||
			FUNC3(streamConn) == CONNECTION_BAD)
			break;
	}

	return lastResult;
}