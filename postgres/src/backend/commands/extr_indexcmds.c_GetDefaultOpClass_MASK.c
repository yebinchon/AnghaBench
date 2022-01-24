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
struct TYPE_2__ {scalar_t__ opcintype; scalar_t__ oid; int /*<<< orphan*/  opcdefault; } ;
typedef  int /*<<< orphan*/  TYPCATEGORY ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_opclass ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_opclass_opcmethod ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  OpclassAmNameNspIndexId ; 
 int /*<<< orphan*/  OperatorClassRelationId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC17(Oid type_id, Oid am_id)
{
	Oid			result = InvalidOid;
	int			nexact = 0;
	int			ncompatible = 0;
	int			ncompatiblepreferred = 0;
	Relation	rel;
	ScanKeyData skey[1];
	SysScanDesc scan;
	HeapTuple	tup;
	TYPCATEGORY tcategory;

	/* If it's a domain, look at the base type instead */
	type_id = FUNC11(type_id);

	tcategory = FUNC6(type_id);

	/*
	 * We scan through all the opclasses available for the access method,
	 * looking for one that is marked default and matches the target type
	 * (either exactly or binary-compatibly, but prefer an exact match).
	 *
	 * We could find more than one binary-compatible match.  If just one is
	 * for a preferred type, use that one; otherwise we fail, forcing the user
	 * to specify which one he wants.  (The preferred-type special case is a
	 * kluge for varchar: it's binary-compatible to both text and bpchar, so
	 * we need a tiebreaker.)  If we find more than one exact match, then
	 * someone put bogus entries in pg_opclass.
	 */
	rel = FUNC16(OperatorClassRelationId, AccessShareLock);

	FUNC5(&skey[0],
				Anum_pg_opclass_opcmethod,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(am_id));

	scan = FUNC12(rel, OpclassAmNameNspIndexId, true,
							  NULL, 1, skey);

	while (FUNC1(tup = FUNC14(scan)))
	{
		Form_pg_opclass opclass = (Form_pg_opclass) FUNC0(tup);

		/* ignore altogether if not a default opclass */
		if (!opclass->opcdefault)
			continue;
		if (opclass->opcintype == type_id)
		{
			nexact++;
			result = opclass->oid;
		}
		else if (nexact == 0 &&
				 FUNC2(type_id, opclass->opcintype))
		{
			if (FUNC3(tcategory, opclass->opcintype))
			{
				ncompatiblepreferred++;
				result = opclass->oid;
			}
			else if (ncompatiblepreferred == 0)
			{
				ncompatible++;
				result = opclass->oid;
			}
		}
	}

	FUNC13(scan);

	FUNC15(rel, AccessShareLock);

	/* raise error if pg_opclass contains inconsistent data */
	if (nexact > 1)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_DUPLICATE_OBJECT),
				 FUNC9("there are multiple default operator classes for data type %s",
						FUNC10(type_id))));

	if (nexact == 1 ||
		ncompatiblepreferred == 1 ||
		(ncompatiblepreferred == 0 && ncompatible == 1))
		return result;

	return InvalidOid;
}