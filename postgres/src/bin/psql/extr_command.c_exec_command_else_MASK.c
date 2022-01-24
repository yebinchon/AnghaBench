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
#define  IFSTATE_ELSE_FALSE 133 
#define  IFSTATE_ELSE_TRUE 132 
#define  IFSTATE_FALSE 131 
#define  IFSTATE_IGNORED 130 
#define  IFSTATE_NONE 129 
#define  IFSTATE_TRUE 128 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static backslashResult
FUNC5(PsqlScanState scan_state, ConditionalStack cstack,
				  PQExpBuffer query_buf)
{
	bool		success = true;

	switch (FUNC0(cstack))
	{
		case IFSTATE_TRUE:

			/*
			 * Just finished active branch of this \if block.  Update saved
			 * state so we will keep whatever data was put in query_buf by the
			 * active branch.
			 */
			FUNC4(scan_state, cstack, query_buf);

			/* Now skip the \else branch */
			FUNC1(cstack, IFSTATE_ELSE_FALSE);
			break;
		case IFSTATE_FALSE:

			/*
			 * Discard any query text added by the just-skipped branch.
			 */
			FUNC2(scan_state, cstack, query_buf);

			/*
			 * We've not found any true \if or \elif expression, so execute
			 * the \else branch.
			 */
			FUNC1(cstack, IFSTATE_ELSE_TRUE);
			break;
		case IFSTATE_IGNORED:

			/*
			 * Discard any query text added by the just-skipped branch.
			 */
			FUNC2(scan_state, cstack, query_buf);

			/*
			 * Either we previously processed the active branch of this \if,
			 * or the whole \if block is being skipped.  Either way, skip the
			 * \else branch.
			 */
			FUNC1(cstack, IFSTATE_ELSE_FALSE);
			break;
		case IFSTATE_ELSE_TRUE:
		case IFSTATE_ELSE_FALSE:
			FUNC3("\\else: cannot occur after \\else");
			success = false;
			break;
		case IFSTATE_NONE:
			/* no \if to else from */
			FUNC3("\\else: no matching \\if");
			success = false;
			break;
	}

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}