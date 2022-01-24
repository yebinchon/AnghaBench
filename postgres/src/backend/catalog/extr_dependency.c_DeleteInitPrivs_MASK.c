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
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_6__ {int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  classId; int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_init_privs_classoid ; 
 int /*<<< orphan*/  Anum_pg_init_privs_objoid ; 
 int /*<<< orphan*/  Anum_pg_init_privs_objsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  InitPrivsObjIndexId ; 
 int /*<<< orphan*/  InitPrivsRelationId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(const ObjectAddress *object)
{
	Relation	relation;
	ScanKeyData key[3];
	SysScanDesc scan;
	HeapTuple	oldtuple;

	relation = FUNC9(InitPrivsRelationId, RowExclusiveLock);

	FUNC4(&key[0],
				Anum_pg_init_privs_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(object->objectId));
	FUNC4(&key[1],
				Anum_pg_init_privs_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(object->classId));
	FUNC4(&key[2],
				Anum_pg_init_privs_objsubid,
				BTEqualStrategyNumber, F_INT4EQ,
				FUNC2(object->objectSubId));

	scan = FUNC5(relation, InitPrivsObjIndexId, true,
							  NULL, 3, key);

	while (FUNC1(oldtuple = FUNC7(scan)))
		FUNC0(relation, &oldtuple->t_self);

	FUNC6(scan);

	FUNC8(relation, RowExclusiveLock);
}