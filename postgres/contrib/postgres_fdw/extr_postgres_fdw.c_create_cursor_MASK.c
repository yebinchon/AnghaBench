#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  ecxt_per_tuple_memory; } ;
struct TYPE_11__ {TYPE_6__* ps_ExprContext; } ;
struct TYPE_12__ {TYPE_1__ ps; } ;
struct TYPE_15__ {TYPE_2__ ss; scalar_t__ fdw_state; } ;
struct TYPE_14__ {int numParams; char** param_values; int cursor_exists; int eof_reached; scalar_t__ fetch_ct_2; scalar_t__ next_tuple; scalar_t__ num_tuples; int /*<<< orphan*/ * tuples; int /*<<< orphan*/  query; int /*<<< orphan*/  cursor_number; int /*<<< orphan*/  param_exprs; int /*<<< orphan*/  param_flinfo; int /*<<< orphan*/ * conn; } ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ StringInfoData ;
typedef  TYPE_4__ PgFdwScanState ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_5__ ForeignScanState ;
typedef  TYPE_6__ ExprContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static void
FUNC10(ForeignScanState *node)
{
	PgFdwScanState *fsstate = (PgFdwScanState *) node->fdw_state;
	ExprContext *econtext = node->ss.ps.ps_ExprContext;
	int			numParams = fsstate->numParams;
	const char **values = fsstate->param_values;
	PGconn	   *conn = fsstate->conn;
	StringInfoData buf;
	PGresult   *res;

	/*
	 * Construct array of query parameter values in text format.  We do the
	 * conversions in the short-lived per-tuple context, so as not to cause a
	 * memory leak over repeated scans.
	 */
	if (numParams > 0)
	{
		MemoryContext oldcontext;

		oldcontext = FUNC0(econtext->ecxt_per_tuple_memory);

		FUNC9(econtext,
							 fsstate->param_flinfo,
							 fsstate->param_exprs,
							 values);

		FUNC0(oldcontext);
	}

	/* Construct the DECLARE CURSOR command */
	FUNC5(&buf);
	FUNC4(&buf, "DECLARE c%u CURSOR FOR\n%s",
					 fsstate->cursor_number, fsstate->query);

	/*
	 * Notice that we pass NULL for paramTypes, thus forcing the remote server
	 * to infer types for all parameters.  Since we explicitly cast every
	 * parameter (see deparse.c), the "inference" is trivial and will produce
	 * the desired result.  This allows us to avoid assuming that the remote
	 * server has the same OIDs we do for the parameters' types.
	 */
	if (!FUNC3(conn, buf.data, numParams,
						   NULL, values, NULL, NULL, 0))
		FUNC8(ERROR, NULL, conn, false, buf.data);

	/*
	 * Get the result, and check for success.
	 *
	 * We don't use a PG_TRY block here, so be careful not to throw error
	 * without releasing the PGresult.
	 */
	res = FUNC7(conn, buf.data);
	if (FUNC2(res) != PGRES_COMMAND_OK)
		FUNC8(ERROR, res, conn, true, fsstate->query);
	FUNC1(res);

	/* Mark the cursor as created, and show no tuples have been retrieved */
	fsstate->cursor_exists = true;
	fsstate->tuples = NULL;
	fsstate->num_tuples = 0;
	fsstate->next_tuple = 0;
	fsstate->fetch_ct_2 = 0;
	fsstate->eof_reached = false;

	/* Clean up */
	FUNC6(buf.data);
}