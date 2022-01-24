#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Size ;
typedef  scalar_t__ IpcMemoryKey ;
typedef  scalar_t__ IpcMemoryId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EACCES ; 
 int EEXIST ; 
 int EIDRM ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FATAL ; 
 int IPCProtection ; 
 int IPC_CREAT ; 
 int IPC_EXCL ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IpcMemoryDelete ; 
 int /*<<< orphan*/  IpcMemoryDetach ; 
 int /*<<< orphan*/  LOCK_FILE_LINE_SHMEM_KEY ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  PG_SHMAT_FLAGS ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,void*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int errno ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC14 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC15(IpcMemoryKey memKey, Size size)
{
	IpcMemoryId shmid;
	void	   *requestedAddress = NULL;
	void	   *memAddress;

	/*
	 * Normally we just pass requestedAddress = NULL to shmat(), allowing the
	 * system to choose where the segment gets mapped.  But in an EXEC_BACKEND
	 * build, it's possible for whatever is chosen in the postmaster to not
	 * work for backends, due to variations in address space layout.  As a
	 * rather klugy workaround, allow the user to specify the address to use
	 * via setting the environment variable PG_SHMEM_ADDR.  (If this were of
	 * interest for anything except debugging, we'd probably create a cleaner
	 * and better-documented way to set it, such as a GUC.)
	 */
#ifdef EXEC_BACKEND
	{
		char	   *pg_shmem_addr = getenv("PG_SHMEM_ADDR");

		if (pg_shmem_addr)
			requestedAddress = (void *) strtoul(pg_shmem_addr, NULL, 0);
	}
#endif

	shmid = FUNC12(memKey, size, IPC_CREAT | IPC_EXCL | IPCProtection);

	if (shmid < 0)
	{
		int			shmget_errno = errno;

		/*
		 * Fail quietly if error indicates a collision with existing segment.
		 * One would expect EEXIST, given that we said IPC_EXCL, but perhaps
		 * we could get a permission violation instead?  Also, EIDRM might
		 * occur if an old seg is slated for destruction but not gone yet.
		 */
		if (shmget_errno == EEXIST || shmget_errno == EACCES
#ifdef EIDRM
			|| shmget_errno == EIDRM
#endif
			)
			return NULL;

		/*
		 * Some BSD-derived kernels are known to return EINVAL, not EEXIST, if
		 * there is an existing segment but it's smaller than "size" (this is
		 * a result of poorly-thought-out ordering of error tests). To
		 * distinguish between collision and invalid size in such cases, we
		 * make a second try with size = 0.  These kernels do not test size
		 * against SHMMIN in the preexisting-segment case, so we will not get
		 * EINVAL a second time if there is such a segment.
		 */
		if (shmget_errno == EINVAL)
		{
			shmid = FUNC12(memKey, 0, IPC_CREAT | IPC_EXCL | IPCProtection);

			if (shmid < 0)
			{
				/* As above, fail quietly if we verify a collision */
				if (errno == EEXIST || errno == EACCES
#ifdef EIDRM
					|| errno == EIDRM
#endif
					)
					return NULL;
				/* Otherwise, fall through to report the original error */
			}
			else
			{
				/*
				 * On most platforms we cannot get here because SHMMIN is
				 * greater than zero.  However, if we do succeed in creating a
				 * zero-size segment, free it and then fall through to report
				 * the original error.
				 */
				if (FUNC11(shmid, IPC_RMID, NULL) < 0)
					FUNC3(LOG, "shmctl(%d, %d, 0) failed: %m",
						 (int) shmid, IPC_RMID);
			}
		}

		/*
		 * Else complain and abort.
		 *
		 * Note: at this point EINVAL should mean that either SHMMIN or SHMMAX
		 * is violated.  SHMALL violation might be reported as either ENOMEM
		 * (BSDen) or ENOSPC (Linux); the Single Unix Spec fails to say which
		 * it should be.  SHMMNI violation is ENOSPC, per spec.  Just plain
		 * not-enough-RAM is ENOMEM.
		 */
		errno = shmget_errno;
		FUNC4(FATAL,
				(FUNC7("could not create shared memory segment: %m"),
				 FUNC5("Failed system call was shmget(key=%lu, size=%zu, 0%o).",
						   (unsigned long) memKey, size,
						   IPC_CREAT | IPC_EXCL | IPCProtection),
				 (shmget_errno == EINVAL) ?
				 FUNC6("This error usually means that PostgreSQL's request for a shared memory "
						 "segment exceeded your kernel's SHMMAX parameter, or possibly that "
						 "it is less than "
						 "your kernel's SHMMIN parameter.\n"
						 "The PostgreSQL documentation contains more information about shared "
						 "memory configuration.") : 0,
				 (shmget_errno == ENOMEM) ?
				 FUNC6("This error usually means that PostgreSQL's request for a shared "
						 "memory segment exceeded your kernel's SHMALL parameter.  You might need "
						 "to reconfigure the kernel with larger SHMALL.\n"
						 "The PostgreSQL documentation contains more information about shared "
						 "memory configuration.") : 0,
				 (shmget_errno == ENOSPC) ?
				 FUNC6("This error does *not* mean that you have run out of disk space.  "
						 "It occurs either if all available shared memory IDs have been taken, "
						 "in which case you need to raise the SHMMNI parameter in your kernel, "
						 "or because the system's overall limit for shared memory has been "
						 "reached.\n"
						 "The PostgreSQL documentation contains more information about shared "
						 "memory configuration.") : 0));
	}

	/* Register on-exit routine to delete the new segment */
	FUNC9(IpcMemoryDelete, FUNC1(shmid));

	/* OK, should be able to attach to the segment */
	memAddress = FUNC10(shmid, requestedAddress, PG_SHMAT_FLAGS);

	if (memAddress == (void *) -1)
		FUNC3(FATAL, "shmat(id=%d, addr=%p, flags=0x%x) failed: %m",
			 shmid, requestedAddress, PG_SHMAT_FLAGS);

	/* Register on-exit routine to detach new segment before deleting */
	FUNC9(IpcMemoryDetach, FUNC2(memAddress));

	/*
	 * Store shmem key and ID in data directory lockfile.  Format to try to
	 * keep it the same length always (trailing junk in the lockfile won't
	 * hurt, but might confuse humans).
	 */
	{
		char		line[64];

		FUNC13(line, "%9lu %9lu",
				(unsigned long) memKey, (unsigned long) shmid);
		FUNC0(LOCK_FILE_LINE_SHMEM_KEY, line);
	}

	return memAddress;
}