#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  commandList; int /*<<< orphan*/  cxt; scalar_t__ commandCollectionInhibited; } ;
struct TYPE_7__ {void* secondaryObject; void* address; } ;
struct TYPE_8__ {TYPE_1__ simple; } ;
struct TYPE_9__ {int /*<<< orphan*/  parsetree; TYPE_2__ d; int /*<<< orphan*/  in_extension; int /*<<< orphan*/  type; } ;
typedef  void* ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__ CollectedCommand ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCT_Simple ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  creating_extension ; 
 TYPE_6__* currentEventTriggerState ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int) ; 

void
FUNC4(ObjectAddress address,
								 ObjectAddress secondaryObject,
								 Node *parsetree)
{
	MemoryContext oldcxt;
	CollectedCommand *command;

	/* ignore if event trigger context not set, or collection disabled */
	if (!currentEventTriggerState ||
		currentEventTriggerState->commandCollectionInhibited)
		return;

	oldcxt = FUNC0(currentEventTriggerState->cxt);

	command = FUNC3(sizeof(CollectedCommand));

	command->type = SCT_Simple;
	command->in_extension = creating_extension;

	command->d.simple.address = address;
	command->d.simple.secondaryObject = secondaryObject;
	command->parsetree = FUNC1(parsetree);

	currentEventTriggerState->commandList = FUNC2(currentEventTriggerState->commandList,
													command);

	FUNC0(oldcxt);
}