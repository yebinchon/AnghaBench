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
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  MEM_RESERVE ; 
 int /*<<< orphan*/  PAGE_NOACCESS ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 scalar_t__ PROTECTIVE_REGION_SIZE ; 
 void* ShmemProtectiveRegion ; 
 void* UsedShmemSegAddr ; 
 scalar_t__ UsedShmemSegSize ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,void*,void*,...) ; 

int
FUNC4(HANDLE hChild)
{
	void	   *address;

	FUNC0(ShmemProtectiveRegion != NULL);
	FUNC0(UsedShmemSegAddr != NULL);
	FUNC0(UsedShmemSegSize != 0);

	/* ShmemProtectiveRegion */
	address = FUNC2(hChild, ShmemProtectiveRegion,
							 PROTECTIVE_REGION_SIZE,
							 MEM_RESERVE, PAGE_NOACCESS);
	if (address == NULL)
	{
		/* Don't use FATAL since we're running in the postmaster */
		FUNC3(LOG, "could not reserve shared memory region (addr=%p) for child %p: error code %lu",
			 ShmemProtectiveRegion, hChild, FUNC1());
		return false;
	}
	if (address != ShmemProtectiveRegion)
	{
		/*
		 * Should never happen - in theory if allocation granularity causes
		 * strange effects it could, so check just in case.
		 *
		 * Don't use FATAL since we're running in the postmaster.
		 */
		FUNC3(LOG, "reserved shared memory region got incorrect address %p, expected %p",
			 address, ShmemProtectiveRegion);
		return false;
	}

	/* UsedShmemSegAddr */
	address = FUNC2(hChild, UsedShmemSegAddr, UsedShmemSegSize,
							 MEM_RESERVE, PAGE_READWRITE);
	if (address == NULL)
	{
		FUNC3(LOG, "could not reserve shared memory region (addr=%p) for child %p: error code %lu",
			 UsedShmemSegAddr, hChild, FUNC1());
		return false;
	}
	if (address != UsedShmemSegAddr)
	{
		FUNC3(LOG, "reserved shared memory region got incorrect address %p, expected %p",
			 address, UsedShmemSegAddr);
		return false;
	}

	return true;
}