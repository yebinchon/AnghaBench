#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  SEPGSQL_AVC_NOAUDIT ; 
 int /*<<< orphan*/  SEPG_CLASS_DB_PROCEDURE ; 
 int SEPG_DB_PROCEDURE__ENTRYPOINT ; 
 int SEPG_DB_PROCEDURE__EXECUTE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(Oid functionId)
{
	ObjectAddress object;

	if (&next_needs_fmgr_hook &&
		FUNC0) (functionId))
		return true;

	/*
	 * SELinux needs the function to be called via security_definer wrapper,
	 * if this invocation will take a domain-transition. We call these
	 * functions as trusted-procedure, if the security policy has a rule that
	 * switches security label of the client on execution.
	 */
	if (FUNC2(functionId) != NULL)
		return true;

	/*
	 * Even if not a trusted-procedure, this function should not be inlined
	 * unless the client has db_procedure:{execute} permission. Please note
	 * that it shall be actually failed later because of same reason with
	 * ACL_EXECUTE.
	 */
	object.classId = ProcedureRelationId;
	object.objectId = functionId;
	object.objectSubId = 0;
	if (!FUNC1(&object,
								 SEPG_CLASS_DB_PROCEDURE,
								 SEPG_DB_PROCEDURE__EXECUTE |
								 SEPG_DB_PROCEDURE__ENTRYPOINT,
								 SEPGSQL_AVC_NOAUDIT, false))
		return true;

	return false;
}