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
typedef  int /*<<< orphan*/  backslashResult ;
struct TYPE_2__ {int /*<<< orphan*/  quiet; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static backslashResult
FUNC4(PsqlScanState scan_state, bool active_branch,
				   PQExpBuffer query_buf)
{
	if (active_branch)
	{
		FUNC3(query_buf);
		FUNC1(scan_state);
		if (!pset.quiet)
			FUNC2(FUNC0("Query buffer reset (cleared)."));
	}

	return PSQL_CMD_SKIP_LINE;
}