#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ TypeFuncClass ;
typedef  int /*<<< orphan*/ * TupleDesc ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ RECORDOID ; 
 scalar_t__ TYPEFUNC_COMPOSITE ; 
 scalar_t__ TYPEFUNC_COMPOSITE_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

TupleDesc
FUNC6(Node *expr, bool noError)
{
	TupleDesc	tupleDesc;
	TypeFuncClass functypclass;

	functypclass = FUNC5(expr, NULL, &tupleDesc);

	if (functypclass == TYPEFUNC_COMPOSITE ||
		functypclass == TYPEFUNC_COMPOSITE_DOMAIN)
		return tupleDesc;

	if (!noError)
	{
		Oid			exprTypeId = FUNC3(expr);

		if (exprTypeId != RECORDOID)
			FUNC0(ERROR,
					(FUNC1(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC2("type %s is not composite",
							FUNC4(exprTypeId))));
		else
			FUNC0(ERROR,
					(FUNC1(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC2("record type has not been registered")));
	}

	return NULL;
}