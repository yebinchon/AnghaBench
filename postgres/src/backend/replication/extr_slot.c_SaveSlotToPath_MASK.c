#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cp ;
struct TYPE_7__ {int dirty; int just_dirtied; int /*<<< orphan*/  io_in_progress_lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  checksum; int /*<<< orphan*/  slotdata; int /*<<< orphan*/  length; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  ReplicationSlotPersistentData ;
typedef  TYPE_1__ ReplicationSlotOnDisk ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int MAXPGPATH ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int FUNC7 (char*,int) ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  ReplicationSlotOnDiskV2Size ; 
 int /*<<< orphan*/  SLOT_MAGIC ; 
 int /*<<< orphan*/  SLOT_VERSION ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  SnapBuildOnDiskChecksummedSize ; 
 int SnapBuildOnDiskNotChecksummedSize ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WAIT_EVENT_REPLICATION_SLOT_SYNC ; 
 int /*<<< orphan*/  WAIT_EVENT_REPLICATION_SLOT_WRITE ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC14 (char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,char const*) ; 
 int FUNC22 (int,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC23(ReplicationSlot *slot, const char *dir, int elevel)
{
	char		tmppath[MAXPGPATH];
	char		path[MAXPGPATH];
	int			fd;
	ReplicationSlotOnDisk cp;
	bool		was_dirty;

	/* first check whether there's something to write out */
	FUNC9(&slot->mutex);
	was_dirty = slot->dirty;
	slot->just_dirtied = false;
	FUNC10(&slot->mutex);

	/* and don't do anything if there's nothing to write */
	if (!was_dirty)
		return;

	FUNC5(&slot->io_in_progress_lock, LW_EXCLUSIVE);

	/* silence valgrind :( */
	FUNC16(&cp, 0, sizeof(ReplicationSlotOnDisk));

	FUNC21(tmppath, "%s/state.tmp", dir);
	FUNC21(path, "%s/state", dir);

	fd = FUNC7(tmppath, O_CREAT | O_EXCL | O_WRONLY | PG_BINARY);
	if (fd < 0)
	{
		FUNC11(elevel,
				(FUNC12(),
				 FUNC13("could not create file \"%s\": %m",
						tmppath)));
		return;
	}

	cp.magic = SLOT_MAGIC;
	FUNC4(cp.checksum);
	cp.version = SLOT_VERSION;
	cp.length = ReplicationSlotOnDiskV2Size;

	FUNC9(&slot->mutex);

	FUNC15(&cp.slotdata, &slot->data, sizeof(ReplicationSlotPersistentData));

	FUNC10(&slot->mutex);

	FUNC0(cp.checksum,
				(char *) (&cp) + SnapBuildOnDiskNotChecksummedSize,
				SnapBuildOnDiskChecksummedSize);
	FUNC3(cp.checksum);

	errno = 0;
	FUNC19(WAIT_EVENT_REPLICATION_SLOT_WRITE);
	if ((FUNC22(fd, &cp, sizeof(cp))) != sizeof(cp))
	{
		int			save_errno = errno;

		FUNC18();
		FUNC1(fd);

		/* if write didn't set errno, assume problem is no disk space */
		errno = save_errno ? save_errno : ENOSPC;
		FUNC11(elevel,
				(FUNC12(),
				 FUNC13("could not write to file \"%s\": %m",
						tmppath)));
		return;
	}
	FUNC18();

	/* fsync the temporary file */
	FUNC19(WAIT_EVENT_REPLICATION_SLOT_SYNC);
	if (FUNC17(fd) != 0)
	{
		int			save_errno = errno;

		FUNC18();
		FUNC1(fd);
		errno = save_errno;
		FUNC11(elevel,
				(FUNC12(),
				 FUNC13("could not fsync file \"%s\": %m",
						tmppath)));
		return;
	}
	FUNC18();

	if (FUNC1(fd) != 0)
	{
		FUNC11(elevel,
				(FUNC12(),
				 FUNC13("could not close file \"%s\": %m",
						tmppath)));
		return;
	}

	/* rename to permanent file, fsync file and directory */
	if (FUNC20(tmppath, path) != 0)
	{
		FUNC11(elevel,
				(FUNC12(),
				 FUNC13("could not rename file \"%s\" to \"%s\": %m",
						tmppath, path)));
		return;
	}

	/*
	 * Check CreateSlotOnDisk() for the reasoning of using a critical section.
	 */
	FUNC8();

	FUNC14(path, false);
	FUNC14(dir, true);
	FUNC14("pg_replslot", true);

	FUNC2();

	/*
	 * Successfully wrote, unset dirty bit, unless somebody dirtied again
	 * already.
	 */
	FUNC9(&slot->mutex);
	if (!slot->just_dirtied)
		slot->dirty = false;
	FUNC10(&slot->mutex);

	FUNC6(&slot->io_in_progress_lock);
}