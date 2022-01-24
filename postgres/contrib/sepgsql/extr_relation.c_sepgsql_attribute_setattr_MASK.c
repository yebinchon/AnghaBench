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
 char RELKIND_PARTITIONED_TABLE ; 
 char RELKIND_RELATION ; 
 int /*<<< orphan*/  RelationRelationId ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_COLUMN ; 
 int /*<<< orphan*/  SEPG_DB_COLUMN__SETATTR ; 
 char* FUNC0 (TYPE_1__*) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

void
FUNC4(Oid relOid, AttrNumber attnum)
{
	ObjectAddress object;
	char	   *audit_name;
	char		relkind = FUNC1(relOid);

	if (relkind != RELKIND_RELATION && relkind != RELKIND_PARTITIONED_TABLE)
		return;

	/*
	 * check db_column:{setattr} permission
	 */
	object.classId = RelationRelationId;
	object.objectId = relOid;
	object.objectSubId = attnum;
	audit_name = FUNC0(&object);

	FUNC3(&object,
							SEPG_CLASS_DB_COLUMN,
							SEPG_DB_COLUMN__SETATTR,
							audit_name,
							true);
	FUNC2(audit_name);
}