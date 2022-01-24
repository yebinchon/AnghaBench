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
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_2__ {scalar_t__ roident; scalar_t__ local_lsn; scalar_t__ remote_lsn; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ InvalidRepOriginId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_1__* session_replication_state ; 

void
FUNC3(XLogRecPtr remote_commit, XLogRecPtr local_commit)
{
	FUNC0(session_replication_state != NULL);
	FUNC0(session_replication_state->roident != InvalidRepOriginId);

	FUNC1(&session_replication_state->lock, LW_EXCLUSIVE);
	if (session_replication_state->local_lsn < local_commit)
		session_replication_state->local_lsn = local_commit;
	if (session_replication_state->remote_lsn < remote_commit)
		session_replication_state->remote_lsn = remote_commit;
	FUNC2(&session_replication_state->lock);
}