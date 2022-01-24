#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_20__ {int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; } ;
struct TYPE_19__ {int eval_processed; TYPE_1__* eval_tuptable; } ;
struct TYPE_18__ {int /*<<< orphan*/  query; int /*<<< orphan*/ * plan; } ;
struct TYPE_17__ {TYPE_14__* tupdesc; int /*<<< orphan*/ * vals; } ;
struct TYPE_16__ {int natts; } ;
typedef  TYPE_2__ PLpgSQL_expr ;
typedef  TYPE_3__ PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_4__* Form_pg_attribute ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  CURSOR_OPT_PARALLEL_OK ; 
 int /*<<< orphan*/  ERRCODE_CARDINALITY_VIOLATION ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int SPI_OK_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_14__*,int,int*) ; 
 TYPE_4__* FUNC1 (TYPE_14__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Datum
FUNC9(PLpgSQL_execstate *estate,
			   PLpgSQL_expr *expr,
			   bool *isNull,
			   Oid *rettype,
			   int32 *rettypmod)
{
	Datum		result = 0;
	int			rc;
	Form_pg_attribute attr;

	/*
	 * If first time through, create a plan for this expression.
	 */
	if (expr->plan == NULL)
		FUNC7(estate, expr, CURSOR_OPT_PARALLEL_OK, true);

	/*
	 * If this is a simple expression, bypass SPI and use the executor
	 * directly
	 */
	if (FUNC6(estate, expr,
							  &result, isNull, rettype, rettypmod))
		return result;

	/*
	 * Else do it the hard way via exec_run_select
	 */
	rc = FUNC8(estate, expr, 2, NULL);
	if (rc != SPI_OK_SELECT)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC4("query \"%s\" did not return data", expr->query)));

	/*
	 * Check that the expression returns exactly one column...
	 */
	if (estate->eval_tuptable->tupdesc->natts != 1)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_SYNTAX_ERROR),
				 FUNC5("query \"%s\" returned %d column",
							   "query \"%s\" returned %d columns",
							   estate->eval_tuptable->tupdesc->natts,
							   expr->query,
							   estate->eval_tuptable->tupdesc->natts)));

	/*
	 * ... and get the column's datatype.
	 */
	attr = FUNC1(estate->eval_tuptable->tupdesc, 0);
	*rettype = attr->atttypid;
	*rettypmod = attr->atttypmod;

	/*
	 * If there are no rows selected, the result is a NULL of that type.
	 */
	if (estate->eval_processed == 0)
	{
		*isNull = true;
		return (Datum) 0;
	}

	/*
	 * Check that the expression returned no more than one row.
	 */
	if (estate->eval_processed != 1)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_CARDINALITY_VIOLATION),
				 FUNC4("query \"%s\" returned more than one row",
						expr->query)));

	/*
	 * Return the single result Datum.
	 */
	return FUNC0(estate->eval_tuptable->vals[0],
						 estate->eval_tuptable->tupdesc, 1, isNull);
}