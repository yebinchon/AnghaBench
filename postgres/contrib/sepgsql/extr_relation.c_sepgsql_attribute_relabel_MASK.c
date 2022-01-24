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
struct TYPE_4__ {int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 char RELKIND_PARTITIONED_TABLE ; 
 char RELKIND_RELATION ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_COLUMN ; 
 int SEPG_DB_COLUMN__RELABELFROM ; 
 int SEPG_DB_COLUMN__SETATTR ; 
 int /*<<< orphan*/  SEPG_DB_PROCEDURE__RELABELTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (TYPE_1__*) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

void
FUNC8(Oid relOid, AttrNumber attnum,
						  const char *seclabel)
{
	ObjectAddress object;
	char	   *audit_name;
	char		relkind = FUNC4(relOid);

	if (relkind != RELKIND_RELATION && relkind != RELKIND_PARTITIONED_TABLE)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC2("cannot set security label on non-regular columns")));

	object.classId = RelationRelationId;
	object.objectId = relOid;
	object.objectSubId = attnum;
	audit_name = FUNC3(&object);

	/*
	 * check db_column:{setattr relabelfrom} permission
	 */
	FUNC6(&object,
							SEPG_CLASS_DB_COLUMN,
							SEPG_DB_COLUMN__SETATTR |
							SEPG_DB_COLUMN__RELABELFROM,
							audit_name,
							true);

	/*
	 * check db_column:{relabelto} permission
	 */
	FUNC7(seclabel,
								  SEPG_CLASS_DB_COLUMN,
								  SEPG_DB_PROCEDURE__RELABELTO,
								  audit_name,
								  true);
	FUNC5(audit_name);
}