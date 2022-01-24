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

/* Variables and functions */
 int /*<<< orphan*/  OT_NORMAL ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  PSQL_CMD_UNKNOWN ; 
 int FUNC0 (char*,int) ; 
 int FUNC1 (char*,int,int) ; 
 int FUNC2 (char const*,char*,int,int) ; 
 int FUNC3 (char*,int,int) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*,int,int) ; 
 int FUNC6 (char*,int) ; 
 int FUNC7 (char*,int,int) ; 
 int FUNC8 (char*,int) ; 
 int FUNC9 (char*,int,int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,int) ; 
 int FUNC14 (char*,int,int) ; 
 int FUNC15 (char*,int,int) ; 
 int FUNC16 (char*,char*) ; 
 int FUNC17 (char*) ; 
 int FUNC18 (char*,int,int) ; 
 int FUNC19 (char*,int) ; 
 int FUNC20 (char*) ; 
 int FUNC21 (char*) ; 
 int FUNC22 (char*,int) ; 
 int FUNC23 (char*,int) ; 
 int FUNC24 (char*,int) ; 
 int FUNC25 (char*,int,int) ; 
 int FUNC26 (char const*,char*,int) ; 
 int FUNC27 (char*) ; 
 int FUNC28 (char*,int,int) ; 
 int FUNC29 (char*,int) ; 
 int FUNC30 (char*,int) ; 
 int FUNC31 (char*,int) ; 
 int FUNC32 (char*,int) ; 
 int FUNC33 (char const*,char*,int,int) ; 
 int FUNC34 (char*,int) ; 
 int FUNC35 (char*,int) ; 
 int FUNC36 (char*) ; 
 char* FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC38 (char const*,char) ; 
 int /*<<< orphan*/  FUNC39 (char const*,char*,int) ; 

__attribute__((used)) static backslashResult
FUNC40(PsqlScanState scan_state, bool active_branch, const char *cmd)
{
	backslashResult status = PSQL_CMD_SKIP_LINE;
	bool		success = true;

	if (active_branch)
	{
		char	   *pattern;
		bool		show_verbose,
					show_system;

		/* We don't do SQLID reduction on the pattern yet */
		pattern = FUNC37(scan_state,
										 OT_NORMAL, NULL, true);

		show_verbose = FUNC38(cmd, '+') ? true : false;
		show_system = FUNC38(cmd, 'S') ? true : false;

		switch (cmd[1])
		{
			case '\0':
			case '+':
			case 'S':
				if (pattern)
					success = FUNC7(pattern, show_verbose, show_system);
				else
					/* standard listing of interesting things */
					success = FUNC33("tvmsE", NULL, show_verbose, show_system);
				break;
			case 'A':
				success = FUNC0(pattern, show_verbose);
				break;
			case 'a':
				success = FUNC1(pattern, show_verbose, show_system);
				break;
			case 'b':
				success = FUNC8(pattern, show_verbose);
				break;
			case 'c':
				success = FUNC15(pattern, show_verbose, show_system);
				break;
			case 'C':
				success = FUNC13(pattern, show_verbose);
				break;
			case 'd':
				if (FUNC39(cmd, "ddp", 3) == 0)
					success = FUNC17(pattern);
				else
					success = FUNC35(pattern, show_system);
				break;
			case 'D':
				success = FUNC18(pattern, show_verbose, show_system);
				break;
			case 'f':			/* function subsystem */
				switch (cmd[2])
				{
					case '\0':
					case '+':
					case 'S':
					case 'a':
					case 'n':
					case 'p':
					case 't':
					case 'w':
						success = FUNC2(&cmd[2], pattern, show_verbose, show_system);
						break;
					default:
						status = PSQL_CMD_UNKNOWN;
						break;
				}
				break;
			case 'g':
				/* no longer distinct from \du */
				success = FUNC5(pattern, show_verbose, show_system);
				break;
			case 'l':
				success = FUNC10();
				break;
			case 'L':
				success = FUNC25(pattern, show_verbose, show_system);
				break;
			case 'n':
				success = FUNC28(pattern, show_verbose, show_system);
				break;
			case 'o':
				success = FUNC3(pattern, show_verbose, show_system);
				break;
			case 'O':
				success = FUNC14(pattern, show_verbose, show_system);
				break;
			case 'p':
				success = FUNC36(pattern);
				break;
			case 'P':
				{
					switch (cmd[2])
					{
						case '\0':
						case '+':
						case 't':
						case 'i':
						case 'n':
							success = FUNC26(&cmd[2], pattern, show_verbose);
							break;
						default:
							status = PSQL_CMD_UNKNOWN;
							break;
					}
				}
				break;
			case 'T':
				success = FUNC9(pattern, show_verbose, show_system);
				break;
			case 't':
			case 'v':
			case 'm':
			case 'i':
			case 's':
			case 'E':
				success = FUNC33(&cmd[1], pattern, show_verbose, show_system);
				break;
			case 'r':
				if (cmd[2] == 'd' && cmd[3] == 's')
				{
					char	   *pattern2 = NULL;

					if (pattern)
						pattern2 = FUNC37(scan_state,
														  OT_NORMAL, NULL, true);
					success = FUNC16(pattern, pattern2);

					if (pattern2)
						FUNC11(pattern2);
				}
				else
					status = PSQL_CMD_UNKNOWN;
				break;
			case 'R':
				switch (cmd[2])
				{
					case 'p':
						if (show_verbose)
							success = FUNC4(pattern);
						else
							success = FUNC27(pattern);
						break;
					case 's':
						success = FUNC6(pattern, show_verbose);
						break;
					default:
						status = PSQL_CMD_UNKNOWN;
				}
				break;
			case 'u':
				success = FUNC5(pattern, show_verbose, show_system);
				break;
			case 'F':			/* text search subsystem */
				switch (cmd[2])
				{
					case '\0':
					case '+':
						success = FUNC29(pattern, show_verbose);
						break;
					case 'p':
						success = FUNC31(pattern, show_verbose);
						break;
					case 'd':
						success = FUNC30(pattern, show_verbose);
						break;
					case 't':
						success = FUNC32(pattern, show_verbose);
						break;
					default:
						status = PSQL_CMD_UNKNOWN;
						break;
				}
				break;
			case 'e':			/* SQL/MED subsystem */
				switch (cmd[2])
				{
					case 's':
						success = FUNC23(pattern, show_verbose);
						break;
					case 'u':
						success = FUNC34(pattern, show_verbose);
						break;
					case 'w':
						success = FUNC22(pattern, show_verbose);
						break;
					case 't':
						success = FUNC24(pattern, show_verbose);
						break;
					default:
						status = PSQL_CMD_UNKNOWN;
						break;
				}
				break;
			case 'x':			/* Extensions */
				if (show_verbose)
					success = FUNC20(pattern);
				else
					success = FUNC21(pattern);
				break;
			case 'y':			/* Event Triggers */
				success = FUNC19(pattern, show_verbose);
				break;
			default:
				status = PSQL_CMD_UNKNOWN;
		}

		if (pattern)
			FUNC11(pattern);
	}
	else
		FUNC12(scan_state);

	if (!success)
		status = PSQL_CMD_ERROR;

	return status;
}