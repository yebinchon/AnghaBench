#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  replaces ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_13__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_12__ {int /*<<< orphan*/  classId; int /*<<< orphan*/  objectId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_shseclabel_classoid ; 
 int Anum_pg_shseclabel_label ; 
 int Anum_pg_shseclabel_objoid ; 
 int Anum_pg_shseclabel_provider ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  F_TEXTEQ ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int Natts_pg_shseclabel ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SharedSecLabelObjectIndexId ; 
 int /*<<< orphan*/  SharedSecLabelRelationId ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(const ObjectAddress *object,
					   const char *provider, const char *label)
{
	Relation	pg_shseclabel;
	ScanKeyData keys[4];
	SysScanDesc scan;
	HeapTuple	oldtup;
	HeapTuple	newtup = NULL;
	Datum		values[Natts_pg_shseclabel];
	bool		nulls[Natts_pg_shseclabel];
	bool		replaces[Natts_pg_shseclabel];

	/* Prepare to form or update a tuple, if necessary. */
	FUNC11(nulls, false, sizeof(nulls));
	FUNC11(replaces, false, sizeof(replaces));
	values[Anum_pg_shseclabel_objoid - 1] = FUNC5(object->objectId);
	values[Anum_pg_shseclabel_classoid - 1] = FUNC5(object->classId);
	values[Anum_pg_shseclabel_provider - 1] = FUNC0(provider);
	if (label != NULL)
		values[Anum_pg_shseclabel_label - 1] = FUNC0(label);

	/* Use the index to search for a matching old tuple */
	FUNC7(&keys[0],
				Anum_pg_shseclabel_objoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(object->objectId));
	FUNC7(&keys[1],
				Anum_pg_shseclabel_classoid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(object->classId));
	FUNC7(&keys[2],
				Anum_pg_shseclabel_provider,
				BTEqualStrategyNumber, F_TEXTEQ,
				FUNC0(provider));

	pg_shseclabel = FUNC16(SharedSecLabelRelationId, RowExclusiveLock);

	scan = FUNC12(pg_shseclabel, SharedSecLabelObjectIndexId, true,
							  NULL, 3, keys);

	oldtup = FUNC14(scan);
	if (FUNC4(oldtup))
	{
		if (label == NULL)
			FUNC1(pg_shseclabel, &oldtup->t_self);
		else
		{
			replaces[Anum_pg_shseclabel_label - 1] = true;
			newtup = FUNC10(oldtup, FUNC6(pg_shseclabel),
									   values, nulls, replaces);
			FUNC3(pg_shseclabel, &oldtup->t_self, newtup);
		}
	}
	FUNC13(scan);

	/* If we didn't find an old tuple, insert a new one */
	if (newtup == NULL && label != NULL)
	{
		newtup = FUNC8(FUNC6(pg_shseclabel),
								 values, nulls);
		FUNC2(pg_shseclabel, newtup);
	}

	if (newtup != NULL)
		FUNC9(newtup);

	FUNC15(pg_shseclabel, RowExclusiveLock);
}