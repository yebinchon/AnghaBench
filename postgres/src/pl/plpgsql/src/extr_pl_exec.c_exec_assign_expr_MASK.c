#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_10__ {scalar_t__ dtype; int /*<<< orphan*/  dno; } ;
struct TYPE_9__ {int /*<<< orphan*/ * plan; } ;
typedef  TYPE_1__ PLpgSQL_expr ;
typedef  int /*<<< orphan*/  PLpgSQL_execstate ;
typedef  TYPE_2__ PLpgSQL_datum ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ PLPGSQL_DTYPE_VAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(PLpgSQL_execstate *estate, PLpgSQL_datum *target,
				 PLpgSQL_expr *expr)
{
	Datum		value;
	bool		isnull;
	Oid			valtype;
	int32		valtypmod;

	/*
	 * If first time through, create a plan for this expression, and then see
	 * if we can pass the target variable as a read-write parameter to the
	 * expression.  (This is a bit messy, but it seems cleaner than modifying
	 * the API of exec_eval_expr for the purpose.)
	 */
	if (expr->plan == NULL)
	{
		FUNC4(estate, expr, 0, true);
		if (target->dtype == PLPGSQL_DTYPE_VAR)
			FUNC1(expr, target->dno);
	}

	value = FUNC3(estate, expr, &isnull, &valtype, &valtypmod);
	FUNC0(estate, target, value, isnull, valtype, valtypmod);
	FUNC2(estate);
}