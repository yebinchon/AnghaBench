#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  location; int /*<<< orphan*/  fields; } ;
struct TYPE_13__ {TYPE_1__* func; } ;
struct TYPE_12__ {scalar_t__ p_ref_hook_state; } ;
struct TYPE_11__ {scalar_t__ resolve_option; } ;
typedef  TYPE_2__ ParseState ;
typedef  TYPE_3__ PLpgSQL_expr ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_4__ ColumnRef ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_AMBIGUOUS_COLUMN ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLPGSQL_RESOLVE_COLUMN ; 
 scalar_t__ PLPGSQL_RESOLVE_VARIABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *
FUNC7(ParseState *pstate, ColumnRef *cref, Node *var)
{
	PLpgSQL_expr *expr = (PLpgSQL_expr *) pstate->p_ref_hook_state;
	Node	   *myvar;

	if (expr->func->resolve_option == PLPGSQL_RESOLVE_VARIABLE)
		return NULL;			/* we already found there's no match */

	if (expr->func->resolve_option == PLPGSQL_RESOLVE_COLUMN && var != NULL)
		return NULL;			/* there's a table column, prefer that */

	/*
	 * If we find a record/row variable but can't match a field name, throw
	 * error if there was no core resolution for the ColumnRef either.  In
	 * that situation, the reference is inevitably going to fail, and
	 * complaining about the record/row variable is likely to be more on-point
	 * than the core parser's error message.  (It's too bad we don't have
	 * access to transformColumnRef's internal crerr state here, as in case of
	 * a conflict with a table name this could still be less than the most
	 * helpful error message possible.)
	 */
	myvar = FUNC6(pstate, expr, cref, (var == NULL));

	if (myvar != NULL && var != NULL)
	{
		/*
		 * We could leave it to the core parser to throw this error, but we
		 * can add a more useful detail message than the core could.
		 */
		FUNC1(ERROR,
				(FUNC2(ERRCODE_AMBIGUOUS_COLUMN),
				 FUNC4("column reference \"%s\" is ambiguous",
						FUNC0(cref->fields)),
				 FUNC3("It could refer to either a PL/pgSQL variable or a table column."),
				 FUNC5(pstate, cref->location)));
	}

	return myvar;
}