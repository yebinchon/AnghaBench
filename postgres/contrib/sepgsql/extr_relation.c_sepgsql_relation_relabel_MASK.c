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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 char RELKIND_PARTITIONED_TABLE ; 
 char RELKIND_RELATION ; 
 char RELKIND_SEQUENCE ; 
 char RELKIND_VIEW ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SEQUENCE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_TABLE ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_VIEW ; 
 int SEPG_DB_TABLE__RELABELFROM ; 
 int /*<<< orphan*/  SEPG_DB_TABLE__RELABELTO ; 
 int SEPG_DB_TABLE__SETATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (TYPE_1__*) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

void
FUNC8(Oid relOid, const char *seclabel)
{
	ObjectAddress object;
	char	   *audit_name;
	char		relkind = FUNC4(relOid);
	uint16_t	tclass = 0;

	if (relkind == RELKIND_RELATION || relkind == RELKIND_PARTITIONED_TABLE)
		tclass = SEPG_CLASS_DB_TABLE;
	else if (relkind == RELKIND_SEQUENCE)
		tclass = SEPG_CLASS_DB_SEQUENCE;
	else if (relkind == RELKIND_VIEW)
		tclass = SEPG_CLASS_DB_VIEW;
	else
		FUNC0(ERROR,
				(FUNC1(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC2("cannot set security labels on relations except "
						"for tables, sequences or views")));

	object.classId = RelationRelationId;
	object.objectId = relOid;
	object.objectSubId = 0;
	audit_name = FUNC3(&object);

	/*
	 * check db_xxx:{setattr relabelfrom} permission
	 */
	FUNC6(&object,
							tclass,
							SEPG_DB_TABLE__SETATTR |
							SEPG_DB_TABLE__RELABELFROM,
							audit_name,
							true);

	/*
	 * check db_xxx:{relabelto} permission
	 */
	FUNC7(seclabel,
								  tclass,
								  SEPG_DB_TABLE__RELABELTO,
								  audit_name,
								  true);
	FUNC5(audit_name);
}