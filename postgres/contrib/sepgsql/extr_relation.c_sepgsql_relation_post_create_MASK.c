#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_14__ {scalar_t__ attnum; int /*<<< orphan*/  attname; } ;
struct TYPE_13__ {int relkind; scalar_t__ relnamespace; int /*<<< orphan*/  relname; } ;
struct TYPE_12__ {scalar_t__ objectId; scalar_t__ objectSubId; void* classId; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_class ;
typedef  TYPE_4__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_attribute_attrelid ; 
 int /*<<< orphan*/  Anum_pg_class_oid ; 
 void* AttributeRelationId ; 
 int /*<<< orphan*/  AttributeRelidNumIndexId ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ClassOidIndexId ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 void* NamespaceRelationId ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ PG_TOAST_NAMESPACE ; 
#define  RELKIND_INDEX 132 
#define  RELKIND_PARTITIONED_TABLE 131 
#define  RELKIND_RELATION 130 
#define  RELKIND_SEQUENCE 129 
#define  RELKIND_VIEW 128 
 void* RelationRelationId ; 
 int /*<<< orphan*/  SEPGSQL_LABEL_TAG ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_COLUMN ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SCHEMA ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SEQUENCE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_TABLE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_VIEW ; 
 int /*<<< orphan*/  SEPG_DB_COLUMN__CREATE ; 
 int /*<<< orphan*/  SEPG_DB_DATABASE__CREATE ; 
 int /*<<< orphan*/  SEPG_DB_SCHEMA__ADD_NAME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SnapshotSelf ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 char* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC16 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC17 () ; 
 char* FUNC18 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (void*,int /*<<< orphan*/ ) ; 

void
FUNC25(Oid relOid)
{
	Relation	rel;
	ScanKeyData skey;
	SysScanDesc sscan;
	HeapTuple	tuple;
	Form_pg_class classForm;
	ObjectAddress object;
	uint16_t	tclass;
	char	   *scontext;		/* subject */
	char	   *tcontext;		/* schema */
	char	   *rcontext;		/* relation */
	char	   *ccontext;		/* column */
	char	   *nsp_name;
	StringInfoData audit_name;

	/*
	 * Fetch catalog record of the new relation. Because pg_class entry is not
	 * visible right now, we need to scan the catalog using SnapshotSelf.
	 */
	rel = FUNC24(RelationRelationId, AccessShareLock);

	FUNC4(&skey,
				Anum_pg_class_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(relOid));

	sscan = FUNC20(rel, ClassOidIndexId, true,
							   SnapshotSelf, 1, &skey);

	tuple = FUNC22(sscan);
	if (!FUNC1(tuple))
		FUNC7(ERROR, "could not find tuple for relation %u", relOid);

	classForm = (Form_pg_class) FUNC0(tuple);

	/* ignore indexes on toast tables */
	if (classForm->relkind == RELKIND_INDEX &&
		classForm->relnamespace == PG_TOAST_NAMESPACE)
		goto out;

	/*
	 * check db_schema:{add_name} permission of the namespace
	 */
	object.classId = NamespaceRelationId;
	object.objectId = classForm->relnamespace;
	object.objectSubId = 0;
	FUNC14(&object,
							SEPG_CLASS_DB_SCHEMA,
							SEPG_DB_SCHEMA__ADD_NAME,
							FUNC8(&object),
							true);

	switch (classForm->relkind)
	{
		case RELKIND_RELATION:
		case RELKIND_PARTITIONED_TABLE:
			tclass = SEPG_CLASS_DB_TABLE;
			break;
		case RELKIND_SEQUENCE:
			tclass = SEPG_CLASS_DB_SEQUENCE;
			break;
		case RELKIND_VIEW:
			tclass = SEPG_CLASS_DB_VIEW;
			break;
		case RELKIND_INDEX:
			/* deal with indexes specially; no need for tclass */
			FUNC19(relOid);
			goto out;
		default:
			/* ignore other relkinds */
			goto out;
	}

	/*
	 * Compute a default security label when we create a new relation object
	 * under the specified namespace.
	 */
	scontext = FUNC17();
	tcontext = FUNC18(NamespaceRelationId,
								 classForm->relnamespace, 0);
	rcontext = FUNC16(scontext, tcontext, tclass,
									  FUNC2(classForm->relname));

	/*
	 * check db_xxx:{create} permission
	 */
	nsp_name = FUNC9(classForm->relnamespace);
	FUNC10(&audit_name);
	FUNC6(&audit_name, "%s.%s",
					 FUNC12(nsp_name),
					 FUNC12(FUNC2(classForm->relname)));
	FUNC15(rcontext,
								  tclass,
								  SEPG_DB_DATABASE__CREATE,
								  audit_name.data,
								  true);

	/*
	 * Assign the default security label on the new regular or partitioned
	 * relation.
	 */
	object.classId = RelationRelationId;
	object.objectId = relOid;
	object.objectSubId = 0;
	FUNC5(&object, SEPGSQL_LABEL_TAG, rcontext);

	/*
	 * We also assign a default security label on columns of a new table.
	 */
	if (classForm->relkind == RELKIND_RELATION ||
		classForm->relkind == RELKIND_PARTITIONED_TABLE)
	{
		Relation	arel;
		ScanKeyData akey;
		SysScanDesc ascan;
		HeapTuple	atup;
		Form_pg_attribute attForm;

		arel = FUNC24(AttributeRelationId, AccessShareLock);

		FUNC4(&akey,
					Anum_pg_attribute_attrelid,
					BTEqualStrategyNumber, F_OIDEQ,
					FUNC3(relOid));

		ascan = FUNC20(arel, AttributeRelidNumIndexId, true,
								   SnapshotSelf, 1, &akey);

		while (FUNC1(atup = FUNC22(ascan)))
		{
			attForm = (Form_pg_attribute) FUNC0(atup);

			FUNC13(&audit_name);
			FUNC6(&audit_name, "%s.%s.%s",
							 FUNC12(nsp_name),
							 FUNC12(FUNC2(classForm->relname)),
							 FUNC12(FUNC2(attForm->attname)));

			ccontext = FUNC16(scontext,
											  rcontext,
											  SEPG_CLASS_DB_COLUMN,
											  FUNC2(attForm->attname));

			/*
			 * check db_column:{create} permission
			 */
			FUNC15(ccontext,
										  SEPG_CLASS_DB_COLUMN,
										  SEPG_DB_COLUMN__CREATE,
										  audit_name.data,
										  true);

			object.classId = RelationRelationId;
			object.objectId = relOid;
			object.objectSubId = attForm->attnum;
			FUNC5(&object, SEPGSQL_LABEL_TAG, ccontext);

			FUNC11(ccontext);
		}
		FUNC21(ascan);
		FUNC23(arel, AccessShareLock);
	}
	FUNC11(rcontext);

out:
	FUNC21(sscan);
	FUNC23(rel, AccessShareLock);
}