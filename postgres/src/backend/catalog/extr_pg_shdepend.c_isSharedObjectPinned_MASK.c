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
struct TYPE_2__ {scalar_t__ deptype; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_shdepend ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_shdepend_refclassid ; 
 int /*<<< orphan*/  Anum_pg_shdepend_refobjid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHARED_DEPENDENCY_PIN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SharedDependReferenceIndexId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(Oid classId, Oid objectId, Relation sdepRel)
{
	bool		result = false;
	ScanKeyData key[2];
	SysScanDesc scan;
	HeapTuple	tup;

	FUNC3(&key[0],
				Anum_pg_shdepend_refclassid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(classId));
	FUNC3(&key[1],
				Anum_pg_shdepend_refobjid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(objectId));

	scan = FUNC4(sdepRel, SharedDependReferenceIndexId, true,
							  NULL, 2, key);

	/*
	 * Since we won't generate additional pg_shdepend entries for pinned
	 * objects, there can be at most one entry referencing a pinned object.
	 * Hence, it's sufficient to look at the first returned tuple; we don't
	 * need to loop.
	 */
	tup = FUNC6(scan);
	if (FUNC1(tup))
	{
		Form_pg_shdepend shdepForm = (Form_pg_shdepend) FUNC0(tup);

		if (shdepForm->deptype == SHARED_DEPENDENCY_PIN)
			result = true;
	}

	FUNC5(scan);

	return result;
}