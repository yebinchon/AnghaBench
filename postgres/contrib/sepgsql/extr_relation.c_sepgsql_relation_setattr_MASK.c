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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {scalar_t__ relnamespace; int /*<<< orphan*/  relname; } ;
struct TYPE_5__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_class_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  ClassOidIndexId ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  RELKIND_INDEX 132 
#define  RELKIND_PARTITIONED_TABLE 131 
#define  RELKIND_RELATION 130 
#define  RELKIND_SEQUENCE 129 
#define  RELKIND_VIEW 128 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SEQUENCE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_TABLE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_VIEW ; 
 int /*<<< orphan*/  SEPG_DB_TABLE__SETATTR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SnapshotSelf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC22(Oid relOid)
{
	Relation	rel;
	ScanKeyData skey;
	SysScanDesc sscan;
	HeapTuple	oldtup;
	HeapTuple	newtup;
	Form_pg_class oldform;
	Form_pg_class newform;
	ObjectAddress object;
	char	   *audit_name;
	uint16_t	tclass;

	switch (FUNC9(relOid))
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
			/* deal with indexes specially */
			FUNC12(relOid);
			return;
		default:
			/* other relkinds don't need additional work */
			return;
	}

	/*
	 * Fetch newer catalog
	 */
	rel = FUNC21(RelationRelationId, AccessShareLock);

	FUNC5(&skey,
				Anum_pg_class_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(relOid));

	sscan = FUNC17(rel, ClassOidIndexId, true,
							   SnapshotSelf, 1, &skey);

	newtup = FUNC19(sscan);
	if (!FUNC1(newtup))
		FUNC7(ERROR, "could not find tuple for relation %u", relOid);
	newform = (Form_pg_class) FUNC0(newtup);

	/*
	 * Fetch older catalog
	 */
	oldtup = FUNC6(RELOID, FUNC3(relOid));
	if (!FUNC1(oldtup))
		FUNC7(ERROR, "cache lookup failed for relation %u", relOid);
	oldform = (Form_pg_class) FUNC0(oldtup);

	/*
	 * Does this ALTER command takes operation to namespace?
	 */
	if (newform->relnamespace != oldform->relnamespace)
	{
		FUNC14(oldform->relnamespace);
		FUNC13(newform->relnamespace);
	}
	if (FUNC16(FUNC2(newform->relname), FUNC2(oldform->relname)) != 0)
		FUNC15(oldform->relnamespace);

	/*
	 * XXX - In the future version, db_tuple:{use} of system catalog entry
	 * shall be checked, if tablespace configuration is changed.
	 */

	/*
	 * check db_xxx:{setattr} permission
	 */
	object.classId = RelationRelationId;
	object.objectId = relOid;
	object.objectSubId = 0;
	audit_name = FUNC8(&object);

	FUNC11(&object,
							tclass,
							SEPG_DB_TABLE__SETATTR,
							audit_name,
							true);
	FUNC10(audit_name);

	FUNC4(oldtup);
	FUNC18(sscan);
	FUNC20(rel, AccessShareLock);
}