
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int DaylightName; int StandardName; } ;
typedef TYPE_1__ TIME_ZONE_INFORMATION ;
typedef int NTSTATUS ;
typedef int FILETIME ;
typedef scalar_t__ DWORD ;


 int GetSystemTimeAsFileTime (int *) ;
 scalar_t__ GetTimeZoneInformation (TYPE_1__*) ;
 int STATUS_SUCCESS ;
 scalar_t__ TIME_ZONE_ID_INVALID ;
 scalar_t__ TIME_ZONE_ID_STANDARD ;
 scalar_t__ TIME_ZONE_ID_UNKNOWN ;
 int kprintf (char*,...) ;
 int kull_m_string_displayFileTime (int *) ;
 int kull_m_string_displayLocalFileTime (int *) ;

NTSTATUS kuhl_m_standard_localtime(int argc, wchar_t * argv[])
{
 FILETIME ft;
 TIME_ZONE_INFORMATION tzi;
 DWORD dwTzi;
 GetSystemTimeAsFileTime(&ft);
 dwTzi = GetTimeZoneInformation(&tzi);
 kprintf(L"Local: "); kull_m_string_displayLocalFileTime(&ft); kprintf(L"\n");
 if(dwTzi != TIME_ZONE_ID_INVALID && dwTzi != TIME_ZONE_ID_UNKNOWN)
  kprintf(L"Zone : %.32s\n", (dwTzi == TIME_ZONE_ID_STANDARD) ? tzi.StandardName : tzi.DaylightName);
 kprintf(L"UTC  : "); kull_m_string_displayFileTime(&ft); kprintf(L"\n");
 return STATUS_SUCCESS;
}
