#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogSegNo ;
typedef  void* XLogRecPtr ;
struct TYPE_5__ {scalar_t__ restart_lsn; } ;
struct TYPE_6__ {TYPE_1__ data; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 () ; 
 void* FUNC2 () ; 
 scalar_t__ InvalidXLogRecPtr ; 
 void* FUNC3 () ; 
 TYPE_2__* MyReplicationSlot ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  wal_segment_size ; 

void
FUNC12(void)
{
	ReplicationSlot *slot = MyReplicationSlot;

	FUNC0(slot != NULL);
	FUNC0(slot->data.restart_lsn == InvalidXLogRecPtr);

	/*
	 * The replication slot mechanism is used to prevent removal of required
	 * WAL. As there is no interlock between this routine and checkpoints, WAL
	 * segments could concurrently be removed when a now stale return value of
	 * ReplicationSlotsComputeRequiredLSN() is used. In the unlikely case that
	 * this happens we'll just retry.
	 */
	while (true)
	{
		XLogSegNo	segno;
		XLogRecPtr	restart_lsn;

		/*
		 * For logical slots log a standby snapshot and start logical decoding
		 * at exactly that position. That allows the slot to start up more
		 * quickly.
		 *
		 * That's not needed (or indeed helpful) for physical slots as they'll
		 * start replay at the last logged checkpoint anyway. Instead return
		 * the location of the last redo LSN. While that slightly increases
		 * the chance that we have to retry, it's where a base backup has to
		 * start replay at.
		 */
		if (!FUNC4() && FUNC6(slot))
		{
			XLogRecPtr	flushptr;

			/* start at current insert position */
			restart_lsn = FUNC2();
			FUNC7(&slot->mutex);
			slot->data.restart_lsn = restart_lsn;
			FUNC8(&slot->mutex);

			/* make sure we have enough information to start */
			flushptr = FUNC3();

			/* and make sure it's fsynced to disk */
			FUNC10(flushptr);
		}
		else
		{
			restart_lsn = FUNC1();
			FUNC7(&slot->mutex);
			slot->data.restart_lsn = restart_lsn;
			FUNC8(&slot->mutex);
		}

		/* prevent WAL removal as fast as possible */
		FUNC5();

		/*
		 * If all required WAL is still there, great, otherwise retry. The
		 * slot should prevent further removal of WAL, unless there's a
		 * concurrent ReplicationSlotsComputeRequiredLSN() after we've written
		 * the new restart_lsn above, so normally we should never need to loop
		 * more than twice.
		 */
		FUNC9(slot->data.restart_lsn, segno, wal_segment_size);
		if (FUNC11() < segno)
			break;
	}
}