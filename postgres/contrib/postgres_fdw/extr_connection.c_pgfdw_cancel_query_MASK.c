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
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  PGcancel ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_CONNECTION_FAILURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static bool
FUNC10(PGconn *conn)
{
	PGcancel   *cancel;
	char		errbuf[256];
	PGresult   *result = NULL;
	TimestampTz endtime;

	/*
	 * If it takes too long to cancel the query and discard the result, assume
	 * the connection is dead.
	 */
	endtime = FUNC5(FUNC0(), 30000);

	/*
	 * Issue cancel request.  Unfortunately, there's no good way to limit the
	 * amount of time that we might block inside PQgetCancel().
	 */
	if ((cancel = FUNC4(conn)))
	{
		if (!FUNC1(cancel, errbuf, sizeof(errbuf)))
		{
			FUNC6(WARNING,
					(FUNC7(ERRCODE_CONNECTION_FAILURE),
					 FUNC8("could not send cancel request: %s",
							errbuf)));
			FUNC3(cancel);
			return false;
		}
		FUNC3(cancel);
	}

	/* Get and discard the result of the query. */
	if (FUNC9(conn, endtime, &result))
		return false;
	FUNC2(result);

	return true;
}