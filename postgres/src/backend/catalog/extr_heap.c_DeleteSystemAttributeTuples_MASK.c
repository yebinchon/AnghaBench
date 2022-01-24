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
 int /*<<< orphan*/  Anum_pg_attribute_attnum ; 
 int /*<<< orphan*/  Anum_pg_attribute_attrelid ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  AttributeRelidNumIndexId ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  BTLessEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_INT2LE ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(Oid relid)
{
	Relation	attrel;
	SysScanDesc scan;
	ScanKeyData key[2];
	HeapTuple	atttup;

	/* Grab an appropriate lock on the pg_attribute relation */
	attrel = FUNC8(AttributeRelationId, RowExclusiveLock);

	/* Use the index to scan only system attributes of the target relation */
	FUNC3(&key[0],
				Anum_pg_attribute_attrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(relid));
	FUNC3(&key[1],
				Anum_pg_attribute_attnum,
				BTLessEqualStrategyNumber, F_INT2LE,
				FUNC1(0));

	scan = FUNC4(attrel, AttributeRelidNumIndexId, true,
							  NULL, 2, key);

	/* Delete all the matching tuples */
	while ((atttup = FUNC6(scan)) != NULL)
		FUNC0(attrel, &atttup->t_self);

	/* Clean up after the scan */
	FUNC5(scan);
	FUNC7(attrel, RowExclusiveLock);
}