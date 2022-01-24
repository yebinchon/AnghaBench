#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_17__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_25__ {scalar_t__ generation; } ;
struct TYPE_24__ {int /*<<< orphan*/ * ecxt_param_list_info; } ;
struct TYPE_23__ {int /*<<< orphan*/  readonly_func; TYPE_2__* paramLI; TYPE_1__* simple_eval_estate; TYPE_5__* eval_econtext; } ;
struct TYPE_22__ {int expr_simple_in_use; scalar_t__ expr_simple_lxid; scalar_t__ expr_simple_generation; scalar_t__ rwparam; int /*<<< orphan*/  expr_simple_state; int /*<<< orphan*/ * expr_simple_expr; int /*<<< orphan*/  expr_simple_typmod; int /*<<< orphan*/  expr_simple_type; int /*<<< orphan*/  plan; } ;
struct TYPE_21__ {void* parserSetupArg; } ;
struct TYPE_20__ {int /*<<< orphan*/  es_query_cxt; } ;
struct TYPE_19__ {scalar_t__ lxid; } ;
typedef  TYPE_3__ PLpgSQL_expr ;
typedef  TYPE_4__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  scalar_t__ LocalTransactionId ;
typedef  TYPE_5__ ExprContext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_6__ CachedPlan ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_5__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_17__* MyProc ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int) ; 
 TYPE_6__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static bool
FUNC14(PLpgSQL_execstate *estate,
					  PLpgSQL_expr *expr,
					  Datum *result,
					  bool *isNull,
					  Oid *rettype,
					  int32 *rettypmod)
{
	ExprContext *econtext = estate->eval_econtext;
	LocalTransactionId curlxid = MyProc->lxid;
	CachedPlan *cplan;
	void	   *save_setup_arg;
	MemoryContext oldcontext;

	/*
	 * Forget it if expression wasn't simple before.
	 */
	if (expr->expr_simple_expr == NULL)
		return false;

	/*
	 * If expression is in use in current xact, don't touch it.
	 */
	if (expr->expr_simple_in_use && expr->expr_simple_lxid == curlxid)
		return false;

	/*
	 * Revalidate cached plan, so that we will notice if it became stale. (We
	 * need to hold a refcount while using the plan, anyway.)  If replanning
	 * is needed, do that work in the eval_mcontext.
	 */
	oldcontext = FUNC5(FUNC12(estate));
	cplan = FUNC9(expr->plan);
	FUNC5(oldcontext);

	/*
	 * We can't get a failure here, because the number of CachedPlanSources in
	 * the SPI plan can't change from what exec_simple_check_plan saw; it's a
	 * property of the raw parsetree generated from the query text.
	 */
	FUNC0(cplan != NULL);

	/* If it got replanned, update our copy of the simple expression */
	if (cplan->generation != expr->expr_simple_generation)
	{
		FUNC11(expr, cplan);
		/* better recheck r/w safety, as it could change due to inlining */
		if (expr->rwparam >= 0)
			FUNC10(expr, expr->rwparam);
	}

	/*
	 * Pass back previously-determined result type.
	 */
	*rettype = expr->expr_simple_type;
	*rettypmod = expr->expr_simple_typmod;

	/*
	 * Set up ParamListInfo to pass to executor.  For safety, save and restore
	 * estate->paramLI->parserSetupArg around our use of the param list.
	 */
	save_setup_arg = estate->paramLI->parserSetupArg;

	econtext->ecxt_param_list_info = FUNC13(estate, expr);

	/*
	 * Prepare the expression for execution, if it's not been done already in
	 * the current transaction.  (This will be forced to happen if we called
	 * exec_save_simple_expr above.)
	 */
	if (expr->expr_simple_lxid != curlxid)
	{
		oldcontext = FUNC5(estate->simple_eval_estate->es_query_cxt);
		expr->expr_simple_state =
			FUNC3(expr->expr_simple_expr,
								   econtext->ecxt_param_list_info);
		expr->expr_simple_in_use = false;
		expr->expr_simple_lxid = curlxid;
		FUNC5(oldcontext);
	}

	/*
	 * We have to do some of the things SPI_execute_plan would do, in
	 * particular advance the snapshot if we are in a non-read-only function.
	 * Without this, stable functions within the expression would fail to see
	 * updates made so far by our own function.
	 */
	oldcontext = FUNC5(FUNC12(estate));
	if (!estate->readonly_func)
	{
		FUNC1();
		FUNC7(FUNC4());
	}

	/*
	 * Mark expression as busy for the duration of the ExecEvalExpr call.
	 */
	expr->expr_simple_in_use = true;

	/*
	 * Finally we can call the executor to evaluate the expression
	 */
	*result = FUNC2(expr->expr_simple_state,
						   econtext,
						   isNull);

	/* Assorted cleanup */
	expr->expr_simple_in_use = false;

	econtext->ecxt_param_list_info = NULL;

	estate->paramLI->parserSetupArg = save_setup_arg;

	if (!estate->readonly_func)
		FUNC6();

	FUNC5(oldcontext);

	/*
	 * Now we can release our refcount on the cached plan.
	 */
	FUNC8(cplan, true);

	/*
	 * That's it.
	 */
	return true;
}