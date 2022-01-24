#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_2__ {int ti_options; int /*<<< orphan*/  bistate; int /*<<< orphan*/  output_cid; int /*<<< orphan*/  transientrel; int /*<<< orphan*/  transientoid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_1__ DR_transientrel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int TABLE_INSERT_FROZEN ; 
 int TABLE_INSERT_SKIP_FSM ; 
 int TABLE_INSERT_SKIP_WAL ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(DestReceiver *self, int operation, TupleDesc typeinfo)
{
	DR_transientrel *myState = (DR_transientrel *) self;
	Relation	transientrel;

	transientrel = FUNC5(myState->transientoid, NoLock);

	/*
	 * Fill private fields of myState for use by later routines
	 */
	myState->transientrel = transientrel;
	myState->output_cid = FUNC2(true);

	/*
	 * We can skip WAL-logging the insertions, unless PITR or streaming
	 * replication is in use. We can skip the FSM in any case.
	 */
	myState->ti_options = TABLE_INSERT_SKIP_FSM | TABLE_INSERT_FROZEN;
	if (!FUNC4())
		myState->ti_options |= TABLE_INSERT_SKIP_WAL;
	myState->bistate = FUNC1();

	/* Not using WAL requires smgr_targblock be initially invalid */
	FUNC0(FUNC3(transientrel) == InvalidBlockNumber);
}