#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int totalsize; int freeoffset; scalar_t__ dsm_control; int /*<<< orphan*/  magic; int /*<<< orphan*/  creatorPID; } ;
typedef  int Size ;
typedef  int SIZE_T ;
typedef  TYPE_1__ PGShmemHeader ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int,char*) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  DUPLICATE_SAME_ACCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int ERROR_ALREADY_EXISTS ; 
 int ERROR_NO_SYSTEM_RESOURCES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FATAL ; 
 int FILE_MAP_READ ; 
 int FILE_MAP_WRITE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 char* FUNC8 () ; 
 scalar_t__ HUGE_PAGES_ON ; 
 scalar_t__ HUGE_PAGES_TRY ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  LOG ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  MEM_RESERVE ; 
 void* FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_NOACCESS ; 
 int PAGE_READWRITE ; 
 int /*<<< orphan*/  PGShmemMagic ; 
 int /*<<< orphan*/  PROTECTIVE_REGION_SIZE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int SEC_COMMIT ; 
 int SEC_LARGE_PAGES ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ShmemProtectiveRegion ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * UsedShmemSegAddr ; 
 int /*<<< orphan*/ * UsedShmemSegID ; 
 int UsedShmemSegSize ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 scalar_t__ huge_pages ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pgwin32_SharedMemoryDelete ; 

