#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_6__ {scalar_t__ pronamespace; scalar_t__ proleakproof; int /*<<< orphan*/  proname; } ;
struct TYPE_5__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_proc_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  ProcedureOidIndexId ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_PROCEDURE ; 
 int /*<<< orphan*/  SEPG_DB_PROCEDURE__INSTALL ; 
 int /*<<< orphan*/  SEPG_DB_PROCEDURE__SETATTR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SnapshotSelf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC20(Oid functionId)
{
	Relation	rel;
	ScanKeyData skey;
	SysScanDesc sscan;
	HeapTuple	oldtup;
	HeapTuple	newtup;
	Form_pg_proc oldform;
	Form_pg_proc newform;
	uint32		required;
	ObjectAddress object;
	char	   *audit_name;

	/*
	 * Fetch newer catalog
	 */
	rel = FUNC19(ProcedureRelationId, AccessShareLock);

	FUNC5(&skey,
				Anum_pg_proc_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(functionId));

	sscan = FUNC15(rel, ProcedureOidIndexId, true,
							   SnapshotSelf, 1, &skey);
	newtup = FUNC17(sscan);
	if (!FUNC1(newtup))
		FUNC7(ERROR, "could not find tuple for function %u", functionId);
	newform = (Form_pg_proc) FUNC0(newtup);

	/*
	 * Fetch older catalog
	 */
	oldtup = FUNC6(PROCOID, FUNC3(functionId));
	if (!FUNC1(oldtup))
		FUNC7(ERROR, "cache lookup failed for function %u", functionId);
	oldform = (Form_pg_proc) FUNC0(oldtup);

	/*
	 * Does this ALTER command takes operation to namespace?
	 */
	if (newform->pronamespace != oldform->pronamespace)
	{
		FUNC12(oldform->pronamespace);
		FUNC11(oldform->pronamespace);
	}
	if (FUNC14(FUNC2(newform->proname), FUNC2(oldform->proname)) != 0)
		FUNC13(oldform->pronamespace);

	/*
	 * check db_procedure:{setattr (install)} permission
	 */
	required = SEPG_DB_PROCEDURE__SETATTR;
	if (!oldform->proleakproof && newform->proleakproof)
		required |= SEPG_DB_PROCEDURE__INSTALL;

	object.classId = ProcedureRelationId;
	object.objectId = functionId;
	object.objectSubId = 0;
	audit_name = FUNC8(&object);

	FUNC10(&object,
							SEPG_CLASS_DB_PROCEDURE,
							required,
							audit_name,
							true);
	/* cleanups */
	FUNC9(audit_name);

	FUNC4(oldtup);
	FUNC16(sscan);
	FUNC18(rel, AccessShareLock);
}