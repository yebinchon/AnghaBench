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
struct TYPE_2__ {scalar_t__ cur_cmd_interactive; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  int /*<<< orphan*/  PQExpBuffer ;
typedef  int /*<<< orphan*/  ConditionalStack ;

/* Variables and functions */
 scalar_t__ PSQL_CMD_SEND ; 
 scalar_t__ PSQL_CMD_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ,int,char const*,int) ; 
 scalar_t__ FUNC42 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC44 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC45 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC46 (int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC47 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC48 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC49 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC50 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC51 (char const*) ; 
 int /*<<< orphan*/  FUNC52 (char*,char const*) ; 
 scalar_t__ FUNC53 (char const*,char*) ; 
 TYPE_1__ pset ; 
 scalar_t__ FUNC54 (char const*,char*) ; 
 scalar_t__ FUNC55 (char const*,char*,int) ; 

__attribute__((used)) static backslashResult
FUNC56(const char *cmd,
			 PsqlScanState scan_state,
			 ConditionalStack cstack,
			 PQExpBuffer query_buf,
			 PQExpBuffer previous_buf)
{
	backslashResult status;
	bool		active_branch = FUNC0(cstack);

	/*
	 * In interactive mode, warn when we're ignoring a command within a false
	 * \if-branch.  But we continue on, so as to parse and discard the right
	 * amount of parameter text.  Each individual backslash command subroutine
	 * is responsible for doing nothing after discarding appropriate
	 * arguments, if !active_branch.
	 */
	if (pset.cur_cmd_interactive && !active_branch &&
		!FUNC51(cmd))
	{
		FUNC52("\\%s command ignored; use \\endif or Ctrl-C to exit current \\if block",
					   cmd);
	}

	if (FUNC54(cmd, "a") == 0)
		status = FUNC4(scan_state, active_branch);
	else if (FUNC54(cmd, "C") == 0)
		status = FUNC2(scan_state, active_branch);
	else if (FUNC54(cmd, "c") == 0 || FUNC54(cmd, "connect") == 0)
		status = FUNC6(scan_state, active_branch);
	else if (FUNC54(cmd, "cd") == 0)
		status = FUNC5(scan_state, active_branch, cmd);
	else if (FUNC54(cmd, "conninfo") == 0)
		status = FUNC7(scan_state, active_branch);
	else if (FUNC53(cmd, "copy") == 0)
		status = FUNC8(scan_state, active_branch);
	else if (FUNC54(cmd, "copyright") == 0)
		status = FUNC9(scan_state, active_branch);
	else if (FUNC54(cmd, "crosstabview") == 0)
		status = FUNC10(scan_state, active_branch);
	else if (cmd[0] == 'd')
		status = FUNC11(scan_state, active_branch, cmd);
	else if (FUNC54(cmd, "e") == 0 || FUNC54(cmd, "edit") == 0)
		status = FUNC13(scan_state, active_branch,
								   query_buf, previous_buf);
	else if (FUNC54(cmd, "ef") == 0)
		status = FUNC14(scan_state, active_branch, query_buf, true);
	else if (FUNC54(cmd, "ev") == 0)
		status = FUNC14(scan_state, active_branch, query_buf, false);
	else if (FUNC54(cmd, "echo") == 0 || FUNC54(cmd, "qecho") == 0 ||
			 FUNC54(cmd, "warn") == 0)
		status = FUNC12(scan_state, active_branch, cmd);
	else if (FUNC54(cmd, "elif") == 0)
		status = FUNC15(scan_state, cstack, query_buf);
	else if (FUNC54(cmd, "else") == 0)
		status = FUNC16(scan_state, cstack, query_buf);
	else if (FUNC54(cmd, "endif") == 0)
		status = FUNC18(scan_state, cstack, query_buf);
	else if (FUNC54(cmd, "encoding") == 0)
		status = FUNC17(scan_state, active_branch);
	else if (FUNC54(cmd, "errverbose") == 0)
		status = FUNC19(scan_state, active_branch);
	else if (FUNC54(cmd, "f") == 0)
		status = FUNC20(scan_state, active_branch);
	else if (FUNC54(cmd, "g") == 0 || FUNC54(cmd, "gx") == 0)
		status = FUNC21(scan_state, active_branch, cmd);
	else if (FUNC54(cmd, "gdesc") == 0)
		status = FUNC22(scan_state, active_branch);
	else if (FUNC54(cmd, "gexec") == 0)
		status = FUNC23(scan_state, active_branch);
	else if (FUNC54(cmd, "gset") == 0)
		status = FUNC24(scan_state, active_branch);
	else if (FUNC54(cmd, "h") == 0 || FUNC54(cmd, "help") == 0)
		status = FUNC25(scan_state, active_branch);
	else if (FUNC54(cmd, "H") == 0 || FUNC54(cmd, "html") == 0)
		status = FUNC26(scan_state, active_branch);
	else if (FUNC54(cmd, "i") == 0 || FUNC54(cmd, "include") == 0 ||
			 FUNC54(cmd, "ir") == 0 || FUNC54(cmd, "include_relative") == 0)
		status = FUNC28(scan_state, active_branch, cmd);
	else if (FUNC54(cmd, "if") == 0)
		status = FUNC27(scan_state, cstack, query_buf);
	else if (FUNC54(cmd, "l") == 0 || FUNC54(cmd, "list") == 0 ||
			 FUNC54(cmd, "l+") == 0 || FUNC54(cmd, "list+") == 0)
		status = FUNC29(scan_state, active_branch, cmd);
	else if (FUNC55(cmd, "lo_", 3) == 0)
		status = FUNC30(scan_state, active_branch, cmd);
	else if (FUNC54(cmd, "o") == 0 || FUNC54(cmd, "out") == 0)
		status = FUNC31(scan_state, active_branch);
	else if (FUNC54(cmd, "p") == 0 || FUNC54(cmd, "print") == 0)
		status = FUNC33(scan_state, active_branch,
									query_buf, previous_buf);
	else if (FUNC54(cmd, "password") == 0)
		status = FUNC32(scan_state, active_branch);
	else if (FUNC54(cmd, "prompt") == 0)
		status = FUNC34(scan_state, active_branch, cmd);
	else if (FUNC54(cmd, "pset") == 0)
		status = FUNC35(scan_state, active_branch);
	else if (FUNC54(cmd, "q") == 0 || FUNC54(cmd, "quit") == 0)
		status = FUNC36(scan_state, active_branch);
	else if (FUNC54(cmd, "r") == 0 || FUNC54(cmd, "reset") == 0)
		status = FUNC37(scan_state, active_branch, query_buf);
	else if (FUNC54(cmd, "s") == 0)
		status = FUNC38(scan_state, active_branch);
	else if (FUNC54(cmd, "set") == 0)
		status = FUNC39(scan_state, active_branch);
	else if (FUNC54(cmd, "setenv") == 0)
		status = FUNC40(scan_state, active_branch, cmd);
	else if (FUNC54(cmd, "sf") == 0 || FUNC54(cmd, "sf+") == 0)
		status = FUNC41(scan_state, active_branch, cmd, true);
	else if (FUNC54(cmd, "sv") == 0 || FUNC54(cmd, "sv+") == 0)
		status = FUNC41(scan_state, active_branch, cmd, false);
	else if (FUNC54(cmd, "t") == 0)
		status = FUNC44(scan_state, active_branch);
	else if (FUNC54(cmd, "T") == 0)
		status = FUNC3(scan_state, active_branch);
	else if (FUNC54(cmd, "timing") == 0)
		status = FUNC45(scan_state, active_branch);
	else if (FUNC54(cmd, "unset") == 0)
		status = FUNC46(scan_state, active_branch, cmd);
	else if (FUNC54(cmd, "w") == 0 || FUNC54(cmd, "write") == 0)
		status = FUNC48(scan_state, active_branch, cmd,
									query_buf, previous_buf);
	else if (FUNC54(cmd, "watch") == 0)
		status = FUNC47(scan_state, active_branch,
									query_buf, previous_buf);
	else if (FUNC54(cmd, "x") == 0)
		status = FUNC49(scan_state, active_branch);
	else if (FUNC54(cmd, "z") == 0)
		status = FUNC50(scan_state, active_branch);
	else if (FUNC54(cmd, "!") == 0)
		status = FUNC42(scan_state, active_branch);
	else if (FUNC54(cmd, "?") == 0)
		status = FUNC43(scan_state, active_branch);
	else
		status = PSQL_CMD_UNKNOWN;

	/*
	 * All the commands that return PSQL_CMD_SEND want to execute previous_buf
	 * if query_buf is empty.  For convenience we implement that here, not in
	 * the individual command subroutines.
	 */
	if (status == PSQL_CMD_SEND)
		FUNC1(query_buf, previous_buf);

	return status;
}