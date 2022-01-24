#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  EventTriggerData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EVT_DDLCommandEnd ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  currentEventTriggerState ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(Node *parsetree)
{
	List	   *runlist;
	EventTriggerData trigdata;

	/*
	 * See EventTriggerDDLCommandStart for a discussion about why event
	 * triggers are disabled in single user mode.
	 */
	if (!IsUnderPostmaster)
		return;

	/*
	 * Also do nothing if our state isn't set up, which it won't be if there
	 * weren't any relevant event triggers at the start of the current DDL
	 * command.  This test might therefore seem optional, but it's important
	 * because EventTriggerCommonSetup might find triggers that didn't exist
	 * at the time the command started.  Although this function itself
	 * wouldn't crash, the event trigger functions would presumably call
	 * pg_event_trigger_ddl_commands which would fail.  Better to do nothing
	 * until the next command.
	 */
	if (!currentEventTriggerState)
		return;

	runlist = FUNC1(parsetree,
									  EVT_DDLCommandEnd, "ddl_command_end",
									  &trigdata);
	if (runlist == NIL)
		return;

	/*
	 * Make sure anything the main command did will be visible to the event
	 * triggers.
	 */
	FUNC0();

	/* Run the triggers. */
	FUNC2(runlist, &trigdata);

	/* Cleanup. */
	FUNC3(runlist);
}