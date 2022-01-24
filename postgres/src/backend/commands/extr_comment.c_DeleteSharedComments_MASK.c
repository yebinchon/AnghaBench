#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_shdescription_classoid ; 
 int /*<<< orphan*/  Anum_pg_shdescription_objoid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SharedDescriptionObjIndexId ; 
 int /*<<< orphan*/  SharedDescriptionRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(Oid oid, Oid classoid)
{
	Relation	shdescription;
	ScanKeyData skey[2];
	SysScanDesc sd;
	HeapTuple	oldtuple;

	/* Use the index to search for all matching old tuples */

	FUNC2(&skey[0],
				Anum_pg_shdescription_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC1(oid));
	FUNC2(&skey[1],
				Anum_pg_shdescription_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC1(classoid));

	shdescription = FUNC7(SharedDescriptionRelationId, RowExclusiveLock);

	sd = FUNC3(shdescription, SharedDescriptionObjIndexId, true,
							NULL, 2, skey);

	while ((oldtuple = FUNC5(sd)) != NULL)
		FUNC0(shdescription, &oldtuple->t_self);

	/* Done */

	FUNC4(sd);
	FUNC6(shdescription, RowExclusiveLock);
}