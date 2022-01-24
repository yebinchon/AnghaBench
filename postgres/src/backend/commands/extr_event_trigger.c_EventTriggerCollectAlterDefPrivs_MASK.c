#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  commandList; int /*<<< orphan*/  cxt; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_15__ {TYPE_3__* action; } ;
struct TYPE_11__ {int /*<<< orphan*/  objtype; } ;
struct TYPE_12__ {TYPE_1__ defprivs; } ;
struct TYPE_14__ {int /*<<< orphan*/ * parsetree; int /*<<< orphan*/  in_extension; TYPE_2__ d; int /*<<< orphan*/  type; } ;
struct TYPE_13__ {int /*<<< orphan*/  objtype; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_4__ CollectedCommand ;
typedef  TYPE_5__ AlterDefaultPrivilegesStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCT_AlterDefaultPrivileges ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  creating_extension ; 
 TYPE_8__* currentEventTriggerState ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC3 (int) ; 

void
FUNC4(AlterDefaultPrivilegesStmt *stmt)
{
	MemoryContext oldcxt;
	CollectedCommand *command;

	/* ignore if event trigger context not set, or collection disabled */
	if (!currentEventTriggerState ||
		currentEventTriggerState->commandCollectionInhibited)
		return;

	oldcxt = FUNC0(currentEventTriggerState->cxt);

	command = FUNC3(sizeof(CollectedCommand));
	command->type = SCT_AlterDefaultPrivileges;
	command->d.defprivs.objtype = stmt->action->objtype;
	command->in_extension = creating_extension;
	command->parsetree = (Node *) FUNC1(stmt);

	currentEventTriggerState->commandList =
		FUNC2(currentEventTriggerState->commandList, command);
	FUNC0(oldcxt);
}