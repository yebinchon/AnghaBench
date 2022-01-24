#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  adnum; int /*<<< orphan*/  adrelid; } ;
struct TYPE_10__ {int atthasdef; } ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  TYPE_3__* Form_pg_attrdef ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  Anum_pg_attrdef_oid ; 
 int /*<<< orphan*/  AttrDefaultOidIndexId ; 
 int /*<<< orphan*/  AttrDefaultRelationId ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC16(Oid attrdefId)
{
	Relation	attrdef_rel;
	Relation	attr_rel;
	Relation	myrel;
	ScanKeyData scankeys[1];
	SysScanDesc scan;
	HeapTuple	tuple;
	Oid			myrelid;
	AttrNumber	myattnum;

	/* Grab an appropriate lock on the pg_attrdef relation */
	attrdef_rel = FUNC15(AttrDefaultRelationId, RowExclusiveLock);

	/* Find the pg_attrdef tuple */
	FUNC6(&scankeys[0],
				Anum_pg_attrdef_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(attrdefId));

	scan = FUNC11(attrdef_rel, AttrDefaultOidIndexId, true,
							  NULL, 1, scankeys);

	tuple = FUNC13(scan);
	if (!FUNC3(tuple))
		FUNC8(ERROR, "could not find tuple for attrdef %u", attrdefId);

	myrelid = ((Form_pg_attrdef) FUNC2(tuple))->adrelid;
	myattnum = ((Form_pg_attrdef) FUNC2(tuple))->adnum;

	/* Get an exclusive lock on the relation owning the attribute */
	myrel = FUNC10(myrelid, AccessExclusiveLock);

	/* Now we can delete the pg_attrdef row */
	FUNC0(attrdef_rel, &tuple->t_self);

	FUNC12(scan);
	FUNC14(attrdef_rel, RowExclusiveLock);

	/* Fix the pg_attribute row */
	attr_rel = FUNC15(AttributeRelationId, RowExclusiveLock);

	tuple = FUNC7(ATTNUM,
								FUNC5(myrelid),
								FUNC4(myattnum));
	if (!FUNC3(tuple))	/* shouldn't happen */
		FUNC8(ERROR, "cache lookup failed for attribute %d of relation %u",
			 myattnum, myrelid);

	((Form_pg_attribute) FUNC2(tuple))->atthasdef = false;

	FUNC1(attr_rel, &tuple->t_self, tuple);

	/*
	 * Our update of the pg_attribute row will force a relcache rebuild, so
	 * there's nothing else to do here.
	 */
	FUNC14(attr_rel, RowExclusiveLock);

	/* Keep lock on attribute's rel until end of xact */
	FUNC9(myrel, NoLock);
}