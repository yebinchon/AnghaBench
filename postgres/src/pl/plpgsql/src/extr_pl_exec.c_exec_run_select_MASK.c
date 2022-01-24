#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  eval_processed; int /*<<< orphan*/ * eval_tuptable; int /*<<< orphan*/  readonly_func; } ;
struct TYPE_10__ {int /*<<< orphan*/  query; int /*<<< orphan*/ * plan; } ;
typedef  int /*<<< orphan*/ * Portal ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  TYPE_1__ PLpgSQL_expr ;
typedef  TYPE_2__ PLpgSQL_execstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CURSOR_OPT_PARALLEL_OK ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int SPI_OK_CURSOR ; 
 int SPI_OK_SELECT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  SPI_processed ; 
 int /*<<< orphan*/  SPI_result ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SPI_tuptable ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(PLpgSQL_execstate *estate,
				PLpgSQL_expr *expr, long maxtuples, Portal *portalP)
{
	ParamListInfo paramLI;
	int			rc;

	/*
	 * On the first call for this expression generate the plan.
	 *
	 * If we don't need to return a portal, then we're just going to execute
	 * the query once, which means it's OK to use a parallel plan, even if the
	 * number of rows being fetched is limited.  If we do need to return a
	 * portal, the caller might do cursor operations, which parallel query
	 * can't support.
	 */
	if (expr->plan == NULL)
		FUNC9(estate, expr,
						  portalP == NULL ? CURSOR_OPT_PARALLEL_OK : 0, true);

	/*
	 * Set up ParamListInfo to pass to executor
	 */
	paramLI = FUNC10(estate, expr);

	/*
	 * If a portal was requested, put the query and paramlist into the portal
	 */
	if (portalP != NULL)
	{
		*portalP = FUNC1(NULL, expr->plan,
												  paramLI,
												  estate->readonly_func);
		if (*portalP == NULL)
			FUNC4(ERROR, "could not open implicit cursor for query \"%s\": %s",
				 expr->query, FUNC3(SPI_result));
		FUNC8(estate);
		return SPI_OK_CURSOR;
	}

	/*
	 * Execute the query
	 */
	rc = FUNC2(expr->plan, paramLI,
										 estate->readonly_func, maxtuples);
	if (rc != SPI_OK_SELECT)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_SYNTAX_ERROR),
				 FUNC7("query \"%s\" is not a SELECT", expr->query)));

	/* Save query results for eventual cleanup */
	FUNC0(estate->eval_tuptable == NULL);
	estate->eval_tuptable = SPI_tuptable;
	estate->eval_processed = SPI_processed;

	return rc;
}