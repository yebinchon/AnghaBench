#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* currentCommand; int /*<<< orphan*/  cxt; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_11__ {int /*<<< orphan*/  parsetree; int /*<<< orphan*/  address; } ;
struct TYPE_8__ {int /*<<< orphan*/  subcmds; int /*<<< orphan*/  objectId; } ;
struct TYPE_9__ {TYPE_1__ alterTable; } ;
struct TYPE_10__ {TYPE_2__ d; } ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_4__ CollectedATSubcmd ;

/* Variables and functions */
 int /*<<< orphan*/  AlterTableCmd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_7__* currentEventTriggerState ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC6 (int) ; 

void
FUNC7(Node *subcmd, ObjectAddress address)
{
	MemoryContext oldcxt;
	CollectedATSubcmd *newsub;

	/* ignore if event trigger context not set, or collection disabled */
	if (!currentEventTriggerState ||
		currentEventTriggerState->commandCollectionInhibited)
		return;

	FUNC0(FUNC1(subcmd, AlterTableCmd));
	FUNC0(currentEventTriggerState->currentCommand != NULL);
	FUNC0(FUNC3(currentEventTriggerState->currentCommand->d.alterTable.objectId));

	oldcxt = FUNC2(currentEventTriggerState->cxt);

	newsub = FUNC6(sizeof(CollectedATSubcmd));
	newsub->address = address;
	newsub->parsetree = FUNC4(subcmd);

	currentEventTriggerState->currentCommand->d.alterTable.subcmds =
		FUNC5(currentEventTriggerState->currentCommand->d.alterTable.subcmds, newsub);

	FUNC2(oldcxt);
}