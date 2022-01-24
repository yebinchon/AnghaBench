#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_12__ {scalar_t__ deptype; void* refobjid; void* refclassid; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  scalar_t__ SharedDependencyType ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_shdepend ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_shdepend_classid ; 
 int Anum_pg_shdepend_dbid ; 
 int Anum_pg_shdepend_deptype ; 
 int Anum_pg_shdepend_objid ; 
 int Anum_pg_shdepend_objsubid ; 
 int Anum_pg_shdepend_refclassid ; 
 int Anum_pg_shdepend_refobjid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int Natts_pg_shdepend ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SharedDependDependerIndexId ; 
 void* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,void*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC11 (TYPE_1__*) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (void*,void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC20(Relation sdepRel,
			   Oid classid, Oid objid, int32 objsubid,
			   Oid refclassid, Oid refobjid,
			   SharedDependencyType deptype)
{
	Oid			dbid = FUNC9(classid);
	HeapTuple	oldtup = NULL;
	HeapTuple	scantup;
	ScanKeyData key[4];
	SysScanDesc scan;

	/*
	 * Make sure the new referenced object doesn't go away while we record the
	 * dependency.
	 */
	FUNC16(refclassid, refobjid);

	/*
	 * Look for a previous entry
	 */
	FUNC8(&key[0],
				Anum_pg_shdepend_dbid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(dbid));
	FUNC8(&key[1],
				Anum_pg_shdepend_classid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(classid));
	FUNC8(&key[2],
				Anum_pg_shdepend_objid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC6(objid));
	FUNC8(&key[3],
				Anum_pg_shdepend_objsubid,
				BTEqualStrategyNumber, F_INT4EQ,
				FUNC5(objsubid));

	scan = FUNC17(sdepRel, SharedDependDependerIndexId, true,
							  NULL, 4, key);

	while ((scantup = FUNC19(scan)) != NULL)
	{
		/* Ignore if not of the target dependency type */
		if (((Form_pg_shdepend) FUNC4(scantup))->deptype != deptype)
			continue;
		/* Caller screwed up if multiple matches */
		if (oldtup)
			FUNC10(ERROR,
				 "multiple pg_shdepend entries for object %u/%u/%d deptype %c",
				 classid, objid, objsubid, deptype);
		oldtup = FUNC11(scantup);
	}

	FUNC18(scan);

	if (FUNC14(refclassid, refobjid, sdepRel))
	{
		/* No new entry needed, so just delete existing entry if any */
		if (oldtup)
			FUNC0(sdepRel, &oldtup->t_self);
	}
	else if (oldtup)
	{
		/* Need to update existing entry */
		Form_pg_shdepend shForm = (Form_pg_shdepend) FUNC4(oldtup);

		/* Since oldtup is a copy, we can just modify it in-memory */
		shForm->refclassid = refclassid;
		shForm->refobjid = refobjid;

		FUNC2(sdepRel, &oldtup->t_self, oldtup);
	}
	else
	{
		/* Need to insert new entry */
		Datum		values[Natts_pg_shdepend];
		bool		nulls[Natts_pg_shdepend];

		FUNC15(nulls, false, sizeof(nulls));

		values[Anum_pg_shdepend_dbid - 1] = FUNC6(dbid);
		values[Anum_pg_shdepend_classid - 1] = FUNC6(classid);
		values[Anum_pg_shdepend_objid - 1] = FUNC6(objid);
		values[Anum_pg_shdepend_objsubid - 1] = FUNC5(objsubid);

		values[Anum_pg_shdepend_refclassid - 1] = FUNC6(refclassid);
		values[Anum_pg_shdepend_refobjid - 1] = FUNC6(refobjid);
		values[Anum_pg_shdepend_deptype - 1] = FUNC3(deptype);

		/*
		 * we are reusing oldtup just to avoid declaring a new variable, but
		 * it's certainly a new tuple
		 */
		oldtup = FUNC12(FUNC7(sdepRel), values, nulls);
		FUNC1(sdepRel, oldtup);
	}

	if (oldtup)
		FUNC13(oldtup);
}