
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int WORD ;
struct TYPE_7__ {scalar_t__ tod_hunds; scalar_t__ tod_secs; scalar_t__ tod_mins; scalar_t__ tod_hours; scalar_t__ tod_day; scalar_t__ tod_weekday; scalar_t__ tod_month; scalar_t__ tod_year; } ;
struct TYPE_6__ {int wYear; int wMonth; int wDayOfWeek; int wDay; int wHour; int wMinute; int wSecond; int wMilliseconds; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef TYPE_2__* PTIME_OF_DAY_INFO ;
typedef int NTSTATUS ;
typedef scalar_t__ NET_API_STATUS ;
typedef int FILETIME ;


 scalar_t__ NERR_Success ;
 int NetApiBufferFree (TYPE_2__*) ;
 scalar_t__ NetRemoteTOD (int *,TYPE_2__**) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 int STATUS_SUCCESS ;
 int SystemTimeToFileTime (TYPE_1__*,int *) ;
 int kprintf (char*) ;
 int kull_m_string_displayLocalFileTime (int *) ;

NTSTATUS kuhl_m_net_tod(int argc, wchar_t * argv[])
{
 NET_API_STATUS nStatus;
 PTIME_OF_DAY_INFO info = ((void*)0);
 SYSTEMTIME st;
 FILETIME ft;

 nStatus = NetRemoteTOD(argc ? argv[0] : ((void*)0), &info);
 if(nStatus == NERR_Success)
 {
  st.wYear = (WORD) info->tod_year;
  st.wMonth = (WORD) info->tod_month;
  st.wDayOfWeek = (WORD) info->tod_weekday;
  st.wDay = (WORD) info->tod_day;
  st.wHour = (WORD) info->tod_hours;
  st.wMinute = (WORD) info->tod_mins;
  st.wSecond = (WORD) info->tod_secs;
  st.wMilliseconds = (WORD) info->tod_hunds * 10;
  SystemTimeToFileTime(&st, &ft);

  kprintf(L"Remote time (local): ");
  kull_m_string_displayLocalFileTime(&ft);
  kprintf(L"\n");




  NetApiBufferFree(info);
 }
 else PRINT_ERROR(L"NetRemoteTOD: %08x\n", nStatus);
 return STATUS_SUCCESS;
}
