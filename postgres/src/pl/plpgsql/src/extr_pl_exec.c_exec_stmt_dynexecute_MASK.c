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

/* Type definitions */
typedef  int uint64 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_25__ {TYPE_2__* func; scalar_t__* datums; void* eval_processed; int /*<<< orphan*/  readonly_func; } ;
struct TYPE_24__ {scalar_t__ strict; TYPE_1__* target; scalar_t__ into; int /*<<< orphan*/  params; int /*<<< orphan*/  query; } ;
struct TYPE_23__ {int /*<<< orphan*/  nulls; int /*<<< orphan*/  values; int /*<<< orphan*/  types; int /*<<< orphan*/  nargs; } ;
struct TYPE_22__ {int /*<<< orphan*/  tupdesc; int /*<<< orphan*/ ** vals; } ;
struct TYPE_21__ {scalar_t__ print_strict_params; } ;
struct TYPE_20__ {size_t dno; } ;
typedef  TYPE_3__ SPITupleTable ;
typedef  TYPE_4__ PreparedParamsData ;
typedef  int /*<<< orphan*/  PLpgSQL_variable ;
typedef  TYPE_5__ PLpgSQL_stmt_dynexecute ;
typedef  TYPE_6__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_NO_DATA_FOUND ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERRCODE_TOO_MANY_ROWS ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int PLPGSQL_RC_OK ; 
#define  SPI_ERROR_COPY 139 
#define  SPI_ERROR_TRANSACTION 138 
#define  SPI_OK_DELETE 137 
#define  SPI_OK_DELETE_RETURNING 136 
#define  SPI_OK_INSERT 135 
#define  SPI_OK_INSERT_RETURNING 134 
#define  SPI_OK_REWRITTEN 133 
#define  SPI_OK_SELECT 132 
#define  SPI_OK_SELINTO 131 
#define  SPI_OK_UPDATE 130 
#define  SPI_OK_UPDATE_RETURNING 129 
#define  SPI_OK_UTILITY 128 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 void* SPI_processed ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_3__* SPI_tuptable ; 
 char* FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC15 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC17 (TYPE_6__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*) ; 

