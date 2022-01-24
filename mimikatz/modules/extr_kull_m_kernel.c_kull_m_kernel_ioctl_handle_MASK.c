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
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int* PDWORD ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 

BOOL FUNC5(HANDLE hDriver, DWORD ioctlCode, PVOID bufferIn, DWORD szBufferIn, PVOID * pBufferOut, PDWORD pSzBufferOut, BOOL autobuffer)
{
	BOOL status = FALSE;
	DWORD lStatus = ERROR_MORE_DATA, returned;

	if(!autobuffer)
	{
		status = FUNC0(hDriver, ioctlCode, bufferIn, szBufferIn, pBufferOut ? *pBufferOut : NULL, pSzBufferOut ? *pSzBufferOut : 0, &returned, NULL);
	}
	else
	{
		for(*pSzBufferOut = 0x10000; (lStatus == ERROR_MORE_DATA) && (*pBufferOut = FUNC2(LPTR, *pSzBufferOut)) ; *pSzBufferOut <<= 1)
		{
			if((status = FUNC0(hDriver, ioctlCode, bufferIn, szBufferIn, *pBufferOut, *pSzBufferOut, &returned, NULL)))
			{
				lStatus = ERROR_SUCCESS;
			}
			else
			{
				lStatus = FUNC1();
				if(lStatus == ERROR_MORE_DATA)
					FUNC3(*pBufferOut);
			}
		}
	}
	if(!status)
	{
		FUNC4(L"DeviceIoControl (0x%08x) : 0x%08x\n", ioctlCode, FUNC1());
		if(autobuffer)
			FUNC3(*pBufferOut);
	}
	else if(pSzBufferOut)
		*pSzBufferOut = returned;
	return status;
}