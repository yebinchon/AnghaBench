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
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  nulls ;
struct TYPE_12__ {scalar_t__ objectSubId; void* objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_11__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  void* Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  NameData ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessMethodRelationId ; 
 int Anum_pg_opfamily_oid ; 
 int Anum_pg_opfamily_opfmethod ; 
 int Anum_pg_opfamily_opfname ; 
 int Anum_pg_opfamily_opfnamespace ; 
 int Anum_pg_opfamily_opfowner ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEPENDENCY_AUTO ; 
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 void* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int Natts_pg_opfamily ; 
 int /*<<< orphan*/  OPFAMILYAMNAMENSP ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  OperatorFamilyRelationId ; 
 int /*<<< orphan*/  OpfamilyOidIndexId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ObjectAddress
FUNC20(const char *amname, const char *opfname, Oid namespaceoid, Oid amoid)
{
	Oid			opfamilyoid;
	Relation	rel;
	HeapTuple	tup;
	Datum		values[Natts_pg_opfamily];
	bool		nulls[Natts_pg_opfamily];
	NameData	opfName;
	ObjectAddress myself,
				referenced;

	rel = FUNC19(OperatorFamilyRelationId, RowExclusiveLock);

	/*
	 * Make sure there is no existing opfamily of this name (this is just to
	 * give a more friendly error message than "duplicate key").
	 */
	if (FUNC7(OPFAMILYAMNAMENSP,
							  FUNC6(amoid),
							  FUNC0(opfname),
							  FUNC6(namespaceoid)))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_DUPLICATE_OBJECT),
				 FUNC10("operator family \"%s\" for access method \"%s\" already exists",
						opfname, amname)));

	/*
	 * Okay, let's create the pg_opfamily entry.
	 */
	FUNC13(values, 0, sizeof(values));
	FUNC13(nulls, false, sizeof(nulls));

	opfamilyoid = FUNC2(rel, OpfamilyOidIndexId,
									 Anum_pg_opfamily_oid);
	values[Anum_pg_opfamily_oid - 1] = FUNC6(opfamilyoid);
	values[Anum_pg_opfamily_opfmethod - 1] = FUNC6(amoid);
	FUNC14(&opfName, opfname);
	values[Anum_pg_opfamily_opfname - 1] = FUNC5(&opfName);
	values[Anum_pg_opfamily_opfnamespace - 1] = FUNC6(namespaceoid);
	values[Anum_pg_opfamily_opfowner - 1] = FUNC6(FUNC3());

	tup = FUNC11(rel->rd_att, values, nulls);

	FUNC1(rel, tup);

	FUNC12(tup);

	/*
	 * Create dependencies for the opfamily proper.
	 */
	myself.classId = OperatorFamilyRelationId;
	myself.objectId = opfamilyoid;
	myself.objectSubId = 0;

	/* dependency on access method */
	referenced.classId = AccessMethodRelationId;
	referenced.objectId = amoid;
	referenced.objectSubId = 0;
	FUNC15(&myself, &referenced, DEPENDENCY_AUTO);

	/* dependency on namespace */
	referenced.classId = NamespaceRelationId;
	referenced.objectId = namespaceoid;
	referenced.objectSubId = 0;
	FUNC15(&myself, &referenced, DEPENDENCY_NORMAL);

	/* dependency on owner */
	FUNC17(OperatorFamilyRelationId, opfamilyoid, FUNC3());

	/* dependency on extension */
	FUNC16(&myself, false);

	/* Post creation hook for new operator family */
	FUNC4(OperatorFamilyRelationId, opfamilyoid, 0);

	FUNC18(rel, RowExclusiveLock);

	return myself;
}