PGShmemHeader *
FUNC24(Size size,
					 PGShmemHeader **shim)
{
	void	   *memAddress;
	PGShmemHeader *hdr;
	HANDLE		hmap,
				hmap2;
	char	   *szShareMem;
	int			i;
	DWORD		size_high;
	DWORD		size_low;
	SIZE_T		largePageSize = 0;
	Size		orig_size = size;
	DWORD		flProtect = PAGE_READWRITE;

	ShmemProtectiveRegion = FUNC14(NULL, PROTECTIVE_REGION_SIZE,
										 MEM_RESERVE, PAGE_NOACCESS);
	if (ShmemProtectiveRegion == NULL)
		FUNC15(FATAL, "could not reserve memory region: error code %lu",
			 FUNC7());

	/* Room for a header? */
	FUNC0(size > FUNC9(sizeof(PGShmemHeader)));

	szShareMem = FUNC8();

	UsedShmemSegAddr = NULL;

	if (huge_pages == HUGE_PAGES_ON || huge_pages == HUGE_PAGES_TRY)
	{
		/* Does the processor support large pages? */
		largePageSize = FUNC6();
		if (largePageSize == 0)
		{
			FUNC16(huge_pages == HUGE_PAGES_ON ? FATAL : DEBUG1,
					(FUNC17(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC20("the processor does not support large pages")));
			FUNC16(DEBUG1,
					(FUNC20("disabling huge pages")));
		}
		else if (!FUNC4(huge_pages == HUGE_PAGES_ON ? FATAL : DEBUG1))
		{
			FUNC16(DEBUG1,
					(FUNC20("disabling huge pages")));
		}
		else
		{
			/* Huge pages available and privilege enabled, so turn on */
			flProtect = PAGE_READWRITE | SEC_COMMIT | SEC_LARGE_PAGES;

			/* Round size up as appropriate. */
			if (size % largePageSize != 0)
				size += largePageSize - (size % largePageSize);
		}
	}

retry:
#ifdef _WIN64
	size_high = size >> 32;
#else
	size_high = 0;
#endif
	size_low = (DWORD) size;

	/*
	 * When recycling a shared memory segment, it may take a short while
	 * before it gets dropped from the global namespace. So re-try after
	 * sleeping for a second, and continue retrying 10 times. (both the 1
	 * second time and the 10 retries are completely arbitrary)
	 */
	for (i = 0; i < 10; i++)
	{
		/*
		 * In case CreateFileMapping() doesn't set the error code to 0 on
		 * success
		 */
		FUNC12(0);

		hmap = FUNC2(INVALID_HANDLE_VALUE,	/* Use the pagefile */
								 NULL,	/* Default security attrs */
								 flProtect,
								 size_high, /* Size Upper 32 Bits	*/
								 size_low,	/* Size Lower 32 bits */
								 szShareMem);

		if (!hmap)
		{
			if (FUNC7() == ERROR_NO_SYSTEM_RESOURCES &&
				huge_pages == HUGE_PAGES_TRY &&
				(flProtect & SEC_LARGE_PAGES) != 0)
			{
				FUNC15(DEBUG1, "CreateFileMapping(%zu) with SEC_LARGE_PAGES failed, "
					 "huge pages disabled",
					 size);

				/*
				 * Use the original size, not the rounded-up value, when
				 * falling back to non-huge pages.
				 */
				size = orig_size;
				flProtect = PAGE_READWRITE;
				goto retry;
			}
			else
				FUNC16(FATAL,
						(FUNC20("could not create shared memory segment: error code %lu", FUNC7()),
						 FUNC18("Failed system call was CreateFileMapping(size=%zu, name=%s).",
								   size, szShareMem)));
		}

		/*
		 * If the segment already existed, CreateFileMapping() will return a
		 * handle to the existing one and set ERROR_ALREADY_EXISTS.
		 */
		if (FUNC7() == ERROR_ALREADY_EXISTS)
		{
			FUNC1(hmap);	/* Close the handle, since we got a valid one
								 * to the previous segment. */
			hmap = NULL;
			FUNC13(1000);
			continue;
		}
		break;
	}

	/*
	 * If the last call in the loop still returned ERROR_ALREADY_EXISTS, this
	 * shared memory segment exists and we assume it belongs to somebody else.
	 */
	if (!hmap)
		FUNC16(FATAL,
				(FUNC20("pre-existing shared memory block is still in use"),
				 FUNC19("Check if there are any old server processes still running, and terminate them.")));

	FUNC21(szShareMem);

	/*
	 * Make the handle inheritable
	 */
	if (!FUNC3(FUNC5(), hmap, FUNC5(), &hmap2, 0, TRUE, DUPLICATE_SAME_ACCESS))
		FUNC16(FATAL,
				(FUNC20("could not create shared memory segment: error code %lu", FUNC7()),
				 FUNC18("Failed system call was DuplicateHandle.")));

	/*
	 * Close the old, non-inheritable handle. If this fails we don't really
	 * care.
	 */
	if (!FUNC1(hmap))
		FUNC15(LOG, "could not close handle to shared memory: error code %lu", FUNC7());


	/*
	 * Get a pointer to the new shared memory segment. Map the whole segment
	 * at once, and let the system decide on the initial address.
	 */
	memAddress = FUNC10(hmap2, FILE_MAP_WRITE | FILE_MAP_READ, 0, 0, 0, NULL);
	if (!memAddress)
		FUNC16(FATAL,
				(FUNC20("could not create shared memory segment: error code %lu", FUNC7()),
				 FUNC18("Failed system call was MapViewOfFileEx.")));



	/*
	 * OK, we created a new segment.  Mark it as created by this process. The
	 * order of assignments here is critical so that another Postgres process
	 * can't see the header as valid but belonging to an invalid PID!
	 */
	hdr = (PGShmemHeader *) memAddress;
	hdr->creatorPID = FUNC22();
	hdr->magic = PGShmemMagic;

	/*
	 * Initialize space allocation status for segment.
	 */
	hdr->totalsize = size;
	hdr->freeoffset = FUNC9(sizeof(PGShmemHeader));
	hdr->dsm_control = 0;

	/* Save info for possible future use */
	UsedShmemSegAddr = memAddress;
	UsedShmemSegSize = size;
	UsedShmemSegID = hmap2;

	/* Register on-exit routine to delete the new segment */
	FUNC23(pgwin32_SharedMemoryDelete, FUNC11(hmap2));

	*shim = hdr;
	return hdr;
}