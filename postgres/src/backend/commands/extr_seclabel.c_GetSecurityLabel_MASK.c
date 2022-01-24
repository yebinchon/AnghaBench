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
struct TYPE_4__ {int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  classId; int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_seclabel_classoid ; 
 int /*<<< orphan*/  Anum_pg_seclabel_label ; 
 int /*<<< orphan*/  Anum_pg_seclabel_objoid ; 
 int /*<<< orphan*/  Anum_pg_seclabel_objsubid ; 
 int /*<<< orphan*/  Anum_pg_seclabel_provider ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  F_TEXTEQ ; 
 char* FUNC1 (TYPE_1__ const*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SecLabelObjectIndexId ; 
 int /*<<< orphan*/  SecLabelRelationId ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC15(const ObjectAddress *object, const char *provider)
{
	Relation	pg_seclabel;
	ScanKeyData keys[4];
	SysScanDesc scan;
	HeapTuple	tuple;
	Datum		datum;
	bool		isnull;
	char	   *seclabel = NULL;

	/* Shared objects have their own security label catalog. */
	if (FUNC4(object->classId))
		return FUNC1(object, provider);

	/* Must be an unshared object, so examine pg_seclabel. */
	FUNC7(&keys[0],
				Anum_pg_seclabel_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(object->objectId));
	FUNC7(&keys[1],
				Anum_pg_seclabel_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(object->classId));
	FUNC7(&keys[2],
				Anum_pg_seclabel_objsubid,
				BTEqualStrategyNumber, F_INT4EQ,
				FUNC3(object->objectSubId));
	FUNC7(&keys[3],
				Anum_pg_seclabel_provider,
				BTEqualStrategyNumber, F_TEXTEQ,
				FUNC0(provider));

	pg_seclabel = FUNC14(SecLabelRelationId, AccessShareLock);

	scan = FUNC10(pg_seclabel, SecLabelObjectIndexId, true,
							  NULL, 4, keys);

	tuple = FUNC12(scan);
	if (FUNC2(tuple))
	{
		datum = FUNC9(tuple, Anum_pg_seclabel_label,
							 FUNC6(pg_seclabel), &isnull);
		if (!isnull)
			seclabel = FUNC8(datum);
	}
	FUNC11(scan);

	FUNC13(pg_seclabel, AccessShareLock);

	return seclabel;
}