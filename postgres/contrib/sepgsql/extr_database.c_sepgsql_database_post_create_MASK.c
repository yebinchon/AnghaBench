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
struct TYPE_10__ {int /*<<< orphan*/  datname; } ;
struct TYPE_9__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; void* classId; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_database ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_database_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  DatabaseOidIndexId ; 
 void* DatabaseRelationId ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEPGSQL_LABEL_TAG ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_DATABASE ; 
 int /*<<< orphan*/  SEPG_DB_DATABASE__CREATE ; 
 int /*<<< orphan*/  SEPG_DB_DATABASE__GETATTR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SnapshotSelf ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* FUNC16 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (void*,int /*<<< orphan*/ ) ; 

void
FUNC22(Oid databaseId, const char *dtemplate)
{
	Relation	rel;
	ScanKeyData skey;
	SysScanDesc sscan;
	HeapTuple	tuple;
	char	   *tcontext;
	char	   *ncontext;
	ObjectAddress object;
	Form_pg_database datForm;
	StringInfoData audit_name;

	/*
	 * Oid of the source database is not saved in pg_database catalog, so we
	 * collect its identifier using contextual information. If NULL, its
	 * default is "template1" according to createdb().
	 */
	if (!dtemplate)
		dtemplate = "template1";

	object.classId = DatabaseRelationId;
	object.objectId = FUNC8(dtemplate, false);
	object.objectSubId = 0;

	tcontext = FUNC16(object.classId,
								 object.objectId,
								 object.objectSubId);

	/*
	 * check db_database:{getattr} permission
	 */
	FUNC9(&audit_name);
	FUNC6(&audit_name, FUNC11(dtemplate));
	FUNC13(tcontext,
								  SEPG_CLASS_DB_DATABASE,
								  SEPG_DB_DATABASE__GETATTR,
								  audit_name.data,
								  true);

	/*
	 * Compute a default security label of the newly created database based on
	 * a pair of security label of client and source database.
	 *
	 * XXX - upcoming version of libselinux supports to take object name to
	 * handle special treatment on default security label.
	 */
	rel = FUNC21(DatabaseRelationId, AccessShareLock);

	FUNC4(&skey,
				Anum_pg_database_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(databaseId));

	sscan = FUNC17(rel, DatabaseOidIndexId, true,
							   SnapshotSelf, 1, &skey);
	tuple = FUNC19(sscan);
	if (!FUNC1(tuple))
		FUNC7(ERROR, "could not find tuple for database %u", databaseId);

	datForm = (Form_pg_database) FUNC0(tuple);

	ncontext = FUNC14(FUNC15(),
									  tcontext,
									  SEPG_CLASS_DB_DATABASE,
									  FUNC2(datForm->datname));

	/*
	 * check db_database:{create} permission
	 */
	FUNC12(&audit_name);
	FUNC6(&audit_name,
						   FUNC11(FUNC2(datForm->datname)));
	FUNC13(ncontext,
								  SEPG_CLASS_DB_DATABASE,
								  SEPG_DB_DATABASE__CREATE,
								  audit_name.data,
								  true);

	FUNC18(sscan);
	FUNC20(rel, AccessShareLock);

	/*
	 * Assign the default security label on the new database
	 */
	object.classId = DatabaseRelationId;
	object.objectId = databaseId;
	object.objectSubId = 0;

	FUNC5(&object, SEPGSQL_LABEL_TAG, ncontext);

	FUNC10(ncontext);
	FUNC10(tcontext);
}