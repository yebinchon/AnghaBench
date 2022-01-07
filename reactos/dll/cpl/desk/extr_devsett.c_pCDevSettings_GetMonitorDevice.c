
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dd ;
typedef int WCHAR ;
struct TYPE_3__ {int cb; int DeviceName; } ;
typedef int * PWSTR ;
typedef TYPE_1__ DISPLAY_DEVICEW ;


 scalar_t__ EnumDisplayDevicesW (int const*,int ,TYPE_1__*,int ) ;
 int LMEM_FIXED ;
 int * LocalAlloc (int ,int) ;
 int wcscpy (int *,int ) ;
 int wcslen (int ) ;

__attribute__((used)) static PWSTR
pCDevSettings_GetMonitorDevice(const WCHAR *pszDisplayDevice)
{
    DISPLAY_DEVICEW dd;
    PWSTR str = ((void*)0);

    dd.cb = sizeof(dd);
    if (EnumDisplayDevicesW(pszDisplayDevice,
                            0,
                            &dd,
                            0))
    {
        str = LocalAlloc(LMEM_FIXED,
                         (wcslen(dd.DeviceName) + 1) * sizeof(WCHAR));
        if (str != ((void*)0))
        {
            wcscpy(str,
                   dd.DeviceName);
        }
    }

    return str;
}
