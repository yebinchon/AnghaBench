#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ ULONG ;
struct TYPE_3__ {scalar_t__* MappedId; int /*<<< orphan*/  DevicePath; } ;
typedef  TYPE_1__* LPFILTERINFO ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  DRV_QUERYDEVICEINTERFACE ; 
 int /*<<< orphan*/  DRV_QUERYDEVICEINTERFACESIZE ; 
 int MAX_PATH ; 
 scalar_t__ MMSYSERR_NOERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

BOOL
FUNC9(
    LPFILTERINFO CurInfo,
    BOOL bRecord)
{
    ULONG DeviceCount, Index;
    WCHAR Buffer[MAX_PATH];
    DWORD Size, dwResult;

    if (bRecord)
        DeviceCount = FUNC4();
    else
        DeviceCount = FUNC6();

    /* sanity check */
    //ASSERT(DeviceCount);

    for(Index = 0; Index < DeviceCount; Index++)
    {
        Size = 0;

        /* query device interface size */
        if (bRecord)
            dwResult = FUNC5(FUNC3(Index), DRV_QUERYDEVICEINTERFACESIZE, (DWORD_PTR)&Size, 0);
        else
            dwResult = FUNC7(FUNC3(Index), DRV_QUERYDEVICEINTERFACESIZE, (DWORD_PTR)&Size, 0);

        if (dwResult != MMSYSERR_NOERROR)
        {
            FUNC1("Failed DRV_QUERYDEVICEINTERFACESIZE with %lx bRecord %u Index %u\n", dwResult, bRecord, Index);
            continue;
        }

        /* sanity check */
        FUNC0(Size < MAX_PATH);

        /* now get the device interface string */
        if (bRecord)
            dwResult = FUNC5(FUNC3(Index), DRV_QUERYDEVICEINTERFACE, (DWORD_PTR)Buffer, MAX_PATH);
        else
            dwResult = FUNC7(FUNC3(Index), DRV_QUERYDEVICEINTERFACE, (DWORD_PTR)Buffer, MAX_PATH);

        if (dwResult != MMSYSERR_NOERROR)
        {
            FUNC1("Failed DRV_QUERYDEVICEINTERFACE with %lx bRecord %u Index %u\n", dwResult, bRecord, Index);
            continue;
        }

        if (!FUNC8(CurInfo->DevicePath, Buffer))
        {
            if (bRecord)
                CurInfo->MappedId[0] = Index;
            else
                CurInfo->MappedId[1] = Index;

            return TRUE;
        }
    }

    FUNC2("Failed to find device %ws bRecord %u Count %u\n", CurInfo->DevicePath, bRecord, DeviceCount);

    // HACK
    if (bRecord)
        CurInfo->MappedId[0] = 0;
    else
        CurInfo->MappedId[1] = 0;


    return TRUE;
}