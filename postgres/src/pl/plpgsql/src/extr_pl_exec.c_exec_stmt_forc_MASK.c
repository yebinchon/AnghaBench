#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  set_args ;
struct TYPE_32__ {int /*<<< orphan*/  readonly_func; scalar_t__* datums; } ;
struct TYPE_31__ {int /*<<< orphan*/ * plan; } ;
struct TYPE_30__ {int into; int /*<<< orphan*/ * target; int /*<<< orphan*/ * sqlstmt; int /*<<< orphan*/  lineno; int /*<<< orphan*/  cmd_type; } ;
struct TYPE_29__ {size_t curvar; int /*<<< orphan*/ * argquery; int /*<<< orphan*/  lineno; } ;
struct TYPE_28__ {size_t cursor_explicit_argrow; int /*<<< orphan*/  cursor_options; TYPE_5__* cursor_explicit_expr; int /*<<< orphan*/  value; int /*<<< orphan*/  isnull; } ;
struct TYPE_27__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* Portal ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  PLpgSQL_variable ;
typedef  TYPE_2__ PLpgSQL_var ;
typedef  int /*<<< orphan*/  PLpgSQL_stmt_forq ;
typedef  TYPE_3__ PLpgSQL_stmt_forc ;
typedef  TYPE_4__ PLpgSQL_stmt_execsql ;
typedef  TYPE_5__ PLpgSQL_expr ;
typedef  TYPE_6__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_CURSOR ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ PLPGSQL_RC_OK ; 
 int /*<<< orphan*/  PLPGSQL_STMT_EXECSQL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_result ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 int FUNC15 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC18 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*,TYPE_5__*) ; 

__attribute__((used)) static int
FUNC21(PLpgSQL_execstate *estate, PLpgSQL_stmt_forc *stmt)
{
	PLpgSQL_var *curvar;
	MemoryContext stmt_mcontext = NULL;
	char	   *curname = NULL;
	PLpgSQL_expr *query;
	ParamListInfo paramLI;
	Portal		portal;
	int			rc;

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
		stmt_mcontext = FUNC18(estate);
		oldcontext = FUNC2(stmt_mcontext);
		curname = FUNC7(curvar->value);
		FUNC2(oldcontext);

		if (FUNC4(curname) != NULL)
			FUNC11(ERROR,
					(FUNC12(ERRCODE_DUPLICATE_CURSOR),
					 FUNC13("cursor \"%s\" already in use", curname)));
	}

	/* ----------
	 * Open the cursor just like an OPEN command
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
			FUNC11(ERROR,
					(FUNC12(ERRCODE_SYNTAX_ERROR),
					 FUNC13("arguments given for cursor without arguments")));

		FUNC19(&set_args, 0, sizeof(set_args));
		set_args.cmd_type = PLPGSQL_STMT_EXECSQL;
		set_args.lineno = stmt->lineno;
		set_args.sqlstmt = stmt->argquery;
		set_args.into = true;
		/* XXX historically this has not been STRICT */
		set_args.target = (PLpgSQL_variable *)
			(estate->datums[curvar->cursor_explicit_argrow]);

		if (FUNC17(estate, &set_args) != PLPGSQL_RC_OK)
			FUNC10(ERROR, "open cursor failed during argument processing");
	}
	else
	{
		if (curvar->cursor_explicit_argrow >= 0)
			FUNC11(ERROR,
					(FUNC12(ERRCODE_SYNTAX_ERROR),
					 FUNC13("arguments required for cursor")));
	}

	query = curvar->cursor_explicit_expr;
	FUNC0(query);

	if (query->plan == NULL)
		FUNC16(estate, query, curvar->cursor_options, true);

	/*
	 * Set up ParamListInfo for this query
	 */
	paramLI = FUNC20(estate, query);

	/*
	 * Open the cursor (the paramlist will get copied into the portal)
	 */
	portal = FUNC5(curname, query->plan,
											paramLI,
											estate->readonly_func);
	if (portal == NULL)
		FUNC10(ERROR, "could not open cursor: %s",
			 FUNC6(SPI_result));

	/*
	 * If cursor variable was NULL, store the generated portal name in it
	 */
	if (curname == NULL)
		FUNC9(estate, curvar, portal->name);

	/*
	 * Clean up before entering exec_for_query
	 */
	FUNC14(estate);
	if (stmt_mcontext)
		FUNC1(stmt_mcontext);

	/*
	 * Execute the loop.  We can't prefetch because the cursor is accessible
	 * to the user, for instance via UPDATE WHERE CURRENT OF within the loop.
	 */
	rc = FUNC15(estate, (PLpgSQL_stmt_forq *) stmt, portal, false);

	/* ----------
	 * Close portal, and restore cursor variable if it was initially NULL.
	 * ----------
	 */
	FUNC3(portal);

	if (curname == NULL)
		FUNC8(estate, curvar, (Datum) 0, true, false);

	return rc;
}