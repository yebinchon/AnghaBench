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
typedef  int /*<<< orphan*/  backslashResult ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 double FUNC7 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static backslashResult
FUNC8(PsqlScanState scan_state, bool active_branch,
				   PQExpBuffer query_buf, PQExpBuffer previous_buf)
{
	bool		success = true;

	if (active_branch)
	{
		char	   *opt = FUNC5(scan_state,
												 OT_NORMAL, NULL, true);
		double		sleep = 2;

		/* Convert optional sleep-length argument */
		if (opt)
		{
			sleep = FUNC7(opt, NULL);
			if (sleep <= 0)
				sleep = 1;
			FUNC2(opt);
		}

		/* If query_buf is empty, recall and execute previous query */
		FUNC0(query_buf, previous_buf);

		success = FUNC1(query_buf, sleep);

		/* Reset the query buffer as though for \r */
		FUNC6(query_buf);
		FUNC4(scan_state);
	}
	else
		FUNC3(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}