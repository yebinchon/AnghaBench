#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dwFileVersionLS; int /*<<< orphan*/  dwFileVersionMS; } ;
typedef  TYPE_2__ VS_FIXEDFILEINFO ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {int /*<<< orphan*/  LowPart; int /*<<< orphan*/  HighPart; } ;
struct TYPE_7__ {TYPE_1__ DriverVersion; int /*<<< orphan*/  Driver; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  (* LPFN_REVERTWOW64FSREDIRECTION ) (int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  (* LPFN_ISWOW64PROCESS ) (int /*<<< orphan*/ ,scalar_t__*) ;
typedef  int /*<<< orphan*/  (* LPFN_DISABLEWOW64FSREDIRECTION ) (int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  LPDISPLAY_DEVICEA ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  TYPE_3__ D3DADAPTER_IDENTIFIER9 ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static void FUNC9(LPDISPLAY_DEVICEA pDisplayDevice, D3DADAPTER_IDENTIFIER9* pIdentifier)
{
    HMODULE hModule;
    LPFN_ISWOW64PROCESS fnIsWow64Process;
    BOOL bIsWow64 = FALSE;
    PVOID OldWow64RedirectValue;
    UINT DriverFileSize;

    hModule = FUNC3("KERNEL32");
    fnIsWow64Process = (LPFN_ISWOW64PROCESS)FUNC4(hModule, "IsWow64Process");
    if (fnIsWow64Process)
    {
        fnIsWow64Process(FUNC0(), &bIsWow64);
        if (bIsWow64)
        {
            LPFN_DISABLEWOW64FSREDIRECTION fnDisableWow64FsRedirection;
            fnDisableWow64FsRedirection = (LPFN_DISABLEWOW64FSREDIRECTION)FUNC4(hModule, "Wow64DisableWow64FsRedirection");
            fnDisableWow64FsRedirection(&OldWow64RedirectValue);
        }
    }

    DriverFileSize = FUNC2(pIdentifier->Driver, NULL);
    if (DriverFileSize > 0)
    {
        VS_FIXEDFILEINFO* FixedFileInfo = NULL;
        LPVOID pBlock = FUNC6(FUNC5(), HEAP_ZERO_MEMORY, DriverFileSize);

        if (TRUE == FUNC1(pIdentifier->Driver, 0, DriverFileSize, pBlock))
        {
            if (TRUE == FUNC8(pBlock, "\\", (LPVOID*)&FixedFileInfo, &DriverFileSize))
            {
                pIdentifier->DriverVersion.HighPart = FixedFileInfo->dwFileVersionMS;
                pIdentifier->DriverVersion.LowPart = FixedFileInfo->dwFileVersionLS;
            }
        }

        FUNC7(FUNC5(), 0, pBlock);
    }

    if (bIsWow64)
    {
        LPFN_REVERTWOW64FSREDIRECTION fnRevertWow64FsRedirection;
        fnRevertWow64FsRedirection = (LPFN_REVERTWOW64FSREDIRECTION)FUNC4(hModule, "Wow64RevertWow64FsRedirection");
        fnRevertWow64FsRedirection(&OldWow64RedirectValue);
    }
}