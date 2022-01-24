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
typedef  int /*<<< orphan*/  shm_toc ;
typedef  int /*<<< orphan*/  QueryDesc ;
typedef  int /*<<< orphan*/  PlannedStmt ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  DestReceiver ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  InvalidSnapshot ; 
 int /*<<< orphan*/  PARALLEL_KEY_PARAMLISTINFO ; 
 int /*<<< orphan*/  PARALLEL_KEY_PLANNEDSTMT ; 
 int /*<<< orphan*/  PARALLEL_KEY_QUERY_TEXT ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static QueryDesc *
FUNC5(shm_toc *toc, DestReceiver *receiver,
						 int instrument_options)
{
	char	   *pstmtspace;
	char	   *paramspace;
	PlannedStmt *pstmt;
	ParamListInfo paramLI;
	char	   *queryString;

	/* Get the query string from shared memory */
	queryString = FUNC3(toc, PARALLEL_KEY_QUERY_TEXT, false);

	/* Reconstruct leader-supplied PlannedStmt. */
	pstmtspace = FUNC3(toc, PARALLEL_KEY_PLANNEDSTMT, false);
	pstmt = (PlannedStmt *) FUNC4(pstmtspace);

	/* Reconstruct ParamListInfo. */
	paramspace = FUNC3(toc, PARALLEL_KEY_PARAMLISTINFO, false);
	paramLI = FUNC2(&paramspace);

	/* Create a QueryDesc for the query. */
	return FUNC0(pstmt,
						   queryString,
						   FUNC1(), InvalidSnapshot,
						   receiver, paramLI, NULL, instrument_options);
}