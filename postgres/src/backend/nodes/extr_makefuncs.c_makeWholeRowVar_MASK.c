#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Var ;
struct TYPE_5__ {int rtekind; int /*<<< orphan*/  functions; int /*<<< orphan*/  funcordinality; int /*<<< orphan*/  relid; } ;
struct TYPE_4__ {int /*<<< orphan*/ * funcexpr; } ;
typedef  TYPE_1__ RangeTblFunction ;
typedef  TYPE_2__ RangeTblEntry ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Index ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int InvalidAttrNumber ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RECORDOID ; 
#define  RTE_FUNCTION 129 
#define  RTE_RELATION 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

Var *
FUNC9(RangeTblEntry *rte,
				Index varno,
				Index varlevelsup,
				bool allowScalar)
{
	Var		   *result;
	Oid			toid;
	Node	   *fexpr;

	switch (rte->rtekind)
	{
		case RTE_RELATION:
			/* relation: the rowtype is a named composite type */
			toid = FUNC4(rte->relid);
			if (!FUNC0(toid))
				FUNC1(ERROR, "could not find type OID for relation %u",
					 rte->relid);
			result = FUNC7(varno,
							 InvalidAttrNumber,
							 toid,
							 -1,
							 InvalidOid,
							 varlevelsup);
			break;

		case RTE_FUNCTION:

			/*
			 * If there's more than one function, or ordinality is requested,
			 * force a RECORD result, since there's certainly more than one
			 * column involved and it can't be a known named type.
			 */
			if (rte->funcordinality || FUNC6(rte->functions) != 1)
			{
				/* always produces an anonymous RECORD result */
				result = FUNC7(varno,
								 InvalidAttrNumber,
								 RECORDOID,
								 -1,
								 InvalidOid,
								 varlevelsup);
				break;
			}

			fexpr = ((RangeTblFunction *) FUNC5(rte->functions))->funcexpr;
			toid = FUNC3(fexpr);
			if (FUNC8(toid))
			{
				/* func returns composite; same as relation case */
				result = FUNC7(varno,
								 InvalidAttrNumber,
								 toid,
								 -1,
								 InvalidOid,
								 varlevelsup);
			}
			else if (allowScalar)
			{
				/* func returns scalar; just return its output as-is */
				result = FUNC7(varno,
								 1,
								 toid,
								 -1,
								 FUNC2(fexpr),
								 varlevelsup);
			}
			else
			{
				/* func returns scalar, but we want a composite result */
				result = FUNC7(varno,
								 InvalidAttrNumber,
								 RECORDOID,
								 -1,
								 InvalidOid,
								 varlevelsup);
			}
			break;

		default:

			/*
			 * RTE is a join, subselect, tablefunc, or VALUES.  We represent
			 * this as a whole-row Var of RECORD type. (Note that in most
			 * cases the Var will be expanded to a RowExpr during planning,
			 * but that is not our concern here.)
			 */
			result = FUNC7(varno,
							 InvalidAttrNumber,
							 RECORDOID,
							 -1,
							 InvalidOid,
							 varlevelsup);
			break;
	}

	return result;
}