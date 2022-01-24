#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_4__ {int /*<<< orphan*/  rd_att; } ;
typedef  int /*<<< orphan*/  SharedDependencyType ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_shdepend_classid ; 
 int Anum_pg_shdepend_dbid ; 
 int Anum_pg_shdepend_deptype ; 
 int Anum_pg_shdepend_objid ; 
 int Anum_pg_shdepend_objsubid ; 
 int Anum_pg_shdepend_refclassid ; 
 int Anum_pg_shdepend_refobjid ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int Natts_pg_shdepend ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(Relation sdepRel,
				   Oid classId, Oid objectId, int32 objsubId,
				   Oid refclassId, Oid refobjId,
				   SharedDependencyType deptype)
{
	HeapTuple	tup;
	Datum		values[Natts_pg_shdepend];
	bool		nulls[Natts_pg_shdepend];

	/*
	 * Make sure the object doesn't go away while we record the dependency on
	 * it.  DROP routines should lock the object exclusively before they check
	 * shared dependencies.
	 */
	FUNC8(refclassId, refobjId);

	FUNC7(nulls, false, sizeof(nulls));

	/*
	 * Form the new tuple and record the dependency.
	 */
	values[Anum_pg_shdepend_dbid - 1] = FUNC3(FUNC4(classId));
	values[Anum_pg_shdepend_classid - 1] = FUNC3(classId);
	values[Anum_pg_shdepend_objid - 1] = FUNC3(objectId);
	values[Anum_pg_shdepend_objsubid - 1] = FUNC2(objsubId);

	values[Anum_pg_shdepend_refclassid - 1] = FUNC3(refclassId);
	values[Anum_pg_shdepend_refobjid - 1] = FUNC3(refobjId);
	values[Anum_pg_shdepend_deptype - 1] = FUNC1(deptype);

	tup = FUNC5(sdepRel->rd_att, values, nulls);

	FUNC0(sdepRel, tup);

	/* clean up */
	FUNC6(tup);
}