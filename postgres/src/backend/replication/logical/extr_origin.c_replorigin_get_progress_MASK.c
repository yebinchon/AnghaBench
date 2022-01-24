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
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ roident; scalar_t__ remote_lsn; scalar_t__ local_lsn; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ ReplicationState ;
typedef  scalar_t__ RepOriginId ;

/* Variables and functions */
 scalar_t__ InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/ * ReplicationOriginLock ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int max_replication_slots ; 
 TYPE_1__* replication_states ; 

XLogRecPtr
FUNC3(RepOriginId node, bool flush)
{
	int			i;
	XLogRecPtr	local_lsn = InvalidXLogRecPtr;
	XLogRecPtr	remote_lsn = InvalidXLogRecPtr;

	/* prevent slots from being concurrently dropped */
	FUNC0(ReplicationOriginLock, LW_SHARED);

	for (i = 0; i < max_replication_slots; i++)
	{
		ReplicationState *state;

		state = &replication_states[i];

		if (state->roident == node)
		{
			FUNC0(&state->lock, LW_SHARED);

			remote_lsn = state->remote_lsn;
			local_lsn = state->local_lsn;

			FUNC1(&state->lock);

			break;
		}
	}

	FUNC1(ReplicationOriginLock);

	if (flush && local_lsn != InvalidXLogRecPtr)
		FUNC2(local_lsn);

	return remote_lsn;
}