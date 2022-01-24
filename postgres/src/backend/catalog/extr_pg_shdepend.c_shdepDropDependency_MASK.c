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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_7__ {scalar_t__ refclassid; scalar_t__ refobjid; scalar_t__ deptype; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  scalar_t__ SharedDependencyType ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_shdepend ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_shdepend_classid ; 
 int /*<<< orphan*/  Anum_pg_shdepend_dbid ; 
 int /*<<< orphan*/  Anum_pg_shdepend_objid ; 
 int /*<<< orphan*/  Anum_pg_shdepend_objsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ SHARED_DEPENDENCY_INVALID ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SharedDependDependerIndexId ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(Relation sdepRel,
					Oid classId, Oid objectId, int32 objsubId,
					bool drop_subobjects,
					Oid refclassId, Oid refobjId,
					SharedDependencyType deptype)
{
	ScanKeyData key[4];
	int			nkeys;
	SysScanDesc scan;
	HeapTuple	tup;

	/* Scan for entries matching the dependent object */
	FUNC6(&key[0],
				Anum_pg_shdepend_dbid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(FUNC7(classId)));
	FUNC6(&key[1],
				Anum_pg_shdepend_classid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(classId));
	FUNC6(&key[2],
				Anum_pg_shdepend_objid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(objectId));
	if (drop_subobjects)
		nkeys = 3;
	else
	{
		FUNC6(&key[3],
					Anum_pg_shdepend_objsubid,
					BTEqualStrategyNumber, F_INT4EQ,
					FUNC3(objsubId));
		nkeys = 4;
	}

	scan = FUNC8(sdepRel, SharedDependDependerIndexId, true,
							  NULL, nkeys, key);

	while (FUNC2(tup = FUNC10(scan)))
	{
		Form_pg_shdepend shdepForm = (Form_pg_shdepend) FUNC1(tup);

		/* Filter entries according to additional parameters */
		if (FUNC5(refclassId) && shdepForm->refclassid != refclassId)
			continue;
		if (FUNC5(refobjId) && shdepForm->refobjid != refobjId)
			continue;
		if (deptype != SHARED_DEPENDENCY_INVALID &&
			shdepForm->deptype != deptype)
			continue;

		/* OK, delete it */
		FUNC0(sdepRel, &tup->t_self);
	}

	FUNC9(scan);
}