#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ backslashResult ;
struct TYPE_2__ {int /*<<< orphan*/  queryFout; scalar_t__ cur_cmd_interactive; } ;
typedef  int /*<<< orphan*/ * PsqlScanState ;
typedef  int /*<<< orphan*/  PQExpBuffer ;
typedef  int /*<<< orphan*/ * ConditionalStack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFSTATE_IGNORED ; 
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  OT_WHOLE_LINE ; 
 scalar_t__ PSQL_CMD_ERROR ; 
 scalar_t__ PSQL_CMD_UNKNOWN ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 TYPE_1__ pset ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

backslashResult
FUNC13(PsqlScanState scan_state,
				ConditionalStack cstack,
				PQExpBuffer query_buf,
				PQExpBuffer previous_buf)
{
	backslashResult status;
	char	   *cmd;
	char	   *arg;

	FUNC0(scan_state != NULL);
	FUNC0(cstack != NULL);

	/* Parse off the command name */
	cmd = FUNC10(scan_state);

	/* And try to execute it */
	status = FUNC4(cmd, scan_state, cstack, query_buf, previous_buf);

	if (status == PSQL_CMD_UNKNOWN)
	{
		FUNC7("invalid command \\%s", cmd);
		if (pset.cur_cmd_interactive)
			FUNC8("Try \\? for help.");
		status = PSQL_CMD_ERROR;
	}

	if (status != PSQL_CMD_ERROR)
	{
		/*
		 * Eat any remaining arguments after a valid command.  We want to
		 * suppress evaluation of backticks in this situation, so transiently
		 * push an inactive conditional-stack entry.
		 */
		bool		active_branch = FUNC1(cstack);

		FUNC3(cstack, IFSTATE_IGNORED);
		while ((arg = FUNC12(scan_state,
											 OT_NORMAL, NULL, false)))
		{
			if (active_branch)
				FUNC9("\\%s: extra argument \"%s\" ignored", cmd, arg);
			FUNC6(arg);
		}
		FUNC2(cstack);
	}
	else
	{
		/* silently throw away rest of line after an erroneous command */
		while ((arg = FUNC12(scan_state,
											 OT_WHOLE_LINE, NULL, false)))
			FUNC6(arg);
	}

	/* if there is a trailing \\, swallow it */
	FUNC11(scan_state);

	FUNC6(cmd);

	/* some commands write to queryFout, so make sure output is sent */
	FUNC5(pset.queryFout);

	return status;
}