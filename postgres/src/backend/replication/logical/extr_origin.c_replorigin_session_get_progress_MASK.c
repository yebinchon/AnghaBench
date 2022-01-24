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
struct TYPE_2__ {scalar_t__ remote_lsn; scalar_t__ local_lsn; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_1__* session_replication_state ; 

XLogRecPtr
FUNC4(bool flush)
{
	XLogRecPtr	remote_lsn;
	XLogRecPtr	local_lsn;

	FUNC0(session_replication_state != NULL);

	FUNC1(&session_replication_state->lock, LW_SHARED);
	remote_lsn = session_replication_state->remote_lsn;
	local_lsn = session_replication_state->local_lsn;
	FUNC2(&session_replication_state->lock);

	if (flush && local_lsn != InvalidXLogRecPtr)
		FUNC3(local_lsn);

	return remote_lsn;
}