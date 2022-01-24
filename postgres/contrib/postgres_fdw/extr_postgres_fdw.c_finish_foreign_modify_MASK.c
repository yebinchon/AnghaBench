#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sql ;
struct TYPE_3__ {char* p_name; int /*<<< orphan*/ * conn; } ;
typedef  TYPE_1__ PgFdwModifyState ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC7(PgFdwModifyState *fmstate)
{
	FUNC0(fmstate != NULL);

	/* If we created a prepared statement, destroy it */
	if (fmstate->p_name)
	{
		char		sql[64];
		PGresult   *res;

		FUNC6(sql, sizeof(sql), "DEALLOCATE %s", fmstate->p_name);

		/*
		 * We don't use a PG_TRY block here, so be careful not to throw error
		 * without releasing the PGresult.
		 */
		res = FUNC4(fmstate->conn, sql);
		if (FUNC2(res) != PGRES_COMMAND_OK)
			FUNC5(ERROR, res, fmstate->conn, true, sql);
		FUNC1(res);
		fmstate->p_name = NULL;
	}

	/* Release remote connection */
	FUNC3(fmstate->conn);
	fmstate->conn = NULL;
}