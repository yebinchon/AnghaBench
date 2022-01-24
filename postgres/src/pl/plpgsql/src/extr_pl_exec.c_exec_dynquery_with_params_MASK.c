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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_11__ {int /*<<< orphan*/  readonly_func; } ;
struct TYPE_10__ {int /*<<< orphan*/ * nulls; int /*<<< orphan*/ * values; int /*<<< orphan*/ * types; int /*<<< orphan*/  nargs; } ;
typedef  TYPE_1__ PreparedParamsData ;
typedef  int /*<<< orphan*/ * Portal ;
typedef  int /*<<< orphan*/  PLpgSQL_expr ;
typedef  TYPE_2__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SPI_result ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static Portal
FUNC13(PLpgSQL_execstate *estate,
						  PLpgSQL_expr *dynquery,
						  List *params,
						  const char *portalname,
						  int cursorOptions)
{
	Portal		portal;
	Datum		query;
	bool		isnull;
	Oid			restype;
	int32		restypmod;
	char	   *querystr;
	MemoryContext stmt_mcontext = FUNC12(estate);

	/*
	 * Evaluate the string expression after the EXECUTE keyword. Its result is
	 * the querystring we have to execute.
	 */
	query = FUNC10(estate, dynquery, &isnull, &restype, &restypmod);
	if (isnull)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC8("query string argument of EXECUTE is null")));

	/* Get the C-String representation */
	querystr = FUNC4(estate, query, restype);

	/* copy it into the stmt_mcontext before we clean up */
	querystr = FUNC1(stmt_mcontext, querystr);

	FUNC9(estate);

	/*
	 * Open an implicit cursor for the query.  We use
	 * SPI_cursor_open_with_args even when there are no params, because this
	 * avoids making and freeing one copy of the plan.
	 */
	if (params)
	{
		PreparedParamsData *ppd;

		ppd = FUNC11(estate, params);
		portal = FUNC2(portalname,
										   querystr,
										   ppd->nargs, ppd->types,
										   ppd->values, ppd->nulls,
										   estate->readonly_func,
										   cursorOptions);
	}
	else
	{
		portal = FUNC2(portalname,
										   querystr,
										   0, NULL,
										   NULL, NULL,
										   estate->readonly_func,
										   cursorOptions);
	}

	if (portal == NULL)
		FUNC5(ERROR, "could not open implicit cursor for query \"%s\": %s",
			 querystr, FUNC3(SPI_result));

	/* Release transient data */
	FUNC0(stmt_mcontext);

	return portal;
}