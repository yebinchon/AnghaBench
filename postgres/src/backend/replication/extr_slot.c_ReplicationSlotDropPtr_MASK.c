#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ persistency; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int in_use; int /*<<< orphan*/  active_cv; scalar_t__ active_pid; int /*<<< orphan*/  mutex; TYPE_1__ data; } ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MAXPGPATH ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ RS_PERSISTENT ; 
 int /*<<< orphan*/  ReplicationSlotAllocationLock ; 
 int /*<<< orphan*/  ReplicationSlotControlLock ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC17(ReplicationSlot *slot)
{
	char		path[MAXPGPATH];
	char		tmppath[MAXPGPATH];

	/*
	 * If some other backend ran this code concurrently with us, we might try
	 * to delete a slot with a certain name while someone else was trying to
	 * create a slot with the same name.
	 */
	FUNC2(ReplicationSlotAllocationLock, LW_EXCLUSIVE);

	/* Generate pathnames. */
	FUNC16(path, "pg_replslot/%s", FUNC4(slot->data.name));
	FUNC16(tmppath, "pg_replslot/%s.tmp", FUNC4(slot->data.name));

	/*
	 * Rename the slot directory on disk, so that we'll no longer recognize
	 * this as a valid slot.  Note that if this fails, we've got to mark the
	 * slot inactive before bailing out.  If we're dropping an ephemeral or a
	 * temporary slot, we better never fail hard as the caller won't expect
	 * the slot to survive and this might get called during error handling.
	 */
	if (FUNC14(path, tmppath) == 0)
	{
		/*
		 * We need to fsync() the directory we just renamed and its parent to
		 * make sure that our changes are on disk in a crash-safe fashion.  If
		 * fsync() fails, we can't be sure whether the changes are on disk or
		 * not.  For now, we handle that by panicking;
		 * StartupReplicationSlots() will try to straighten it out after
		 * restart.
		 */
		FUNC7();
		FUNC13(tmppath, true);
		FUNC13("pg_replslot", true);
		FUNC1();
	}
	else
	{
		bool		fail_softly = slot->data.persistency != RS_PERSISTENT;

		FUNC8(&slot->mutex);
		slot->active_pid = 0;
		FUNC9(&slot->mutex);

		/* wake up anyone waiting on this slot */
		FUNC0(&slot->active_cv);

		FUNC10(fail_softly ? WARNING : ERROR,
				(FUNC11(),
				 FUNC12("could not rename file \"%s\" to \"%s\": %m",
						path, tmppath)));
	}

	/*
	 * The slot is definitely gone.  Lock out concurrent scans of the array
	 * long enough to kill it.  It's OK to clear the active PID here without
	 * grabbing the mutex because nobody else can be scanning the array here,
	 * and nobody can be attached to this slot and thus access it without
	 * scanning the array.
	 *
	 * Also wake up processes waiting for it.
	 */
	FUNC2(ReplicationSlotControlLock, LW_EXCLUSIVE);
	slot->active_pid = 0;
	slot->in_use = false;
	FUNC3(ReplicationSlotControlLock);
	FUNC0(&slot->active_cv);

	/*
	 * Slot is dead and doesn't prevent resource removal anymore, recompute
	 * limits.
	 */
	FUNC6(false);
	FUNC5();

	/*
	 * If removing the directory fails, the worst thing that will happen is
	 * that the user won't be able to create a new slot with the same name
	 * until the next server restart.  We warn about it, but that's all.
	 */
	if (!FUNC15(tmppath, true))
		FUNC10(WARNING,
				(FUNC12("could not remove directory \"%s\"", tmppath)));

	/*
	 * We release this at the very end, so that nobody starts trying to create
	 * a slot while we're still cleaning up the detritus of the old one.
	 */
	FUNC3(ReplicationSlotAllocationLock);
}