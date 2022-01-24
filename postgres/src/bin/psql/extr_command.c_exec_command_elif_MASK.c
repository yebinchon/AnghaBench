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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static backslashResult
FUNC7(PsqlScanState scan_state, ConditionalStack cstack,
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
			FUNC6(scan_state, cstack, query_buf);

			/*
			 * Discard \elif expression and ignore the rest until \endif.
			 * Switch state before reading expression to ensure proper lexer
			 * behavior.
			 */
			FUNC1(cstack, IFSTATE_IGNORED);
			FUNC3(scan_state);
			break;
		case IFSTATE_FALSE:

			/*
			 * Discard any query text added by the just-skipped branch.
			 */
			FUNC2(scan_state, cstack, query_buf);

			/*
			 * Have not yet found a true expression in this \if block, so this
			 * might be the first.  We have to change state before examining
			 * the expression, or the lexer won't do the right thing.
			 */
			FUNC1(cstack, IFSTATE_TRUE);
			if (!FUNC4(scan_state, "\\elif expression"))
				FUNC1(cstack, IFSTATE_FALSE);
			break;
		case IFSTATE_IGNORED:

			/*
			 * Discard any query text added by the just-skipped branch.
			 */
			FUNC2(scan_state, cstack, query_buf);

			/*
			 * Skip expression and move on.  Either the \if block already had
			 * an active section, or whole block is being skipped.
			 */
			FUNC3(scan_state);
			break;
		case IFSTATE_ELSE_TRUE:
		case IFSTATE_ELSE_FALSE:
			FUNC5("\\elif: cannot occur after \\else");
			success = false;
			break;
		case IFSTATE_NONE:
			/* no \if to elif from */
			FUNC5("\\elif: no matching \\if");
			success = false;
			break;
	}

	return success ? PSQL_CMD_SKIP_LINE : PSQL_CMD_ERROR;
}