#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  replaces ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_14__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_13__ {int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  classId; int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_seclabel_classoid ; 
 int Anum_pg_seclabel_label ; 
 int Anum_pg_seclabel_objoid ; 
 int Anum_pg_seclabel_objsubid ; 
 int Anum_pg_seclabel_provider ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  F_TEXTEQ ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int Natts_pg_seclabel ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SecLabelObjectIndexId ; 
 int /*<<< orphan*/  SecLabelRelationId ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*,char const*,char const*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC20(const ObjectAddress *object,
				 const char *provider, const char *label)
{
	Relation	pg_seclabel;
	ScanKeyData keys[4];
	SysScanDesc scan;
	HeapTuple	oldtup;
	HeapTuple	newtup = NULL;
	Datum		values[Natts_pg_seclabel];
	bool		nulls[Natts_pg_seclabel];
	bool		replaces[Natts_pg_seclabel];

	/* Shared objects have their own security label catalog. */
	if (FUNC6(object->classId))
	{
		FUNC10(object, provider, label);
		return;
	}

	/* Prepare to form or update a tuple, if necessary. */
	FUNC14(nulls, false, sizeof(nulls));
	FUNC14(replaces, false, sizeof(replaces));
	values[Anum_pg_seclabel_objoid - 1] = FUNC7(object->objectId);
	values[Anum_pg_seclabel_classoid - 1] = FUNC7(object->classId);
	values[Anum_pg_seclabel_objsubid - 1] = FUNC5(object->objectSubId);
	values[Anum_pg_seclabel_provider - 1] = FUNC0(provider);
	if (label != NULL)
		values[Anum_pg_seclabel_label - 1] = FUNC0(label);

	/* Use the index to search for a matching old tuple */
	FUNC9(&keys[0],
				Anum_pg_seclabel_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC7(object->objectId));
	FUNC9(&keys[1],
				Anum_pg_seclabel_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC7(object->classId));
	FUNC9(&keys[2],
				Anum_pg_seclabel_objsubid,
				BTEqualStrategyNumber, F_INT4EQ,
				FUNC5(object->objectSubId));
	FUNC9(&keys[3],
				Anum_pg_seclabel_provider,
				BTEqualStrategyNumber, F_TEXTEQ,
				FUNC0(provider));

	pg_seclabel = FUNC19(SecLabelRelationId, RowExclusiveLock);

	scan = FUNC15(pg_seclabel, SecLabelObjectIndexId, true,
							  NULL, 4, keys);

	oldtup = FUNC17(scan);
	if (FUNC4(oldtup))
	{
		if (label == NULL)
			FUNC1(pg_seclabel, &oldtup->t_self);
		else
		{
			replaces[Anum_pg_seclabel_label - 1] = true;
			newtup = FUNC13(oldtup, FUNC8(pg_seclabel),
									   values, nulls, replaces);
			FUNC3(pg_seclabel, &oldtup->t_self, newtup);
		}
	}
	FUNC16(scan);

	/* If we didn't find an old tuple, insert a new one */
	if (newtup == NULL && label != NULL)
	{
		newtup = FUNC11(FUNC8(pg_seclabel),
								 values, nulls);
		FUNC2(pg_seclabel, newtup);
	}

	/* Update indexes, if necessary */
	if (newtup != NULL)
		FUNC12(newtup);

	FUNC18(pg_seclabel, RowExclusiveLock);
}