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
struct TYPE_4__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* RegProcedure ;
typedef  void* Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int Anum_pg_range_rngcanonical ; 
 int Anum_pg_range_rngcollation ; 
 int Anum_pg_range_rngsubdiff ; 
 int Anum_pg_range_rngsubopc ; 
 int Anum_pg_range_rngsubtype ; 
 int Anum_pg_range_rngtypid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* CollationRelationId ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int Natts_pg_range ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 void* OperatorClassRelationId ; 
 void* ProcedureRelationId ; 
 int /*<<< orphan*/  RangeRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 void* TypeRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(Oid rangeTypeOid, Oid rangeSubType, Oid rangeCollation,
			Oid rangeSubOpclass, RegProcedure rangeCanonical,
			RegProcedure rangeSubDiff)
{
	Relation	pg_range;
	Datum		values[Natts_pg_range];
	bool		nulls[Natts_pg_range];
	HeapTuple	tup;
	ObjectAddress myself;
	ObjectAddress referenced;

	pg_range = FUNC9(RangeRelationId, RowExclusiveLock);

	FUNC6(nulls, 0, sizeof(nulls));

	values[Anum_pg_range_rngtypid - 1] = FUNC1(rangeTypeOid);
	values[Anum_pg_range_rngsubtype - 1] = FUNC1(rangeSubType);
	values[Anum_pg_range_rngcollation - 1] = FUNC1(rangeCollation);
	values[Anum_pg_range_rngsubopc - 1] = FUNC1(rangeSubOpclass);
	values[Anum_pg_range_rngcanonical - 1] = FUNC1(rangeCanonical);
	values[Anum_pg_range_rngsubdiff - 1] = FUNC1(rangeSubDiff);

	tup = FUNC4(FUNC3(pg_range), values, nulls);

	FUNC0(pg_range, tup);
	FUNC5(tup);

	/* record type's dependencies on range-related items */

	myself.classId = TypeRelationId;
	myself.objectId = rangeTypeOid;
	myself.objectSubId = 0;

	referenced.classId = TypeRelationId;
	referenced.objectId = rangeSubType;
	referenced.objectSubId = 0;
	FUNC7(&myself, &referenced, DEPENDENCY_NORMAL);

	referenced.classId = OperatorClassRelationId;
	referenced.objectId = rangeSubOpclass;
	referenced.objectSubId = 0;
	FUNC7(&myself, &referenced, DEPENDENCY_NORMAL);

	if (FUNC2(rangeCollation))
	{
		referenced.classId = CollationRelationId;
		referenced.objectId = rangeCollation;
		referenced.objectSubId = 0;
		FUNC7(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	if (FUNC2(rangeCanonical))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = rangeCanonical;
		referenced.objectSubId = 0;
		FUNC7(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	if (FUNC2(rangeSubDiff))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = rangeSubDiff;
		referenced.objectSubId = 0;
		FUNC7(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	FUNC8(pg_range, RowExclusiveLock);
}