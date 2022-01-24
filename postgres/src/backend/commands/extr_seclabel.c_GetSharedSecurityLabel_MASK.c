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
struct TYPE_3__ {int /*<<< orphan*/  classId; int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_shseclabel_classoid ; 
 int /*<<< orphan*/  Anum_pg_shseclabel_label ; 
 int /*<<< orphan*/  Anum_pg_shseclabel_objoid ; 
 int /*<<< orphan*/  Anum_pg_shseclabel_provider ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  F_TEXTEQ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SharedSecLabelObjectIndexId ; 
 int /*<<< orphan*/  SharedSecLabelRelationId ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC12(const ObjectAddress *object, const char *provider)
{
	Relation	pg_shseclabel;
	ScanKeyData keys[3];
	SysScanDesc scan;
	HeapTuple	tuple;
	Datum		datum;
	bool		isnull;
	char	   *seclabel = NULL;

	FUNC4(&keys[0],
				Anum_pg_shseclabel_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(object->objectId));
	FUNC4(&keys[1],
				Anum_pg_shseclabel_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(object->classId));
	FUNC4(&keys[2],
				Anum_pg_shseclabel_provider,
				BTEqualStrategyNumber, F_TEXTEQ,
				FUNC0(provider));

	pg_shseclabel = FUNC11(SharedSecLabelRelationId, AccessShareLock);

	scan = FUNC7(pg_shseclabel, SharedSecLabelObjectIndexId, true,
							  NULL, 3, keys);

	tuple = FUNC9(scan);
	if (FUNC1(tuple))
	{
		datum = FUNC6(tuple, Anum_pg_shseclabel_label,
							 FUNC3(pg_shseclabel), &isnull);
		if (!isnull)
			seclabel = FUNC5(datum);
	}
	FUNC8(scan);

	FUNC10(pg_shseclabel, AccessShareLock);

	return seclabel;
}