#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int atCommit; struct TYPE_10__* next; int /*<<< orphan*/  nestLevel; int /*<<< orphan*/  backend; int /*<<< orphan*/  relnode; } ;
struct TYPE_8__ {int /*<<< orphan*/  node; } ;
struct TYPE_9__ {TYPE_1__ smgr_rnode; } ;
typedef  TYPE_2__* SMgrRelation ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  TYPE_3__ PendingRelDelete ;
typedef  int /*<<< orphan*/  BackendId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  InvalidBackendId ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
#define  RELPERSISTENCE_PERMANENT 130 
#define  RELPERSISTENCE_TEMP 129 
#define  RELPERSISTENCE_UNLOGGED 128 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* pendingDeletes ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SMgrRelation
FUNC7(RelFileNode rnode, char relpersistence)
{
	PendingRelDelete *pending;
	SMgrRelation srel;
	BackendId	backend;
	bool		needs_wal;

	switch (relpersistence)
	{
		case RELPERSISTENCE_TEMP:
			backend = FUNC0();
			needs_wal = false;
			break;
		case RELPERSISTENCE_UNLOGGED:
			backend = InvalidBackendId;
			needs_wal = false;
			break;
		case RELPERSISTENCE_PERMANENT:
			backend = InvalidBackendId;
			needs_wal = true;
			break;
		default:
			FUNC3(ERROR, "invalid relpersistence: %c", relpersistence);
			return NULL;		/* placate compiler */
	}

	srel = FUNC6(rnode, backend);
	FUNC5(srel, MAIN_FORKNUM, false);

	if (needs_wal)
		FUNC4(&srel->smgr_rnode.node, MAIN_FORKNUM);

	/* Add the relation to the list of stuff to delete at abort */
	pending = (PendingRelDelete *)
		FUNC2(TopMemoryContext, sizeof(PendingRelDelete));
	pending->relnode = rnode;
	pending->backend = backend;
	pending->atCommit = false;	/* delete if abort */
	pending->nestLevel = FUNC1();
	pending->next = pendingDeletes;
	pendingDeletes = pending;

	return srel;
}