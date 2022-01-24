#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  oprright; int /*<<< orphan*/  oprleft; } ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  scalar_t__ Operator ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__* Form_pg_operator ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

Operator
FUNC9(ParseState *pstate, List *op, Oid arg1, Oid arg2,
				bool noError, int location)
{
	Operator	optup;
	Form_pg_operator opform;

	/* oper() will find the best available match */
	optup = FUNC7(pstate, op, arg1, arg2, noError, location);
	if (optup == (Operator) NULL)
		return (Operator) NULL; /* must be noError case */

	/* but is it good enough? */
	opform = (Form_pg_operator) FUNC0(optup);
	if (FUNC1(arg1, opform->oprleft) &&
		FUNC1(arg2, opform->oprright))
		return optup;

	/* nope... */
	FUNC2(optup);

	if (!noError)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC5("operator requires run-time type coercion: %s",
						FUNC6(op, 'b', arg1, arg2)),
				 FUNC8(pstate, location)));

	return (Operator) NULL;
}