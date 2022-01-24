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
struct TYPE_12__ {int /*<<< orphan*/  location; int /*<<< orphan*/  name; int /*<<< orphan*/  rexpr; int /*<<< orphan*/  lexpr; } ;
struct TYPE_11__ {scalar_t__ opresulttype; int /*<<< orphan*/  args; scalar_t__ opretset; } ;
struct TYPE_10__ {int /*<<< orphan*/  p_last_srf; } ;
typedef  TYPE_1__ ParseState ;
typedef  TYPE_2__ OpExpr ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_3__ A_Expr ;

/* Variables and functions */
 scalar_t__ BOOLOID ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_NullIfExpr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *
FUNC9(ParseState *pstate, A_Expr *a)
{
	Node	   *lexpr = FUNC8(pstate, a->lexpr);
	Node	   *rexpr = FUNC8(pstate, a->rexpr);
	OpExpr	   *result;

	result = (OpExpr *) FUNC6(pstate,
								a->name,
								lexpr,
								rexpr,
								pstate->p_last_srf,
								a->location);

	/*
	 * The comparison operator itself should yield boolean ...
	 */
	if (result->opresulttype != BOOLOID)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
				 FUNC3("NULLIF requires = operator to yield boolean"),
				 FUNC7(pstate, a->location)));
	if (result->opretset)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
		/* translator: %s is name of a SQL construct, eg NULLIF */
				 FUNC3("%s must not return a set", "NULLIF"),
				 FUNC7(pstate, a->location)));

	/*
	 * ... but the NullIfExpr will yield the first operand's type.
	 */
	result->opresulttype = FUNC4((Node *) FUNC5(result->args));

	/*
	 * We rely on NullIfExpr and OpExpr being the same struct
	 */
	FUNC0(result, T_NullIfExpr);

	return (Node *) result;
}