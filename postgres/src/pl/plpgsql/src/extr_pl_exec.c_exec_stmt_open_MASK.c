#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  set_args ;
struct TYPE_28__ {int /*<<< orphan*/  readonly_func; scalar_t__* datums; } ;
struct TYPE_27__ {int /*<<< orphan*/ * plan; } ;
struct TYPE_26__ {int into; int /*<<< orphan*/ * target; int /*<<< orphan*/ * sqlstmt; int /*<<< orphan*/  lineno; int /*<<< orphan*/  cmd_type; } ;
struct TYPE_25__ {size_t curvar; int /*<<< orphan*/ * argquery; int /*<<< orphan*/  lineno; int /*<<< orphan*/  cursor_options; int /*<<< orphan*/  params; int /*<<< orphan*/ * dynquery; TYPE_5__* query; } ;
struct TYPE_24__ {size_t cursor_explicit_argrow; int /*<<< orphan*/  cursor_options; TYPE_5__* cursor_explicit_expr; int /*<<< orphan*/  value; int /*<<< orphan*/  isnull; } ;
struct TYPE_23__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* Portal ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  PLpgSQL_variable ;
typedef  TYPE_2__ PLpgSQL_var ;
typedef  TYPE_3__ PLpgSQL_stmt_open ;
typedef  TYPE_4__ PLpgSQL_stmt_execsql ;
typedef  TYPE_5__ PLpgSQL_expr ;
typedef  TYPE_6__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/ * MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_DUPLICATE_CURSOR ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int PLPGSQL_RC_OK ; 
 int /*<<< orphan*/  PLPGSQL_STMT_EXECSQL ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_result ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 TYPE_1__* FUNC11 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,TYPE_5__*) ; 

__attribute__((used)) static int
FUNC18(PLpgSQL_execstate *estate, PLpgSQL_stmt_open *stmt)
{
	PLpgSQL_var *curvar;
	MemoryContext stmt_mcontext = NULL;
	char	   *curname = NULL;
	PLpgSQL_expr *query;
	Portal		portal;
	ParamListInfo paramLI;

	/* ----------
	 * Get the cursor variable and if it has an assigned name, check
	 * that it's not in use currently.
	 * ----------
	 */
	curvar = (PLpgSQL_var *) (estate->datums[stmt->curvar]);
	if (!curvar->isnull)
	{
		MemoryContext oldcontext;

		/* We only need stmt_mcontext to hold the cursor name string */
		stmt_mcontext = FUNC15(estate);
		oldcontext = FUNC1(stmt_mcontext);
		curname = FUNC5(curvar->value);
		FUNC1(oldcontext);

		if (FUNC2(curname) != NULL)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_DUPLICATE_CURSOR),
					 FUNC10("cursor \"%s\" already in use", curname)));
	}

	/* ----------
	 * Process the OPEN according to it's type.
	 * ----------
	 */
	if (stmt->query != NULL)
	{
		/* ----------
		 * This is an OPEN refcursor FOR SELECT ...
		 *
		 * We just make sure the query is planned. The real work is
		 * done downstairs.
		 * ----------
		 */
		query = stmt->query;
		if (query->plan == NULL)
			FUNC13(estate, query, stmt->cursor_options, true);
	}
	else if (stmt->dynquery != NULL)
	{
		/* ----------
		 * This is an OPEN refcursor FOR EXECUTE ...
		 * ----------
		 */
		portal = FUNC11(estate,
										   stmt->dynquery,
										   stmt->params,
										   curname,
										   stmt->cursor_options);

		/*
		 * If cursor variable was NULL, store the generated portal name in it.
		 * Note: exec_dynquery_with_params already reset the stmt_mcontext, so
		 * curname is a dangling pointer here; but testing it for nullness is
		 * OK.
		 */
		if (curname == NULL)
			FUNC6(estate, curvar, portal->name);

		return PLPGSQL_RC_OK;
	}
	else
	{
		/* ----------
		 * This is an OPEN cursor
		 *
		 * Note: parser should already have checked that statement supplies
		 * args iff cursor needs them, but we check again to be safe.
		 * ----------
		 */
		if (stmt->argquery != NULL)
		{
			/* ----------
			 * OPEN CURSOR with args.  We fake a SELECT ... INTO ...
			 * statement to evaluate the args and put 'em into the
			 * internal row.
			 * ----------
			 */
			PLpgSQL_stmt_execsql set_args;

			if (curvar->cursor_explicit_argrow < 0)
				FUNC8(ERROR,
						(FUNC9(ERRCODE_SYNTAX_ERROR),
						 FUNC10("arguments given for cursor without arguments")));

			FUNC16(&set_args, 0, sizeof(set_args));
			set_args.cmd_type = PLPGSQL_STMT_EXECSQL;
			set_args.lineno = stmt->lineno;
			set_args.sqlstmt = stmt->argquery;
			set_args.into = true;
			/* XXX historically this has not been STRICT */
			set_args.target = (PLpgSQL_variable *)
				(estate->datums[curvar->cursor_explicit_argrow]);

			if (FUNC14(estate, &set_args) != PLPGSQL_RC_OK)
				FUNC7(ERROR, "open cursor failed during argument processing");
		}
		else
		{
			if (curvar->cursor_explicit_argrow >= 0)
				FUNC8(ERROR,
						(FUNC9(ERRCODE_SYNTAX_ERROR),
						 FUNC10("arguments required for cursor")));
		}

		query = curvar->cursor_explicit_expr;
		if (query->plan == NULL)
			FUNC13(estate, query, curvar->cursor_options, true);
	}

	/*
	 * Set up ParamListInfo for this query
	 */
	paramLI = FUNC17(estate, query);

	/*
	 * Open the cursor (the paramlist will get copied into the portal)
	 */
	portal = FUNC3(curname, query->plan,
											paramLI,
											estate->readonly_func);
	if (portal == NULL)
		FUNC7(ERROR, "could not open cursor: %s",
			 FUNC4(SPI_result));

	/*
	 * If cursor variable was NULL, store the generated portal name in it
	 */
	if (curname == NULL)
		FUNC6(estate, curvar, portal->name);

	/* If we had any transient data, clean it up */
	FUNC12(estate);
	if (stmt_mcontext)
		FUNC0(stmt_mcontext);

	return PLPGSQL_RC_OK;
}