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
typedef  scalar_t__ int32 ;
struct TYPE_3__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_description_classoid ; 
 int /*<<< orphan*/  Anum_pg_description_objoid ; 
 int /*<<< orphan*/  Anum_pg_description_objsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DescriptionObjIndexId ; 
 int /*<<< orphan*/  DescriptionRelationId ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(Oid oid, Oid classoid, int32 subid)
{
	Relation	description;
	ScanKeyData skey[3];
	int			nkeys;
	SysScanDesc sd;
	HeapTuple	oldtuple;

	/* Use the index to search for all matching old tuples */

	FUNC3(&skey[0],
				Anum_pg_description_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(oid));
	FUNC3(&skey[1],
				Anum_pg_description_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(classoid));

	if (subid != 0)
	{
		FUNC3(&skey[2],
					Anum_pg_description_objsubid,
					BTEqualStrategyNumber, F_INT4EQ,
					FUNC1(subid));
		nkeys = 3;
	}
	else
		nkeys = 2;

	description = FUNC8(DescriptionRelationId, RowExclusiveLock);

	sd = FUNC4(description, DescriptionObjIndexId, true,
							NULL, nkeys, skey);

	while ((oldtuple = FUNC6(sd)) != NULL)
		FUNC0(description, &oldtuple->t_self);

	/* Done */

	FUNC5(sd);
	FUNC7(description, RowExclusiveLock);
}