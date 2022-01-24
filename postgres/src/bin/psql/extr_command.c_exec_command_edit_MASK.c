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
typedef  scalar_t__ backslashResult ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 scalar_t__ PSQL_CMD_ERROR ; 
 scalar_t__ PSQL_CMD_NEWEDIT ; 
 scalar_t__ PSQL_CMD_SKIP_LINE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static backslashResult
FUNC11(PsqlScanState scan_state, bool active_branch,
				  PQExpBuffer query_buf, PQExpBuffer previous_buf)
{
	backslashResult status = PSQL_CMD_SKIP_LINE;

	if (active_branch)
	{
		if (!query_buf)
		{
			FUNC7("no query buffer");
			status = PSQL_CMD_ERROR;
		}
		else
		{
			char	   *fname;
			char	   *ln = NULL;
			int			lineno = -1;

			fname = FUNC8(scan_state,
										   OT_NORMAL, NULL, true);
			if (fname)
			{
				/* try to get separate lineno arg */
				ln = FUNC8(scan_state,
											OT_NORMAL, NULL, true);
				if (ln == NULL)
				{
					/* only one arg; maybe it is lineno not fname */
					if (fname[0] &&
						FUNC10(fname, "0123456789") == FUNC9(fname))
					{
						/* all digits, so assume it is lineno */
						ln = fname;
						fname = NULL;
					}
				}
			}
			if (ln)
			{
				lineno = FUNC0(ln);
				if (lineno < 1)
				{
					FUNC7("invalid line number: %s", ln);
					status = PSQL_CMD_ERROR;
				}
			}
			if (status != PSQL_CMD_ERROR)
			{
				FUNC4(&fname);
				if (fname)
					FUNC1(fname);

				/* If query_buf is empty, recall previous query for editing */
				FUNC2(query_buf, previous_buf);

				if (FUNC3(fname, query_buf, lineno, NULL))
					status = PSQL_CMD_NEWEDIT;
				else
					status = PSQL_CMD_ERROR;
			}
			if (fname)
				FUNC5(fname);
			if (ln)
				FUNC5(ln);
		}
	}
	else
		FUNC6(scan_state);

	return status;
}