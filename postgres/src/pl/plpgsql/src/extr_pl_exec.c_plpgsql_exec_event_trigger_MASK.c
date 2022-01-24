#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  (* func_end ) (TYPE_2__*,TYPE_1__*) ;int /*<<< orphan*/  (* func_beg ) (TYPE_2__*,TYPE_1__*) ;} ;
struct TYPE_20__ {struct TYPE_20__* previous; TYPE_2__* arg; int /*<<< orphan*/  callback; } ;
struct TYPE_19__ {int /*<<< orphan*/ * err_text; int /*<<< orphan*/ * err_stmt; int /*<<< orphan*/ * evtrigdata; } ;
struct TYPE_18__ {scalar_t__ action; } ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt ;
typedef  TYPE_1__ PLpgSQL_function ;
typedef  TYPE_2__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  EventTriggerData ;
typedef  TYPE_3__ ErrorContextCallback ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT ; 
 int /*<<< orphan*/  ERROR ; 
 int PLPGSQL_RC_RETURN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_3__* error_context_stack ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  plpgsql_exec_error_callback ; 
 TYPE_8__** plpgsql_plugin_ptr ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*) ; 

void
FUNC11(PLpgSQL_function *func, EventTriggerData *trigdata)
{
	PLpgSQL_execstate estate;
	ErrorContextCallback plerrcontext;
	int			rc;

	/*
	 * Setup the execution state
	 */
	FUNC8(&estate, func, NULL, NULL);
	estate.evtrigdata = trigdata;

	/*
	 * Setup error traceback support for ereport()
	 */
	plerrcontext.callback = plpgsql_exec_error_callback;
	plerrcontext.arg = &estate;
	plerrcontext.previous = error_context_stack;
	error_context_stack = &plerrcontext;

	/*
	 * Make local execution copies of all the datums
	 */
	estate.err_text = FUNC6("during initialization of execution state");
	FUNC0(&estate, func);

	/*
	 * Let the instrumentation plugin peek at this function
	 */
	if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->func_beg)
		((*plpgsql_plugin_ptr)->func_beg) (&estate, func);

	/*
	 * Now call the toplevel block of statements
	 */
	estate.err_text = NULL;
	estate.err_stmt = (PLpgSQL_stmt *) (func->action);
	rc = FUNC5(&estate, (PLpgSQL_stmt *) func->action);
	if (rc != PLPGSQL_RC_RETURN)
	{
		estate.err_stmt = NULL;
		estate.err_text = NULL;
		FUNC1(ERROR,
				(FUNC2(ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT),
				 FUNC3("control reached end of trigger procedure without RETURN")));
	}

	estate.err_stmt = NULL;
	estate.err_text = FUNC6("during function exit");

	/*
	 * Let the instrumentation plugin peek at this function
	 */
	if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->func_end)
		((*plpgsql_plugin_ptr)->func_end) (&estate, func);

	/* Clean up any leftover temporary memory */
	FUNC7(&estate);
	FUNC4(&estate);
	/* stmt_mcontext will be destroyed when function's main context is */

	/*
	 * Pop the error context stack
	 */
	error_context_stack = plerrcontext.previous;

	return;
}