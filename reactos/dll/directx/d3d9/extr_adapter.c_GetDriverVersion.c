
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwFileVersionLS; int dwFileVersionMS; } ;
typedef TYPE_2__ VS_FIXEDFILEINFO ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int LowPart; int HighPart; } ;
struct TYPE_7__ {TYPE_1__ DriverVersion; int Driver; } ;
typedef int PVOID ;
typedef int LPVOID ;
typedef int (* LPFN_REVERTWOW64FSREDIRECTION ) (int *) ;
typedef int (* LPFN_ISWOW64PROCESS ) (int ,scalar_t__*) ;
typedef int (* LPFN_DISABLEWOW64FSREDIRECTION ) (int *) ;
typedef int LPDISPLAY_DEVICEA ;
typedef int HMODULE ;
typedef TYPE_3__ D3DADAPTER_IDENTIFIER9 ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetFileVersionInfoA (int ,int ,scalar_t__,int ) ;
 scalar_t__ GetFileVersionInfoSizeA (int ,int *) ;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int ) ;
 scalar_t__ TRUE ;
 scalar_t__ VerQueryValueA (int ,char*,int *,scalar_t__*) ;

__attribute__((used)) static void GetDriverVersion(LPDISPLAY_DEVICEA pDisplayDevice, D3DADAPTER_IDENTIFIER9* pIdentifier)
{
    HMODULE hModule;
    LPFN_ISWOW64PROCESS fnIsWow64Process;
    BOOL bIsWow64 = FALSE;
    PVOID OldWow64RedirectValue;
    UINT DriverFileSize;

    hModule = GetModuleHandleA("KERNEL32");
    fnIsWow64Process = (LPFN_ISWOW64PROCESS)GetProcAddress(hModule, "IsWow64Process");
    if (fnIsWow64Process)
    {
        fnIsWow64Process(GetCurrentProcess(), &bIsWow64);
        if (bIsWow64)
        {
            LPFN_DISABLEWOW64FSREDIRECTION fnDisableWow64FsRedirection;
            fnDisableWow64FsRedirection = (LPFN_DISABLEWOW64FSREDIRECTION)GetProcAddress(hModule, "Wow64DisableWow64FsRedirection");
            fnDisableWow64FsRedirection(&OldWow64RedirectValue);
        }
    }

    DriverFileSize = GetFileVersionInfoSizeA(pIdentifier->Driver, ((void*)0));
    if (DriverFileSize > 0)
    {
        VS_FIXEDFILEINFO* FixedFileInfo = ((void*)0);
        LPVOID pBlock = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, DriverFileSize);

        if (TRUE == GetFileVersionInfoA(pIdentifier->Driver, 0, DriverFileSize, pBlock))
        {
            if (TRUE == VerQueryValueA(pBlock, "\\", (LPVOID*)&FixedFileInfo, &DriverFileSize))
            {
                pIdentifier->DriverVersion.HighPart = FixedFileInfo->dwFileVersionMS;
                pIdentifier->DriverVersion.LowPart = FixedFileInfo->dwFileVersionLS;
            }
        }

        HeapFree(GetProcessHeap(), 0, pBlock);
    }

    if (bIsWow64)
    {
        LPFN_REVERTWOW64FSREDIRECTION fnRevertWow64FsRedirection;
        fnRevertWow64FsRedirection = (LPFN_REVERTWOW64FSREDIRECTION)GetProcAddress(hModule, "Wow64RevertWow64FsRedirection");
        fnRevertWow64FsRedirection(&OldWow64RedirectValue);
    }
}
