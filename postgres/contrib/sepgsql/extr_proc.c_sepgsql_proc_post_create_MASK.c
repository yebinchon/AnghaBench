#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_12__ {int /*<<< orphan*/ * values; } ;
struct TYPE_15__ {int pronargs; scalar_t__ proleakproof; TYPE_1__ proargtypes; int /*<<< orphan*/  proname; int /*<<< orphan*/  pronamespace; } ;
struct TYPE_14__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
struct TYPE_13__ {char* data; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  TYPE_2__ StringInfoData ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_4__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_proc_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcedureOidIndexId ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  SEPGSQL_LABEL_TAG ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_PROCEDURE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SCHEMA ; 
 int /*<<< orphan*/  SEPG_DB_PROCEDURE__CREATE ; 
 int /*<<< orphan*/  SEPG_DB_PROCEDURE__INSTALL ; 
 int /*<<< orphan*/  SEPG_DB_SCHEMA__ADD_NAME ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SnapshotSelf ; 
 int /*<<< orphan*/  TypeRelationId ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC17 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC18 () ; 
 char* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC25(Oid functionId)
{
	Relation	rel;
	ScanKeyData skey;
	SysScanDesc sscan;
	HeapTuple	tuple;
	char	   *nsp_name;
	char	   *scontext;
	char	   *tcontext;
	char	   *ncontext;
	uint32		required;
	int			i;
	StringInfoData audit_name;
	ObjectAddress object;
	Form_pg_proc proForm;

	/*
	 * Fetch namespace of the new procedure. Because pg_proc entry is not
	 * visible right now, we need to scan the catalog using SnapshotSelf.
	 */
	rel = FUNC24(ProcedureRelationId, AccessShareLock);

	FUNC4(&skey,
				Anum_pg_proc_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(functionId));

	sscan = FUNC20(rel, ProcedureOidIndexId, true,
							   SnapshotSelf, 1, &skey);

	tuple = FUNC22(sscan);
	if (!FUNC1(tuple))
		FUNC9(ERROR, "could not find tuple for function %u", functionId);

	proForm = (Form_pg_proc) FUNC0(tuple);

	/*
	 * check db_schema:{add_name} permission of the namespace
	 */
	object.classId = NamespaceRelationId;
	object.objectId = proForm->pronamespace;
	object.objectSubId = 0;
	FUNC15(&object,
							SEPG_CLASS_DB_SCHEMA,
							SEPG_DB_SCHEMA__ADD_NAME,
							FUNC10(&object),
							true);

	/*
	 * XXX - db_language:{implement} also should be checked here
	 */


	/*
	 * Compute a default security label when we create a new procedure object
	 * under the specified namespace.
	 */
	scontext = FUNC18();
	tcontext = FUNC19(NamespaceRelationId,
								 proForm->pronamespace, 0);
	ncontext = FUNC17(scontext, tcontext,
									  SEPG_CLASS_DB_PROCEDURE,
									  FUNC2(proForm->proname));

	/*
	 * check db_procedure:{create (install)} permission
	 */
	FUNC12(&audit_name);
	nsp_name = FUNC11(proForm->pronamespace);
	FUNC6(&audit_name, "%s(",
					 FUNC14(nsp_name, FUNC2(proForm->proname)));
	for (i = 0; i < proForm->pronargs; i++)
	{
		if (i > 0)
			FUNC7(&audit_name, ',');

		object.classId = TypeRelationId;
		object.objectId = proForm->proargtypes.values[i];
		object.objectSubId = 0;
		FUNC8(&audit_name, FUNC10(&object));
	}
	FUNC7(&audit_name, ')');

	required = SEPG_DB_PROCEDURE__CREATE;
	if (proForm->proleakproof)
		required |= SEPG_DB_PROCEDURE__INSTALL;

	FUNC16(ncontext,
								  SEPG_CLASS_DB_PROCEDURE,
								  required,
								  audit_name.data,
								  true);

	/*
	 * Assign the default security label on a new procedure
	 */
	object.classId = ProcedureRelationId;
	object.objectId = functionId;
	object.objectSubId = 0;
	FUNC5(&object, SEPGSQL_LABEL_TAG, ncontext);

	/*
	 * Cleanup
	 */
	FUNC21(sscan);
	FUNC23(rel, AccessShareLock);

	FUNC13(audit_name.data);
	FUNC13(tcontext);
	FUNC13(ncontext);
}