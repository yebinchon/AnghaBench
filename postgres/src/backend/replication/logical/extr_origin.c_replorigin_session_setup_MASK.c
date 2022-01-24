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
struct TYPE_4__ {scalar_t__ roident; scalar_t__ acquired_by; scalar_t__ remote_lsn; scalar_t__ local_lsn; int /*<<< orphan*/  origin_cv; } ;
typedef  TYPE_1__ ReplicationState ;
typedef  scalar_t__ RepOriginId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_CONFIGURATION_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_IN_USE ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidRepOriginId ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  ReplicationOriginExitCleanup ; 
 int /*<<< orphan*/  ReplicationOriginLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int max_replication_slots ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* replication_states ; 
 TYPE_1__* session_replication_state ; 

void
FUNC9(RepOriginId node)
{
	static bool registered_cleanup;
	int			i;
	int			free_slot = -1;

	if (!registered_cleanup)
	{
		FUNC8(ReplicationOriginExitCleanup, 0);
		registered_cleanup = true;
	}

	FUNC0(max_replication_slots > 0);

	if (session_replication_state != NULL)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC7("cannot setup replication origin when one is already setup")));

	/* Lock exclusively, as we may have to create a new table entry. */
	FUNC2(ReplicationOriginLock, LW_EXCLUSIVE);

	/*
	 * Search for either an existing slot for the origin, or a free one we can
	 * use.
	 */
	for (i = 0; i < max_replication_slots; i++)
	{
		ReplicationState *curstate = &replication_states[i];

		/* remember where to insert if necessary */
		if (curstate->roident == InvalidRepOriginId &&
			free_slot == -1)
		{
			free_slot = i;
			continue;
		}

		/* not our slot */
		if (curstate->roident != node)
			continue;

		else if (curstate->acquired_by != 0)
		{
			FUNC4(ERROR,
					(FUNC5(ERRCODE_OBJECT_IN_USE),
					 FUNC7("replication origin with OID %d is already active for PID %d",
							curstate->roident, curstate->acquired_by)));
		}

		/* ok, found slot */
		session_replication_state = curstate;
	}


	if (session_replication_state == NULL && free_slot == -1)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_CONFIGURATION_LIMIT_EXCEEDED),
				 FUNC7("could not find free replication state slot for replication origin with OID %u",
						node),
				 FUNC6("Increase max_replication_slots and try again.")));
	else if (session_replication_state == NULL)
	{
		/* initialize new slot */
		session_replication_state = &replication_states[free_slot];
		FUNC0(session_replication_state->remote_lsn == InvalidXLogRecPtr);
		FUNC0(session_replication_state->local_lsn == InvalidXLogRecPtr);
		session_replication_state->roident = node;
	}


	FUNC0(session_replication_state->roident != InvalidRepOriginId);

	session_replication_state->acquired_by = MyProcPid;

	FUNC3(ReplicationOriginLock);

	/* probably this one is pointless */
	FUNC1(&session_replication_state->origin_cv);
}