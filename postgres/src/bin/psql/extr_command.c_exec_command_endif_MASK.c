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
typedef  int /*<<< orphan*/  ConditionalStack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  IFSTATE_ELSE_FALSE 133 
#define  IFSTATE_ELSE_TRUE 132 
#define  IFSTATE_FALSE 131 
#define  IFSTATE_IGNORED 130 
#define  IFSTATE_NONE 129 
#define  IFSTATE_TRUE 128 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static backslashResult
FUNC5(PsqlScanState scan_state, ConditionalStack cstack,
				   PQExpBuffer query_buf)
{
	bool		success = true;

	switch (FUNC1(cstack))
	{
		case IFSTATE_TRUE:
		case IFSTATE_ELSE_TRUE:
			/* Close the \if block, keeping the query text */
			success = FUNC2(cstack);
			FUNC0(success);
			break;
		case IFSTATE_FALSE:
		case IFSTATE_IGNORED:
		case IFSTATE_ELSE_FALSE:

			/*
			 * Discard any query text added by the just-skipped branch.
			 */
			FUNC3(scan_state, cstack, query_buf);

			/* Close the \if block */
			success = FUNC2(cstack);
			FUNC0(success);
			break;
		case IFSTATE_NONE:
			/* no \if to end */
			FUNC4("\\endif: no matching \\if");
			success = false;
			break;
	}

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}