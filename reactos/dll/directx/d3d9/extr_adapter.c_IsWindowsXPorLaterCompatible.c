
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwOSVersionInfoSize; int dwMajorVersion; int dwMinorVersion; } ;
typedef TYPE_1__ OSVERSIONINFOA ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ GetVersionExA (TYPE_1__*) ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static BOOL IsWindowsXPorLaterCompatible()
{
    OSVERSIONINFOA osvi;

    ZeroMemory(&osvi, sizeof(OSVERSIONINFOA));
    osvi.dwOSVersionInfoSize = sizeof(OSVERSIONINFOA);

    if (GetVersionExA(&osvi) != 0)
    {
        return ( (osvi.dwMajorVersion > 5) ||
               ( (osvi.dwMajorVersion == 5) && (osvi.dwMinorVersion >= 1) ));
    }

    return FALSE;
}
