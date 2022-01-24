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
struct TYPE_4__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  NamespaceRelationId ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_SCHEMA ; 
 int SEPG_DB_SCHEMA__RELABELFROM ; 
 int /*<<< orphan*/  SEPG_DB_SCHEMA__RELABELTO ; 
 int SEPG_DB_SCHEMA__SETATTR ; 
 char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

void
FUNC4(Oid namespaceId, const char *seclabel)
{
	ObjectAddress object;
	char	   *audit_name;

	object.classId = NamespaceRelationId;
	object.objectId = namespaceId;
	object.objectSubId = 0;
	audit_name = FUNC0(&object);

	/*
	 * check db_schema:{setattr relabelfrom} permission
	 */
	FUNC2(&object,
							SEPG_CLASS_DB_SCHEMA,
							SEPG_DB_SCHEMA__SETATTR |
							SEPG_DB_SCHEMA__RELABELFROM,
							audit_name,
							true);

	/*
	 * check db_schema:{relabelto} permission
	 */
	FUNC3(seclabel,
								  SEPG_CLASS_DB_SCHEMA,
								  SEPG_DB_SCHEMA__RELABELTO,
								  audit_name,
								  true);
	FUNC1(audit_name);
}