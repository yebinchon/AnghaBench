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

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_class_relkind ; 
 int /*<<< orphan*/  Anum_pg_class_relnamespace ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  F_CHAREQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC10(Oid namespaceId, char relkind)
{
	List	   *relations = NIL;
	ScanKeyData key[2];
	Relation	rel;
	TableScanDesc scan;
	HeapTuple	tuple;

	FUNC3(&key[0],
				Anum_pg_class_relnamespace,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(namespaceId));
	FUNC3(&key[1],
				Anum_pg_class_relkind,
				BTEqualStrategyNumber, F_CHAREQ,
				FUNC0(relkind));

	rel = FUNC9(RelationRelationId, AccessShareLock);
	scan = FUNC6(rel, 2, key);

	while ((tuple = FUNC4(scan, ForwardScanDirection)) != NULL)
	{
		Oid			oid = ((Form_pg_class) FUNC1(tuple))->oid;

		relations = FUNC5(relations, oid);
	}

	FUNC8(scan);
	FUNC7(rel, AccessShareLock);

	return relations;
}