__attribute__((used)) static int
FUNC19(PLpgSQL_execstate *estate,
					 PLpgSQL_stmt_dynexecute *stmt)
{
	Datum		query;
	bool		isnull;
	Oid			restype;
	int32		restypmod;
	char	   *querystr;
	int			exec_res;
	PreparedParamsData *ppd = NULL;
	MemoryContext stmt_mcontext = FUNC18(estate);

	/*
	 * First we evaluate the string expression after the EXECUTE keyword. Its
	 * result is the querystring we have to execute.
	 */
	query = FUNC14(estate, stmt->query, &isnull, &restype, &restypmod);
	if (isnull)
		FUNC8(ERROR,
				(FUNC9(ERRCODE_NULL_VALUE_NOT_ALLOWED),
				 FUNC12("query string argument of EXECUTE is null")));

	/* Get the C-String representation */
	querystr = FUNC6(estate, query, restype);

	/* copy it into the stmt_mcontext before we clean up */
	querystr = FUNC1(stmt_mcontext, querystr);

	FUNC13(estate);

	/*
	 * Execute the query without preparing a saved plan.
	 */
	if (stmt->params)
	{
		ppd = FUNC15(estate, stmt->params);
		exec_res = FUNC3(querystr,
										 ppd->nargs, ppd->types,
										 ppd->values, ppd->nulls,
										 estate->readonly_func, 0);
	}
	else
		exec_res = FUNC2(querystr, estate->readonly_func, 0);

	switch (exec_res)
	{
		case SPI_OK_SELECT:
		case SPI_OK_INSERT:
		case SPI_OK_UPDATE:
		case SPI_OK_DELETE:
		case SPI_OK_INSERT_RETURNING:
		case SPI_OK_UPDATE_RETURNING:
		case SPI_OK_DELETE_RETURNING:
		case SPI_OK_UTILITY:
		case SPI_OK_REWRITTEN:
			break;

		case 0:

			/*
			 * Also allow a zero return, which implies the querystring
			 * contained no commands.
			 */
			break;

		case SPI_OK_SELINTO:

			/*
			 * We want to disallow SELECT INTO for now, because its behavior
			 * is not consistent with SELECT INTO in a normal plpgsql context.
			 * (We need to reimplement EXECUTE to parse the string as a
			 * plpgsql command, not just feed it to SPI_execute.)  This is not
			 * a functional limitation because CREATE TABLE AS is allowed.
			 */
			FUNC8(ERROR,
					(FUNC9(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC12("EXECUTE of SELECT ... INTO is not implemented"),
					 FUNC11("You might want to use EXECUTE ... INTO or EXECUTE CREATE TABLE ... AS instead.")));
			break;

			/* Some SPI errors deserve specific error messages */
		case SPI_ERROR_COPY:
			FUNC8(ERROR,
					(FUNC9(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC12("cannot COPY to/from client in PL/pgSQL")));
			break;

		case SPI_ERROR_TRANSACTION:
			FUNC8(ERROR,
					(FUNC9(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC12("EXECUTE of transaction commands is not implemented")));
			break;

		default:
			FUNC7(ERROR, "SPI_execute failed executing query \"%s\": %s",
				 querystr, FUNC5(exec_res));
			break;
	}

	/* Save result info for GET DIAGNOSTICS */
	estate->eval_processed = SPI_processed;

	/* Process INTO if present */
	if (stmt->into)
	{
		SPITupleTable *tuptab = SPI_tuptable;
		uint64		n = SPI_processed;
		PLpgSQL_variable *target;

		/* If the statement did not return a tuple table, complain */
		if (tuptab == NULL)
			FUNC8(ERROR,
					(FUNC9(ERRCODE_SYNTAX_ERROR),
					 FUNC12("INTO used with a command that cannot return data")));

		/* Fetch target's datum entry */
		target = (PLpgSQL_variable *) estate->datums[stmt->target->dno];

		/*
		 * If SELECT ... INTO specified STRICT, and the query didn't find
		 * exactly one row, throw an error.  If STRICT was not specified, then
		 * allow the query to find any number of rows.
		 */
		if (n == 0)
		{
			if (stmt->strict)
			{
				char	   *errdetail;

				if (estate->func->print_strict_params)
					errdetail = FUNC17(estate, ppd);
				else
					errdetail = NULL;

				FUNC8(ERROR,
						(FUNC9(ERRCODE_NO_DATA_FOUND),
						 FUNC12("query returned no rows"),
						 errdetail ? FUNC10("parameters: %s", errdetail) : 0));
			}
			/* set the target to NULL(s) */
			FUNC16(estate, target, NULL, tuptab->tupdesc);
		}
		else
		{
			if (n > 1 && stmt->strict)
			{
				char	   *errdetail;

				if (estate->func->print_strict_params)
					errdetail = FUNC17(estate, ppd);
				else
					errdetail = NULL;

				FUNC8(ERROR,
						(FUNC9(ERRCODE_TOO_MANY_ROWS),
						 FUNC12("query returned more than one row"),
						 errdetail ? FUNC10("parameters: %s", errdetail) : 0));
			}

			/* Put the first result row into the target */
			FUNC16(estate, target, tuptab->vals[0], tuptab->tupdesc);
		}
		/* clean up after exec_move_row() */
		FUNC13(estate);
	}
	else
	{
		/*
		 * It might be a good idea to raise an error if the query returned
		 * tuples that are being ignored, but historically we have not done
		 * that.
		 */
	}

	/* Release any result from SPI_execute, as well as transient data */
	FUNC4(SPI_tuptable);
	FUNC0(stmt_mcontext);

	return PLPGSQL_RC_OK;
}