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
struct TYPE_2__ {int /*<<< orphan*/  typbyval; int /*<<< orphan*/  typlen; int /*<<< orphan*/  typcollation; int /*<<< orphan*/  typinput; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_type ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_type_typdefault ; 
 int /*<<< orphan*/  Anum_pg_type_typdefaultbin ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  TYPEOID ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 

Node *
FUNC13(Oid typid)
{
	HeapTuple	typeTuple;
	Form_pg_type type;
	Datum		datum;
	bool		isNull;
	Node	   *expr;

	typeTuple = FUNC5(TYPEOID, FUNC2(typid));
	if (!FUNC1(typeTuple))
		FUNC8(ERROR, "cache lookup failed for type %u", typid);
	type = (Form_pg_type) FUNC0(typeTuple);

	/*
	 * typdefault and typdefaultbin are potentially null, so don't try to
	 * access 'em as struct fields. Must do it the hard way with
	 * SysCacheGetAttr.
	 */
	datum = FUNC6(TYPEOID,
							typeTuple,
							Anum_pg_type_typdefaultbin,
							&isNull);

	if (!isNull)
	{
		/* We have an expression default */
		expr = FUNC12(FUNC7(datum));
	}
	else
	{
		/* Perhaps we have a plain literal default */
		datum = FUNC6(TYPEOID,
								typeTuple,
								Anum_pg_type_typdefault,
								&isNull);

		if (!isNull)
		{
			char	   *strDefaultVal;

			/* Convert text datum to C string */
			strDefaultVal = FUNC7(datum);
			/* Convert C string to a value of the given type */
			datum = FUNC3(type->typinput, strDefaultVal,
										 FUNC9(typeTuple), -1);
			/* Build a Const node containing the value */
			expr = (Node *) FUNC10(typid,
									  -1,
									  type->typcollation,
									  type->typlen,
									  datum,
									  false,
									  type->typbyval);
			FUNC11(strDefaultVal);
		}
		else
		{
			/* No default */
			expr = NULL;
		}
	}

	FUNC4(typeTuple);

	return expr;
}