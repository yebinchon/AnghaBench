#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_12__ {char* arg; struct TYPE_12__* previous; int /*<<< orphan*/  callback; } ;
struct TYPE_11__ {int out_param_varno; scalar_t__ fn_rettype; int fn_retset; int fn_retistuple; int fn_retisdomain; int fn_retbyval; int fn_rettyplen; int fn_readonly; scalar_t__ fn_nargs; int /*<<< orphan*/  action; int /*<<< orphan*/  found_varno; int /*<<< orphan*/  fn_prokind; scalar_t__ nstatements; scalar_t__ extra_errors; scalar_t__ extra_warnings; int /*<<< orphan*/  print_strict_params; int /*<<< orphan*/  resolve_option; int /*<<< orphan*/ * fn_cxt; int /*<<< orphan*/  fn_input_collation; int /*<<< orphan*/  fn_is_trigger; int /*<<< orphan*/  fn_signature; } ;
struct TYPE_10__ {int /*<<< orphan*/  dno; } ;
typedef  TYPE_1__ PLpgSQL_variable ;
typedef  TYPE_2__ PLpgSQL_function ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  TYPE_3__ ErrorContextCallback ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BOOLOID ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PLPGSQL_LABEL_BLOCK ; 
 int /*<<< orphan*/  PLPGSQL_NOT_TRIGGER ; 
 int /*<<< orphan*/  PROKIND_FUNCTION ; 
 scalar_t__ VOIDOID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int check_function_bodies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__* error_context_stack ; 
 scalar_t__ FUNC4 (int) ; 
 int plpgsql_DumpExecTree ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int plpgsql_check_syntax ; 
 int /*<<< orphan*/  plpgsql_compile_error_callback ; 
 int /*<<< orphan*/ * plpgsql_compile_tmp_cxt ; 
 TYPE_2__* plpgsql_curr_compile ; 
 char* plpgsql_error_funcname ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  plpgsql_parse_result ; 
 int /*<<< orphan*/  plpgsql_print_strict_params ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  plpgsql_variable_conflict ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

PLpgSQL_function *
FUNC15(char *proc_source)
{
	char	   *func_name = "inline_code_block";
	PLpgSQL_function *function;
	ErrorContextCallback plerrcontext;
	PLpgSQL_variable *var;
	int			parse_rc;
	MemoryContext func_cxt;

	/*
	 * Setup the scanner input and error info.  We assume that this function
	 * cannot be invoked recursively, so there's no need to save and restore
	 * the static variables used here.
	 */
	FUNC11(proc_source);

	plpgsql_error_funcname = func_name;

	/*
	 * Setup error traceback support for ereport()
	 */
	plerrcontext.callback = plpgsql_compile_error_callback;
	plerrcontext.arg = proc_source;
	plerrcontext.previous = error_context_stack;
	error_context_stack = &plerrcontext;

	/* Do extra syntax checking if check_function_bodies is on */
	plpgsql_check_syntax = check_function_bodies;

	/* Function struct does not live past current statement */
	function = (PLpgSQL_function *) FUNC4(sizeof(PLpgSQL_function));

	plpgsql_curr_compile = function;

	/*
	 * All the rest of the compile-time storage (e.g. parse tree) is kept in
	 * its own memory context, so it can be reclaimed easily.
	 */
	func_cxt = FUNC0(CurrentMemoryContext,
									 "PL/pgSQL inline code context",
									 ALLOCSET_DEFAULT_SIZES);
	plpgsql_compile_tmp_cxt = FUNC1(func_cxt);

	function->fn_signature = FUNC14(func_name);
	function->fn_is_trigger = PLPGSQL_NOT_TRIGGER;
	function->fn_input_collation = InvalidOid;
	function->fn_cxt = func_cxt;
	function->out_param_varno = -1; /* set up for no OUT param */
	function->resolve_option = plpgsql_variable_conflict;
	function->print_strict_params = plpgsql_print_strict_params;

	/*
	 * don't do extra validation for inline code as we don't want to add spam
	 * at runtime
	 */
	function->extra_warnings = 0;
	function->extra_errors = 0;

	function->nstatements = 0;

	FUNC8();
	FUNC9(func_name, PLPGSQL_LABEL_BLOCK);
	plpgsql_DumpExecTree = false;
	FUNC12();

	/* Set up as though in a function returning VOID */
	function->fn_rettype = VOIDOID;
	function->fn_retset = false;
	function->fn_retistuple = false;
	function->fn_retisdomain = false;
	function->fn_prokind = PROKIND_FUNCTION;
	/* a bit of hardwired knowledge about type VOID here */
	function->fn_retbyval = true;
	function->fn_rettyplen = sizeof(int32);

	/*
	 * Remember if function is STABLE/IMMUTABLE.  XXX would it be better to
	 * set this true inside a read-only transaction?  Not clear.
	 */
	function->fn_readonly = false;

	/*
	 * Create the magic FOUND variable.
	 */
	var = FUNC6("found", 0,
								 FUNC5(BOOLOID,
														-1,
														InvalidOid,
														NULL),
								 true);
	function->found_varno = var->dno;

	/*
	 * Now parse the function's text
	 */
	parse_rc = FUNC13();
	if (parse_rc != 0)
		FUNC3(ERROR, "plpgsql parser returned %d", parse_rc);
	function->action = plpgsql_parse_result;

	FUNC10();

	/*
	 * If it returns VOID (always true at the moment), we allow control to
	 * fall off the end without an explicit RETURN statement.
	 */
	if (function->fn_rettype == VOIDOID)
		FUNC2(function);

	/*
	 * Complete the function's info
	 */
	function->fn_nargs = 0;

	FUNC7(function);

	/*
	 * Pop the error context stack
	 */
	error_context_stack = plerrcontext.previous;
	plpgsql_error_funcname = NULL;

	plpgsql_check_syntax = false;

	FUNC1(plpgsql_compile_tmp_cxt);
	plpgsql_compile_tmp_cxt = NULL;
	return function;
}