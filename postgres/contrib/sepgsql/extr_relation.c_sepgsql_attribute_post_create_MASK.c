#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  attname; } ;
struct TYPE_9__ {scalar_t__ objectSubId; void* objectId; void* classId; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_attribute ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_attribute_attnum ; 
 int /*<<< orphan*/  Anum_pg_attribute_attrelid ; 
 int /*<<< orphan*/  AttributeRelationId ; 
 int /*<<< orphan*/  AttributeRelidNumIndexId ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT2EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 char RELKIND_PARTITIONED_TABLE ; 
 char RELKIND_RELATION ; 
 void* RelationRelationId ; 
 int /*<<< orphan*/  SEPGSQL_LABEL_TAG ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_COLUMN ; 
 int /*<<< orphan*/  SEPG_DB_COLUMN__CREATE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SnapshotSelf ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 char FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC15 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC16 () ; 
 char* FUNC17 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC23(Oid relOid, AttrNumber attnum)
{
	Relation	rel;
	ScanKeyData skey[2];
	SysScanDesc sscan;
	HeapTuple	tuple;
	char	   *scontext;
	char	   *tcontext;
	char	   *ncontext;
	ObjectAddress object;
	Form_pg_attribute attForm;
	StringInfoData audit_name;
	char		relkind = FUNC10(relOid);

	/*
	 * Only attributes within regular relations or partition relations have
	 * individual security labels.
	 */
	if (relkind != RELKIND_RELATION && relkind != RELKIND_PARTITIONED_TABLE)
		return;

	/*
	 * Compute a default security label of the new column underlying the
	 * specified relation, and check permission to create it.
	 */
	rel = FUNC22(AttributeRelationId, AccessShareLock);

	FUNC5(&skey[0],
				Anum_pg_attribute_attrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(relOid));
	FUNC5(&skey[1],
				Anum_pg_attribute_attnum,
				BTEqualStrategyNumber, F_INT2EQ,
				FUNC2(attnum));

	sscan = FUNC18(rel, AttributeRelidNumIndexId, true,
							   SnapshotSelf, 2, &skey[0]);

	tuple = FUNC20(sscan);
	if (!FUNC1(tuple))
		FUNC8(ERROR, "could not find tuple for column %d of relation %u",
			 attnum, relOid);

	attForm = (Form_pg_attribute) FUNC0(tuple);

	scontext = FUNC16();
	tcontext = FUNC17(RelationRelationId, relOid, 0);
	ncontext = FUNC15(scontext, tcontext,
									  SEPG_CLASS_DB_COLUMN,
									  FUNC3(attForm->attname));

	/*
	 * check db_column:{create} permission
	 */
	object.classId = RelationRelationId;
	object.objectId = relOid;
	object.objectSubId = 0;

	FUNC11(&audit_name);
	FUNC7(&audit_name, "%s.%s",
					 FUNC9(&object),
					 FUNC13(FUNC3(attForm->attname)));
	FUNC14(ncontext,
								  SEPG_CLASS_DB_COLUMN,
								  SEPG_DB_COLUMN__CREATE,
								  audit_name.data,
								  true);

	/*
	 * Assign the default security label on a new procedure
	 */
	object.classId = RelationRelationId;
	object.objectId = relOid;
	object.objectSubId = attnum;
	FUNC6(&object, SEPGSQL_LABEL_TAG, ncontext);

	FUNC19(sscan);
	FUNC21(rel, AccessShareLock);

	FUNC12(tcontext);
	FUNC12(ncontext);
}