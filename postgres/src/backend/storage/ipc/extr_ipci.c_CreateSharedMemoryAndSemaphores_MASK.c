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
typedef  int Size ;
typedef  int /*<<< orphan*/  ShmemIndexEnt ;
typedef  int /*<<< orphan*/  PGShmemHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  DEBUG3 ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int FUNC29 () ; 
 int FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int FUNC32 () ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int FUNC34 (int) ; 
 int /*<<< orphan*/ * FUNC35 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int FUNC37 () ; 
 int FUNC38 () ; 
 int FUNC39 () ; 
 int FUNC40 () ; 
 int FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 () ; 
 int FUNC45 () ; 
 int /*<<< orphan*/  FUNC46 () ; 
 int FUNC47 () ; 
 int /*<<< orphan*/  SHMEM_INDEX_SIZE ; 
 int FUNC48 () ; 
 int /*<<< orphan*/  FUNC49 () ; 
 int FUNC50 () ; 
 int /*<<< orphan*/  FUNC51 () ; 
 int FUNC52 () ; 
 int /*<<< orphan*/  FUNC53 () ; 
 int FUNC54 () ; 
 int /*<<< orphan*/  FUNC55 () ; 
 int FUNC56 () ; 
 scalar_t__ FUNC57 () ; 
 int /*<<< orphan*/  FUNC58 () ; 
 int FUNC59 () ; 
 int /*<<< orphan*/  FUNC60 () ; 
 int FUNC61 () ; 
 int /*<<< orphan*/  FUNC62 () ; 
 int FUNC63 () ; 
 int /*<<< orphan*/  FUNC64 () ; 
 int FUNC65 () ; 
 int /*<<< orphan*/  FUNC66 () ; 
 int FUNC67 () ; 
 int FUNC68 (int,int) ; 
 int addin_request_allowed ; 
 int /*<<< orphan*/  FUNC69 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC70 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC71 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC72 () ; 
 int total_addin_request ; 

void
FUNC73(void)
{
	PGShmemHeader *shim = NULL;

	if (!IsUnderPostmaster)
	{
		PGShmemHeader *seghdr;
		Size		size;
		int			numSemas;

		/* Compute number of semaphores we'll need */
		numSemas = FUNC40();
		numSemas += FUNC57();

		/*
		 * Size of the Postgres shared-memory block is estimated via
		 * moderately-accurate estimates for the big hogs, plus 100K for the
		 * stuff that's too small to bother with estimating.
		 *
		 * We take some care during this phase to ensure that the total size
		 * request doesn't overflow size_t.  If this gets through, we don't
		 * need to be so careful during the actual allocation phase.
		 */
		size = 100000;
		size = FUNC68(size, FUNC34(numSemas));
		size = FUNC68(size, FUNC56());
		size = FUNC68(size, FUNC71(SHMEM_INDEX_SIZE,
												 sizeof(ShmemIndexEnt)));
		size = FUNC68(size, FUNC11());
		size = FUNC68(size, FUNC30());
		size = FUNC68(size, FUNC38());
		size = FUNC68(size, FUNC41());
		size = FUNC68(size, FUNC67());
		size = FUNC68(size, FUNC13());
		size = FUNC68(size, FUNC17());
		size = FUNC68(size, FUNC50());
		size = FUNC68(size, FUNC61());
		size = FUNC68(size, FUNC10());
		size = FUNC68(size, FUNC32());
		size = FUNC68(size, FUNC29());
		size = FUNC68(size, FUNC39());
		size = FUNC68(size, FUNC8());
		size = FUNC68(size, FUNC48());
		size = FUNC68(size, FUNC37());
		size = FUNC68(size, FUNC43());
		size = FUNC68(size, FUNC15());
		size = FUNC68(size, FUNC5());
		size = FUNC68(size, FUNC47());
		size = FUNC68(size, FUNC45());
		size = FUNC68(size, FUNC65());
		size = FUNC68(size, FUNC63());
		size = FUNC68(size, FUNC1());
		size = FUNC68(size, FUNC54());
		size = FUNC68(size, FUNC7());
		size = FUNC68(size, FUNC59());
		size = FUNC68(size, FUNC3());
#ifdef EXEC_BACKEND
		size = add_size(size, ShmemBackendArraySize());
#endif

		/* freeze the addin request size and include it */
		addin_request_allowed = false;
		size = FUNC68(size, total_addin_request);

		/* might as well round it off to a multiple of a typical page size */
		size = FUNC68(size, 8192 - (size % 8192));

		FUNC70(DEBUG3, "invoking IpcMemoryCreate(size=%zu)", size);

		/*
		 * Create the shmem segment
		 */
		seghdr = FUNC35(size, &shim);

		FUNC26(seghdr);

		/*
		 * Create semaphores
		 */
		FUNC33(numSemas);

		/*
		 * If spinlocks are disabled, initialize emulation layer (which
		 * depends on semaphores, so the order is important here).
		 */
#ifndef HAVE_SPINLOCKS
		FUNC55();
#endif
	}
	else
	{
		/*
		 * We are reattaching to an existing shared memory segment. This
		 * should only be reached in the EXEC_BACKEND case.
		 */
#ifndef EXEC_BACKEND
		FUNC70(PANIC, "should be attached to shared memory already");
#endif
	}

	/*
	 * Set up shared memory allocation mechanism
	 */
	if (!IsUnderPostmaster)
		FUNC27();

	/*
	 * Now initialize LWLocks, which do shared memory allocation and are
	 * needed for InitShmemIndex.
	 */
	FUNC18();

	/*
	 * Set up shmem.c index hashtable
	 */
	FUNC28();

	/*
	 * Set up xlog, clog, and buffers
	 */
	FUNC66();
	FUNC12();
	FUNC16();
	FUNC49();
	FUNC31();
	FUNC22();

	/*
	 * Set up lock manager
	 */
	FUNC23();

	/*
	 * Set up predicate lock manager
	 */
	FUNC24();

	/*
	 * Set up process table
	 */
	if (!IsUnderPostmaster)
		FUNC25();
	FUNC21();
	FUNC19();
	FUNC60();
	FUNC9();

	/*
	 * Set up shared-inval messaging
	 */
	FUNC20();

	/*
	 * Set up interprocess signaling mechanisms
	 */
	FUNC36();
	FUNC42();
	FUNC14();
	FUNC4();
	FUNC46();
	FUNC44();
	FUNC64();
	FUNC62();
	FUNC0();

	/*
	 * Set up other modules that need some shared memory space
	 */
	FUNC53();
	FUNC6();
	FUNC58();
	FUNC2();

#ifdef EXEC_BACKEND

	/*
	 * Alloc the win32 shared backend array
	 */
	if (!IsUnderPostmaster)
		ShmemBackendArrayAllocation();
#endif

	/* Initialize dynamic shared memory facilities. */
	if (!IsUnderPostmaster)
		FUNC69(shim);

	/*
	 * Now give loadable modules a chance to set up their shmem allocations
	 */
	if (&shmem_startup_hook)
		FUNC72();
}