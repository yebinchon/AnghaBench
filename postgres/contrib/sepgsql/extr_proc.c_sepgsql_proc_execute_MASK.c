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
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_PROCEDURE ; 
 int /*<<< orphan*/  SEPG_DB_PROCEDURE__EXECUTE ; 
 char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

void
FUNC3(Oid functionId)
{
	ObjectAddress object;
	char	   *audit_name;

	/*
	 * check db_procedure:{execute} permission
	 */
	object.classId = ProcedureRelationId;
	object.objectId = functionId;
	object.objectSubId = 0;
	audit_name = FUNC0(&object);
	FUNC2(&object,
							SEPG_CLASS_DB_PROCEDURE,
							SEPG_DB_PROCEDURE__EXECUTE,
							audit_name,
							true);
	FUNC1(audit_name);
}