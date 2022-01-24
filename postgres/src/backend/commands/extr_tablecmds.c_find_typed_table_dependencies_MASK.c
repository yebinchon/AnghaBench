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
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;
typedef  scalar_t__ DropBehavior ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_class_reloftype ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ DROP_RESTRICT ; 
 int /*<<< orphan*/  ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC13(Oid typeOid, const char *typeName, DropBehavior behavior)
{
	Relation	classRel;
	ScanKeyData key[1];
	TableScanDesc scan;
	HeapTuple	tuple;
	List	   *result = NIL;

	classRel = FUNC12(RelationRelationId, AccessShareLock);

	FUNC2(&key[0],
				Anum_pg_class_reloftype,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC1(typeOid));

	scan = FUNC9(classRel, 1, key);

	while ((tuple = FUNC7(scan, ForwardScanDirection)) != NULL)
	{
		Form_pg_class classform = (Form_pg_class) FUNC0(tuple);

		if (behavior == DROP_RESTRICT)
			FUNC3(ERROR,
					(FUNC4(ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST),
					 FUNC6("cannot alter type \"%s\" because it is the type of a typed table",
							typeName),
					 FUNC5("Use ALTER ... CASCADE to alter the typed tables too.")));
		else
			result = FUNC8(result, classform->oid);
	}

	FUNC11(scan);
	FUNC10(classRel, AccessShareLock);

	return result;
}