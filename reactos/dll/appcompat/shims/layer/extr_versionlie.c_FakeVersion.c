
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dwPlatformId; int wServicePackMinor; int wServicePackMajor; int szCSDVersionW; int szCSDVersionA; int dwBuildNumber; int dwMinorVersion; int dwMajorVersion; } ;
typedef TYPE_1__ VersionLieInfo ;
struct TYPE_8__ {int dwOSVersionInfoSize; scalar_t__ dwPlatformId; int wServicePackMinor; int wServicePackMajor; int szCSDVersion; int dwBuildNumber; int dwMinorVersion; int dwMajorVersion; } ;
struct TYPE_7__ {int dwOSVersionInfoSize; int wServicePackMinor; int wServicePackMajor; int szCSDVersion; } ;
typedef int OSVERSIONINFOW ;
typedef int OSVERSIONINFOEXW ;
typedef int OSVERSIONINFOEXA ;
typedef int OSVERSIONINFOA ;
typedef TYPE_2__* LPOSVERSIONINFOEXW ;
typedef TYPE_3__* LPOSVERSIONINFOEXA ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int StringCbCopyA (int ,int,int ) ;
 int StringCbCopyW (int ,int,int ) ;
 int TRUE ;
 scalar_t__ VER_PLATFORM_WIN32_WINDOWS ;

BOOL FakeVersion(LPOSVERSIONINFOEXA pResult, VersionLieInfo* pFake)
{
    if (pResult->dwOSVersionInfoSize == sizeof(OSVERSIONINFOEXA) || pResult->dwOSVersionInfoSize == sizeof(OSVERSIONINFOA) ||
        pResult->dwOSVersionInfoSize == sizeof(OSVERSIONINFOEXW) || pResult->dwOSVersionInfoSize == sizeof(OSVERSIONINFOW))
    {
        pResult->dwMajorVersion = pFake->dwMajorVersion;
        pResult->dwMinorVersion = pFake->dwMinorVersion;
        pResult->dwBuildNumber = pFake->dwBuildNumber;
        pResult->dwPlatformId = pFake->dwPlatformId;
        if (pResult->dwOSVersionInfoSize == sizeof(OSVERSIONINFOEXA) || pResult->dwOSVersionInfoSize == sizeof(OSVERSIONINFOA))
        {
            if (FAILED(StringCbCopyA(pResult->szCSDVersion, sizeof(pResult->szCSDVersion), pFake->szCSDVersionA)))
                return FALSE;
            if (pResult->dwOSVersionInfoSize == sizeof(OSVERSIONINFOEXA) && pFake->dwPlatformId != VER_PLATFORM_WIN32_WINDOWS)
            {
                pResult->wServicePackMajor = pFake->wServicePackMajor;
                pResult->wServicePackMinor = pFake->wServicePackMinor;
            }
        }
        else
        {
            LPOSVERSIONINFOEXW pResultW = (LPOSVERSIONINFOEXW)pResult;
            if (FAILED(StringCbCopyW(pResultW->szCSDVersion, sizeof(pResultW->szCSDVersion), pFake->szCSDVersionW)))
                return FALSE;
            if (pResultW->dwOSVersionInfoSize == sizeof(OSVERSIONINFOEXW) && pFake->dwPlatformId != VER_PLATFORM_WIN32_WINDOWS)
            {
                pResultW->wServicePackMajor = pFake->wServicePackMajor;
                pResultW->wServicePackMinor = pFake->wServicePackMinor;
            }
        }
        return TRUE;
    }
    return FALSE;
}
