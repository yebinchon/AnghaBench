#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ps_ExprContext; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_9__ {TYPE_2__ ss; scalar_t__ fdw_state; } ;
struct TYPE_8__ {int numParams; char** param_values; int /*<<< orphan*/ * result; int /*<<< orphan*/  num_tuples; scalar_t__ has_returning; int /*<<< orphan*/  query; int /*<<< orphan*/  conn; int /*<<< orphan*/  param_exprs; int /*<<< orphan*/  param_flinfo; } ;
typedef  TYPE_3__ PgFdwDirectModifyState ;
typedef  TYPE_4__ ForeignScanState ;
typedef  int /*<<< orphan*/  ExprContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static void
FUNC8(ForeignScanState *node)
{
	PgFdwDirectModifyState *dmstate = (PgFdwDirectModifyState *) node->fdw_state;
	ExprContext *econtext = node->ss.ps.ps_ExprContext;
	int			numParams = dmstate->numParams;
	const char **values = dmstate->param_values;

	/*
	 * Construct array of query parameter values in text format.
	 */
	if (numParams > 0)
		FUNC7(econtext,
							 dmstate->param_flinfo,
							 dmstate->param_exprs,
							 values);

	/*
	 * Notice that we pass NULL for paramTypes, thus forcing the remote server
	 * to infer types for all parameters.  Since we explicitly cast every
	 * parameter (see deparse.c), the "inference" is trivial and will produce
	 * the desired result.  This allows us to avoid assuming that the remote
	 * server has the same OIDs we do for the parameters' types.
	 */
	if (!FUNC3(dmstate->conn, dmstate->query, numParams,
						   NULL, values, NULL, NULL, 0))
		FUNC6(ERROR, NULL, dmstate->conn, false, dmstate->query);

	/*
	 * Get the result, and check for success.
	 *
	 * We don't use a PG_TRY block here, so be careful not to throw error
	 * without releasing the PGresult.
	 */
	dmstate->result = FUNC5(dmstate->conn, dmstate->query);
	if (FUNC2(dmstate->result) !=
		(dmstate->has_returning ? PGRES_TUPLES_OK : PGRES_COMMAND_OK))
		FUNC6(ERROR, dmstate->result, dmstate->conn, true,
						   dmstate->query);

	/* Get the number of rows affected. */
	if (dmstate->has_returning)
		dmstate->num_tuples = FUNC1(dmstate->result);
	else
		dmstate->num_tuples = FUNC4(FUNC0(dmstate->result));
}