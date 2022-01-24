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
typedef  int /*<<< orphan*/  backslashResult ;
struct TYPE_4__ {scalar_t__ len; char* data; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  OT_FILEPIPE ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static backslashResult
FUNC13(PsqlScanState scan_state, bool active_branch,
				   const char *cmd,
				   PQExpBuffer query_buf, PQExpBuffer previous_buf)
{
	backslashResult status = PSQL_CMD_SKIP_LINE;

	if (active_branch)
	{
		char	   *fname = FUNC11(scan_state,
												   OT_FILEPIPE, NULL, true);
		FILE	   *fd = NULL;
		bool		is_pipe = false;

		if (!query_buf)
		{
			FUNC9("no query buffer");
			status = PSQL_CMD_ERROR;
		}
		else
		{
			if (!fname)
			{
				FUNC9("\\%s: missing required argument", cmd);
				status = PSQL_CMD_ERROR;
			}
			else
			{
				FUNC2(&fname);
				if (fname[0] == '|')
				{
					is_pipe = true;
					FUNC1();
					fd = FUNC10(&fname[1], "w");
				}
				else
				{
					FUNC0(fname);
					fd = FUNC4(fname, "w");
				}
				if (!fd)
				{
					FUNC9("%s: %m", fname);
					status = PSQL_CMD_ERROR;
				}
			}
		}

		if (fd)
		{
			int			result;

			/*
			 * We want to print the same thing \g would execute, but not to
			 * change the query buffer state; so we can't use
			 * copy_previous_query().  Also, beware of possibility that buffer
			 * pointers are NULL.
			 */
			if (query_buf && query_buf->len > 0)
				FUNC5(fd, "%s\n", query_buf->data);
			else if (previous_buf && previous_buf->len > 0)
				FUNC5(fd, "%s\n", previous_buf->data);

			if (is_pipe)
				result = FUNC8(fd);
			else
				result = FUNC3(fd);

			if (result == EOF)
			{
				FUNC9("%s: %m", fname);
				status = PSQL_CMD_ERROR;
			}
		}

		if (is_pipe)
			FUNC12();

		FUNC6(fname);
	}
	else
		FUNC7(scan_state);

	return status;
}