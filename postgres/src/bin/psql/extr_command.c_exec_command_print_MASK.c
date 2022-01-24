#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  backslashResult ;
struct TYPE_6__ {int /*<<< orphan*/  quiet; } ;
struct TYPE_5__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ pset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static backslashResult
FUNC3(PsqlScanState scan_state, bool active_branch,
				   PQExpBuffer query_buf, PQExpBuffer previous_buf)
{
	if (active_branch)
	{
		/*
		 * We want to print the same thing \g would execute, but not to change
		 * the query buffer state; so we can't use copy_previous_query().
		 * Also, beware of possibility that buffer pointers are NULL.
		 */
		if (query_buf && query_buf->len > 0)
			FUNC2(query_buf->data);
		else if (previous_buf && previous_buf->len > 0)
			FUNC2(previous_buf->data);
		else if (!pset.quiet)
			FUNC2(FUNC0("Query buffer is empty."));
		FUNC1(stdout);
	}

	return PSQL_CMD_SKIP_LINE;
}