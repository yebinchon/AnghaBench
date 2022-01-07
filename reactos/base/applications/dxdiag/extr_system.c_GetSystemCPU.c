
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_4__ {int wProcessorArchitecture; } ;
typedef TYPE_1__ SYSTEM_INFO ;
typedef int (* ISWOW64PROC ) (int ,scalar_t__*) ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetCurrentProcess () ;
 int GetModuleHandleW (char*) ;
 int GetNativeSystemInfo (TYPE_1__*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int GetSystemInfo (TYPE_1__*) ;




 int PROCESSOR_ARCHITECTURE_UNKNOWN ;
 int wsprintfW (int *,char*) ;

VOID GetSystemCPU(WCHAR *szBuffer)
{
    SYSTEM_INFO archInfo;
    ISWOW64PROC fnIsWow64Process;
    BOOL isWow64 = FALSE;





    fnIsWow64Process = (ISWOW64PROC)GetProcAddress(
        GetModuleHandleW(L"kernel32"), "IsWow64Process");

    if (fnIsWow64Process != ((void*)0))
        fnIsWow64Process(GetCurrentProcess(), &isWow64);






    if (isWow64)
        GetNativeSystemInfo(&archInfo);
    else
        GetSystemInfo(&archInfo);


    if(archInfo.wProcessorArchitecture != PROCESSOR_ARCHITECTURE_UNKNOWN)
    {
        switch(archInfo.wProcessorArchitecture)
        {
        case 128:
        {
            wsprintfW(szBuffer, L"32-bit");
            break;
        }
        case 131:
        {
            wsprintfW(szBuffer, L"64-bit");
            break;
        }
        case 129:
        {
            wsprintfW(szBuffer, L"Itanium");
            break;
        }
        case 130:
        {
            wsprintfW(szBuffer, L"ARM");
            break;
        }
        default:break;
        }
    }
}
