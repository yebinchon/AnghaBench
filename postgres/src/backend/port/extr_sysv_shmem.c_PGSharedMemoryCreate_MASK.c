#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_ino; int /*<<< orphan*/  st_dev; } ;
struct TYPE_7__ {void* freeoffset; void* totalsize; scalar_t__ inode; int /*<<< orphan*/  device; scalar_t__ dsm_control; int /*<<< orphan*/  magic; int /*<<< orphan*/  creatorPID; } ;
typedef  void* Size ;
typedef  TYPE_1__ PGShmemHeader ;
typedef  int IpcMemoryState ;
typedef  scalar_t__ IpcMemoryKey ;
typedef  scalar_t__ IpcMemoryId ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/ * AnonymousShmem ; 
 int /*<<< orphan*/  AnonymousShmemDetach ; 
 void* AnonymousShmemSize ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (void**) ; 
 int /*<<< orphan*/  DataDir ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_LOCK_FILE_EXISTS ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ HUGE_PAGES_ON ; 
 int /*<<< orphan*/  IPC_RMID ; 
 void* FUNC2 (scalar_t__,void*) ; 
 int /*<<< orphan*/  LOG ; 
 void* FUNC3 (int) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  PGShmemMagic ; 
 scalar_t__ SHMEM_TYPE_MMAP ; 
#define  SHMSTATE_ANALYSIS_FAILURE 132 
#define  SHMSTATE_ATTACHED 131 
#define  SHMSTATE_ENOENT 130 
#define  SHMSTATE_FOREIGN 129 
#define  SHMSTATE_UNATTACHED 128 
 void* UsedShmemSegAddr ; 
 unsigned long UsedShmemSegID ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ huge_pages ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ shared_memory_type ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,struct stat*) ; 

PGShmemHeader *
FUNC19(Size size,
					 PGShmemHeader **shim)
{
	IpcMemoryKey NextShmemSegID;
	void	   *memAddress;
	PGShmemHeader *hdr;
	struct stat statbuf;
	Size		sysvsize;

	/*
	 * We use the data directory's ID info (inode and device numbers) to
	 * positively identify shmem segments associated with this data dir, and
	 * also as seeds for searching for a free shmem key.
	 */
	if (FUNC18(DataDir, &statbuf) < 0)
		FUNC7(FATAL,
				(FUNC9(),
				 FUNC11("could not stat data directory \"%s\": %m",
						DataDir)));

	/* Complain if hugepages demanded but we can't possibly support them */
#if !defined(MAP_HUGETLB)
	if (huge_pages == HUGE_PAGES_ON)
		FUNC7(ERROR,
				(FUNC8(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC11("huge pages not supported on this platform")));
#endif

	/* Room for a header? */
	FUNC0(size > FUNC3(sizeof(PGShmemHeader)));

	if (shared_memory_type == SHMEM_TYPE_MMAP)
	{
		AnonymousShmem = FUNC1(&size);
		AnonymousShmemSize = size;

		/* Register on-exit routine to unmap the anonymous segment */
		FUNC14(AnonymousShmemDetach, (Datum) 0);

		/* Now we need only allocate a minimal-sized SysV shmem block. */
		sysvsize = sizeof(PGShmemHeader);
	}
	else
		sysvsize = size;

	/*
	 * Loop till we find a free IPC key.  Trust CreateDataDirLockFile() to
	 * ensure no more than one postmaster per data directory can enter this
	 * loop simultaneously.  (CreateDataDirLockFile() does not entirely ensure
	 * that, but prefer fixing it over coping here.)
	 */
	NextShmemSegID = statbuf.st_ino;

	for (;;)
	{
		IpcMemoryId shmid;
		PGShmemHeader *oldhdr;
		IpcMemoryState state;

		/* Try to create new segment */
		memAddress = FUNC2(NextShmemSegID, sysvsize);
		if (memAddress)
			break;				/* successful create and attach */

		/* Check shared memory and possibly remove and recreate */

		/*
		 * shmget() failure is typically EACCES, hence SHMSTATE_FOREIGN.
		 * ENOENT, a narrow possibility, implies SHMSTATE_ENOENT, but one can
		 * safely treat SHMSTATE_ENOENT like SHMSTATE_FOREIGN.
		 */
		shmid = FUNC17(NextShmemSegID, sizeof(PGShmemHeader), 0);
		if (shmid < 0)
		{
			oldhdr = NULL;
			state = SHMSTATE_FOREIGN;
		}
		else
			state = FUNC4(shmid, NULL, &oldhdr);

		switch (state)
		{
			case SHMSTATE_ANALYSIS_FAILURE:
			case SHMSTATE_ATTACHED:
				FUNC7(FATAL,
						(FUNC8(ERRCODE_LOCK_FILE_EXISTS),
						 FUNC11("pre-existing shared memory block (key %lu, ID %lu) is still in use",
								(unsigned long) NextShmemSegID,
								(unsigned long) shmid),
						 FUNC10("Terminate any old server processes associated with data directory \"%s\".",
								 DataDir)));
				break;
			case SHMSTATE_ENOENT:

				/*
				 * To our surprise, some other process deleted since our last
				 * InternalIpcMemoryCreate().  Moments earlier, we would have
				 * seen SHMSTATE_FOREIGN.  Try that same ID again.
				 */
				FUNC6(LOG,
					 "shared memory block (key %lu, ID %lu) deleted during startup",
					 (unsigned long) NextShmemSegID,
					 (unsigned long) shmid);
				break;
			case SHMSTATE_FOREIGN:
				NextShmemSegID++;
				break;
			case SHMSTATE_UNATTACHED:

				/*
				 * The segment pertains to DataDir, and every process that had
				 * used it has died or detached.  Zap it, if possible, and any
				 * associated dynamic shared memory segments, as well.  This
				 * shouldn't fail, but if it does, assume the segment belongs
				 * to someone else after all, and try the next candidate.
				 * Otherwise, try again to create the segment.  That may fail
				 * if some other process creates the same shmem key before we
				 * do, in which case we'll try the next key.
				 */
				if (oldhdr->dsm_control != 0)
					FUNC5(oldhdr->dsm_control);
				if (FUNC15(shmid, IPC_RMID, NULL) < 0)
					NextShmemSegID++;
				break;
		}

		if (oldhdr && FUNC16(oldhdr) < 0)
			FUNC6(LOG, "shmdt(%p) failed: %m", oldhdr);
	}

	/* Initialize new segment. */
	hdr = (PGShmemHeader *) memAddress;
	hdr->creatorPID = FUNC12();
	hdr->magic = PGShmemMagic;
	hdr->dsm_control = 0;

	/* Fill in the data directory ID info, too */
	hdr->device = statbuf.st_dev;
	hdr->inode = statbuf.st_ino;

	/*
	 * Initialize space allocation status for segment.
	 */
	hdr->totalsize = size;
	hdr->freeoffset = FUNC3(sizeof(PGShmemHeader));
	*shim = hdr;

	/* Save info for possible future use */
	UsedShmemSegAddr = memAddress;
	UsedShmemSegID = (unsigned long) NextShmemSegID;

	/*
	 * If AnonymousShmem is NULL here, then we're not using anonymous shared
	 * memory, and should return a pointer to the System V shared memory
	 * block. Otherwise, the System V shared memory block is only a shim, and
	 * we must return a pointer to the real block.
	 */
	if (AnonymousShmem == NULL)
		return hdr;
	FUNC13(AnonymousShmem, hdr, sizeof(PGShmemHeader));
	return (PGShmemHeader *) AnonymousShmem;
}