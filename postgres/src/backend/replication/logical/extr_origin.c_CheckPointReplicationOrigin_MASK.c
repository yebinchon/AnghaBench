#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ roident; int /*<<< orphan*/  remote_lsn; } ;
typedef  TYPE_1__ uint32 ;
typedef  TYPE_1__ pg_crc32c ;
typedef  int /*<<< orphan*/  magic ;
typedef  int /*<<< orphan*/  disk_state ;
typedef  int /*<<< orphan*/  crc ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_14__ {scalar_t__ roident; int /*<<< orphan*/  lock; int /*<<< orphan*/  local_lsn; int /*<<< orphan*/  remote_lsn; } ;
typedef  TYPE_1__ ReplicationStateOnDisk ;
typedef  TYPE_4__ ReplicationState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOSPC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 scalar_t__ InvalidRepOriginId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  PANIC ; 
 int PG_BINARY ; 
 TYPE_1__ REPLICATION_STATE_MAGIC ; 
 int /*<<< orphan*/ * ReplicationOriginLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 scalar_t__ errno ; 
 int max_replication_slots ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* replication_states ; 
 scalar_t__ FUNC13 (char const*) ; 
 int FUNC14 (int,TYPE_1__*,int) ; 

void
FUNC15(void)
{
	const char *tmppath = "pg_logical/replorigin_checkpoint.tmp";
	const char *path = "pg_logical/replorigin_checkpoint";
	int			tmpfd;
	int			i;
	uint32		magic = REPLICATION_STATE_MAGIC;
	pg_crc32c	crc;

	if (max_replication_slots == 0)
		return;

	FUNC3(crc);

	/* make sure no old temp file is remaining */
	if (FUNC13(tmppath) < 0 && errno != ENOENT)
		FUNC9(PANIC,
				(FUNC10(),
				 FUNC11("could not remove file \"%s\": %m",
						tmppath)));

	/*
	 * no other backend can perform this at the same time, we're protected by
	 * CheckpointLock.
	 */
	tmpfd = FUNC6(tmppath,
							  O_CREAT | O_EXCL | O_WRONLY | PG_BINARY);
	if (tmpfd < 0)
		FUNC9(PANIC,
				(FUNC10(),
				 FUNC11("could not create file \"%s\": %m",
						tmppath)));

	/* write magic */
	errno = 0;
	if ((FUNC14(tmpfd, &magic, sizeof(magic))) != sizeof(magic))
	{
		/* if write didn't set errno, assume problem is no disk space */
		if (errno == 0)
			errno = ENOSPC;
		FUNC9(PANIC,
				(FUNC10(),
				 FUNC11("could not write to file \"%s\": %m",
						tmppath)));
	}
	FUNC0(crc, &magic, sizeof(magic));

	/* prevent concurrent creations/drops */
	FUNC4(ReplicationOriginLock, LW_SHARED);

	/* write actual data */
	for (i = 0; i < max_replication_slots; i++)
	{
		ReplicationStateOnDisk disk_state;
		ReplicationState *curstate = &replication_states[i];
		XLogRecPtr	local_lsn;

		if (curstate->roident == InvalidRepOriginId)
			continue;

		/* zero, to avoid uninitialized padding bytes */
		FUNC12(&disk_state, 0, sizeof(disk_state));

		FUNC4(&curstate->lock, LW_SHARED);

		disk_state.roident = curstate->roident;

		disk_state.remote_lsn = curstate->remote_lsn;
		local_lsn = curstate->local_lsn;

		FUNC5(&curstate->lock);

		/* make sure we only write out a commit that's persistent */
		FUNC7(local_lsn);

		errno = 0;
		if ((FUNC14(tmpfd, &disk_state, sizeof(disk_state))) !=
			sizeof(disk_state))
		{
			/* if write didn't set errno, assume problem is no disk space */
			if (errno == 0)
				errno = ENOSPC;
			FUNC9(PANIC,
					(FUNC10(),
					 FUNC11("could not write to file \"%s\": %m",
							tmppath)));
		}

		FUNC0(crc, &disk_state, sizeof(disk_state));
	}

	FUNC5(ReplicationOriginLock);

	/* write out the CRC */
	FUNC2(crc);
	errno = 0;
	if ((FUNC14(tmpfd, &crc, sizeof(crc))) != sizeof(crc))
	{
		/* if write didn't set errno, assume problem is no disk space */
		if (errno == 0)
			errno = ENOSPC;
		FUNC9(PANIC,
				(FUNC10(),
				 FUNC11("could not write to file \"%s\": %m",
						tmppath)));
	}

	if (FUNC1(tmpfd) != 0)
		FUNC9(PANIC,
				(FUNC10(),
				 FUNC11("could not close file \"%s\": %m",
						tmppath)));

	/* fsync, rename to permanent file, fsync file and directory */
	FUNC8(tmppath, path, PANIC);
}