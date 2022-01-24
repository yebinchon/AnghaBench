#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  nspname; } ;
struct TYPE_8__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_3__* Form_pg_namespace ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_namespace_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NamespaceOidIndexId ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEPGSQL_LABEL_TAG ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SCHEMA ; 
 int /*<<< orphan*/  SEPG_DB_SCHEMA__CREATE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SnapshotSelf ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 char* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC21(Oid namespaceId)
{
	Relation	rel;
	ScanKeyData skey;
	SysScanDesc sscan;
	HeapTuple	tuple;
	char	   *tcontext;
	char	   *ncontext;
	const char *nsp_name;
	ObjectAddress object;
	Form_pg_namespace nspForm;
	StringInfoData audit_name;

	/*
	 * Compute a default security label when we create a new schema object
	 * under the working database.
	 *
	 * XXX - upcoming version of libselinux supports to take object name to
	 * handle special treatment on default security label; such as special
	 * label on "pg_temp" schema.
	 */
	rel = FUNC20(NamespaceRelationId, AccessShareLock);

	FUNC4(&skey,
				Anum_pg_namespace_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(namespaceId));

	sscan = FUNC16(rel, NamespaceOidIndexId, true,
							   SnapshotSelf, 1, &skey);
	tuple = FUNC18(sscan);
	if (!FUNC1(tuple))
		FUNC7(ERROR, "could not find tuple for namespace %u", namespaceId);

	nspForm = (Form_pg_namespace) FUNC0(tuple);
	nsp_name = FUNC2(nspForm->nspname);
	if (FUNC15(nsp_name, "pg_temp_", 8) == 0)
		nsp_name = "pg_temp";
	else if (FUNC15(nsp_name, "pg_toast_temp_", 14) == 0)
		nsp_name = "pg_toast_temp";

	tcontext = FUNC14(DatabaseRelationId, MyDatabaseId, 0);
	ncontext = FUNC12(FUNC13(),
									  tcontext,
									  SEPG_CLASS_DB_SCHEMA,
									  nsp_name);

	/*
	 * check db_schema:{create}
	 */
	FUNC8(&audit_name);
	FUNC6(&audit_name, "%s", FUNC10(nsp_name));
	FUNC11(ncontext,
								  SEPG_CLASS_DB_SCHEMA,
								  SEPG_DB_SCHEMA__CREATE,
								  audit_name.data,
								  true);
	FUNC17(sscan);
	FUNC19(rel, AccessShareLock);

	/*
	 * Assign the default security label on a new procedure
	 */
	object.classId = NamespaceRelationId;
	object.objectId = namespaceId;
	object.objectSubId = 0;
	FUNC5(&object, SEPGSQL_LABEL_TAG, ncontext);

	FUNC9(ncontext);
	FUNC9(tcontext);
}