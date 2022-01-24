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
typedef  int /*<<< orphan*/  prefix ;
typedef  enum trivalue { ____Placeholder_trivalue } trivalue ;
typedef  int /*<<< orphan*/  backslashResult ;
typedef  int /*<<< orphan*/  PsqlScanState ;

/* Variables and functions */
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int FUNC0 (char*,char*,int*) ; 
 int TRI_DEFAULT ; 
 int TRI_NO ; 
 int TRI_YES ; 
 int FUNC1 (int,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static backslashResult
FUNC6(PsqlScanState scan_state, bool active_branch)
{
	bool		success = true;

	if (active_branch)
	{
		static const char prefix[] = "-reuse-previous=";
		char	   *opt1,
				   *opt2,
				   *opt3,
				   *opt4;
		enum trivalue reuse_previous = TRI_DEFAULT;

		opt1 = FUNC4(scan_state);
		if (opt1 != NULL && FUNC5(opt1, prefix, sizeof(prefix) - 1) == 0)
		{
			bool		on_off;

			success = FUNC0(opt1 + sizeof(prefix) - 1,
										"-reuse-previous",
										&on_off);
			if (success)
			{
				reuse_previous = on_off ? TRI_YES : TRI_NO;
				FUNC2(opt1);
				opt1 = FUNC4(scan_state);
			}
		}

		if (success)			/* give up if reuse_previous was invalid */
		{
			opt2 = FUNC4(scan_state);
			opt3 = FUNC4(scan_state);
			opt4 = FUNC4(scan_state);

			success = FUNC1(reuse_previous, opt1, opt2, opt3, opt4);

			FUNC2(opt2);
			FUNC2(opt3);
			FUNC2(opt4);
		}
		FUNC2(opt1);
	}
	else
		FUNC3(scan_state);

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}