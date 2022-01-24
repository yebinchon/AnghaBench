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
typedef  int /*<<< orphan*/  xlrec ;
struct TYPE_8__ {scalar_t__ node_id; } ;
typedef  TYPE_1__ xl_replorigin_drop ;
struct TYPE_10__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_9__ {scalar_t__ roident; scalar_t__ acquired_by; void* local_lsn; void* remote_lsn; int /*<<< orphan*/  origin_cv; } ;
typedef  TYPE_2__ ReplicationState ;
typedef  scalar_t__ RepOriginId ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_3__* HeapTuple ;
typedef  int /*<<< orphan*/  ConditionVariable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_IN_USE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ InvalidRepOriginId ; 
 void* InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  REPLORIGIDENT ; 
 int /*<<< orphan*/  RM_REPLORIGIN_ID ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  ReplicationOriginLock ; 
 int /*<<< orphan*/  ReplicationOriginRelationId ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_REPLICATION_ORIGIN_DROP ; 
 int /*<<< orphan*/  XLOG_REPLORIGIN_DROP ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,scalar_t__,scalar_t__) ; 
 int max_replication_slots ; 
 TYPE_2__* replication_states ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC21(RepOriginId roident, bool nowait)
{
	HeapTuple	tuple;
	Relation	rel;
	int			i;

	FUNC0(FUNC6());

	/*
	 * To interlock against concurrent drops, we hold ExclusiveLock on
	 * pg_replication_origin throughout this function.
	 */
	rel = FUNC20(ReplicationOriginRelationId, ExclusiveLock);

	/*
	 * First, clean up the slot state info, if there is any matching slot.
	 */
restart:
	tuple = NULL;
	FUNC7(ReplicationOriginLock, LW_EXCLUSIVE);

	for (i = 0; i < max_replication_slots; i++)
	{
		ReplicationState *state = &replication_states[i];

		if (state->roident == roident)
		{
			/* found our slot, is it busy? */
			if (state->acquired_by != 0)
			{
				ConditionVariable *cv;

				if (nowait)
					FUNC16(ERROR,
							(FUNC17(ERRCODE_OBJECT_IN_USE),
							 FUNC18("could not drop replication origin with OID %d, in use by PID %d",
									state->roident,
									state->acquired_by)));

				/*
				 * We must wait and then retry.  Since we don't know which CV
				 * to wait on until here, we can't readily use
				 * ConditionVariablePrepareToSleep (calling it here would be
				 * wrong, since we could miss the signal if we did so); just
				 * use ConditionVariableSleep directly.
				 */
				cv = &state->origin_cv;

				FUNC8(ReplicationOriginLock);

				FUNC4(cv, WAIT_EVENT_REPLICATION_ORIGIN_DROP);
				goto restart;
			}

			/* first make a WAL log entry */
			{
				xl_replorigin_drop xlrec;

				xlrec.node_id = roident;
				FUNC12();
				FUNC14((char *) (&xlrec), sizeof(xlrec));
				FUNC13(RM_REPLORIGIN_ID, XLOG_REPLORIGIN_DROP);
			}

			/* then clear the in-memory slot */
			state->roident = InvalidRepOriginId;
			state->remote_lsn = InvalidXLogRecPtr;
			state->local_lsn = InvalidXLogRecPtr;
			break;
		}
	}
	FUNC8(ReplicationOriginLock);
	FUNC3();

	/*
	 * Now, we can delete the catalog entry.
	 */
	tuple = FUNC11(REPLORIGIDENT, FUNC9(roident));
	if (!FUNC5(tuple))
		FUNC15(ERROR, "cache lookup failed for replication origin with oid %u",
			 roident);

	FUNC1(rel, &tuple->t_self);
	FUNC10(tuple);

	FUNC2();

	/* now release lock again */
	FUNC19(rel, ExclusiveLock);
}