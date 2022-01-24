#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  oprowner; int /*<<< orphan*/  oid; int /*<<< orphan*/  oprjoin; int /*<<< orphan*/  oprrest; int /*<<< orphan*/  oprcode; int /*<<< orphan*/  oprresult; int /*<<< orphan*/  oprright; int /*<<< orphan*/  oprleft; int /*<<< orphan*/  oprnamespace; } ;
struct TYPE_7__ {scalar_t__ objectSubId; int /*<<< orphan*/  objectId; void* classId; } ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_operator ;

/* Variables and functions */
 int /*<<< orphan*/  DEPENDENCY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* NamespaceRelationId ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* OperatorRelationId ; 
 void* ProcedureRelationId ; 
 void* TypeRelationId ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC7(HeapTuple tuple, bool isUpdate)
{
	Form_pg_operator oper = (Form_pg_operator) FUNC0(tuple);
	ObjectAddress myself,
				referenced;

	myself.classId = OperatorRelationId;
	myself.objectId = oper->oid;
	myself.objectSubId = 0;

	/*
	 * If we are updating the operator, delete any existing entries, except
	 * for extension membership which should remain the same.
	 */
	if (isUpdate)
	{
		FUNC2(myself.classId, myself.objectId, true);
		FUNC3(myself.classId, myself.objectId, 0);
	}

	/* Dependency on namespace */
	if (FUNC1(oper->oprnamespace))
	{
		referenced.classId = NamespaceRelationId;
		referenced.objectId = oper->oprnamespace;
		referenced.objectSubId = 0;
		FUNC4(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/* Dependency on left type */
	if (FUNC1(oper->oprleft))
	{
		referenced.classId = TypeRelationId;
		referenced.objectId = oper->oprleft;
		referenced.objectSubId = 0;
		FUNC4(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/* Dependency on right type */
	if (FUNC1(oper->oprright))
	{
		referenced.classId = TypeRelationId;
		referenced.objectId = oper->oprright;
		referenced.objectSubId = 0;
		FUNC4(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/* Dependency on result type */
	if (FUNC1(oper->oprresult))
	{
		referenced.classId = TypeRelationId;
		referenced.objectId = oper->oprresult;
		referenced.objectSubId = 0;
		FUNC4(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/*
	 * NOTE: we do not consider the operator to depend on the associated
	 * operators oprcom and oprnegate. We would not want to delete this
	 * operator if those go away, but only reset the link fields; which is not
	 * a function that the dependency code can presently handle.  (Something
	 * could perhaps be done with objectSubId though.)	For now, it's okay to
	 * let those links dangle if a referenced operator is removed.
	 */

	/* Dependency on implementation function */
	if (FUNC1(oper->oprcode))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = oper->oprcode;
		referenced.objectSubId = 0;
		FUNC4(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/* Dependency on restriction selectivity function */
	if (FUNC1(oper->oprrest))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = oper->oprrest;
		referenced.objectSubId = 0;
		FUNC4(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/* Dependency on join selectivity function */
	if (FUNC1(oper->oprjoin))
	{
		referenced.classId = ProcedureRelationId;
		referenced.objectId = oper->oprjoin;
		referenced.objectSubId = 0;
		FUNC4(&myself, &referenced, DEPENDENCY_NORMAL);
	}

	/* Dependency on owner */
	FUNC6(OperatorRelationId, oper->oid,
							oper->oprowner);

	/* Dependency on extension */
	FUNC5(&myself, true);

	return myself;
}