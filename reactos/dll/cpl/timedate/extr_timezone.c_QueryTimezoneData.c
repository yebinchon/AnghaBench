
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int TimezoneInfo; int DaylightName; int StandardName; int Description; } ;
typedef TYPE_1__* PTIMEZONE_ENTRY ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int ,int*) ;

__attribute__((used)) static
LONG
QueryTimezoneData(
    HKEY hZoneKey,
    PTIMEZONE_ENTRY Entry)
{
    DWORD dwValueSize;
    LONG lError;

    dwValueSize = sizeof(Entry->Description);
    lError = RegQueryValueExW(hZoneKey,
                              L"Display",
                              ((void*)0),
                              ((void*)0),
                              (LPBYTE)&Entry->Description,
                              &dwValueSize);
    if (lError != ERROR_SUCCESS)
        return lError;

    dwValueSize = sizeof(Entry->StandardName);
    lError = RegQueryValueExW(hZoneKey,
                              L"Std",
                              ((void*)0),
                              ((void*)0),
                              (LPBYTE)&Entry->StandardName,
                              &dwValueSize);
    if (lError != ERROR_SUCCESS)
        return lError;

    dwValueSize = sizeof(Entry->DaylightName);
    lError = RegQueryValueExW(hZoneKey,
                              L"Dlt",
                              ((void*)0),
                              ((void*)0),
                              (LPBYTE)&Entry->DaylightName,
                              &dwValueSize);
    if (lError != ERROR_SUCCESS)
        return lError;

    dwValueSize = sizeof(Entry->TimezoneInfo);
    lError = RegQueryValueExW(hZoneKey,
                              L"TZI",
                              ((void*)0),
                              ((void*)0),
                              (LPBYTE)&Entry->TimezoneInfo,
                              &dwValueSize);
    return lError;
}
