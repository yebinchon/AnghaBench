#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ opresulttype; scalar_t__ opretset; } ;
struct TYPE_6__ {int /*<<< orphan*/  p_last_srf; } ;
typedef  TYPE_1__ ParseState ;
typedef  TYPE_2__ OpExpr ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ BOOLOID ; 
 int /*<<< orphan*/  ERRCODE_DATATYPE_MISMATCH ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_DistinctExpr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static Expr *
FUNC6(ParseState *pstate, List *opname, Node *ltree, Node *rtree,
				 int location)
{
	Expr	   *result;

	result = FUNC4(pstate, opname, ltree, rtree,
					 pstate->p_last_srf, location);
	if (((OpExpr *) result)->opresulttype != BOOLOID)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
				 FUNC3("IS DISTINCT FROM requires = operator to yield boolean"),
				 FUNC5(pstate, location)));
	if (((OpExpr *) result)->opretset)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_DATATYPE_MISMATCH),
		/* translator: %s is name of a SQL construct, eg NULLIF */
				 FUNC3("%s must not return a set", "IS DISTINCT FROM"),
				 FUNC5(pstate, location)));

	/*
	 * We rely on DistinctExpr and OpExpr being same struct
	 */
	FUNC0(result, T_DistinctExpr);

	return result;
}