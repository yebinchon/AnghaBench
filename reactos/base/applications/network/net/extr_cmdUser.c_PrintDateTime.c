
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_10__ {int dwHighDateTime; int dwLowDateTime; } ;
struct TYPE_8__ {int HighPart; int LowPart; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef int SYSTEMTIME ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef TYPE_3__ FILETIME ;
typedef int DWORD ;


 int ARRAYSIZE (int *) ;
 int ConPrintf (int ,char*,int *,int *) ;
 int DATE_SHORTDATE ;
 int FileTimeToLocalFileTime (TYPE_3__*,TYPE_3__*) ;
 int FileTimeToSystemTime (TYPE_3__*,int *) ;
 int GetDateFormatW (int ,int ,int *,int *,int *,int ) ;
 int GetTimeFormatW (int ,int ,int *,int *,int *,int ) ;
 int LOCALE_USER_DEFAULT ;
 int RtlSecondsSince1970ToTime (int ,TYPE_2__*) ;
 int StdOut ;
 int TIME_NOSECONDS ;

__attribute__((used)) static
VOID
PrintDateTime(DWORD dwSeconds)
{
    LARGE_INTEGER Time;
    FILETIME FileTime;
    SYSTEMTIME SystemTime;
    WCHAR DateBuffer[80];
    WCHAR TimeBuffer[80];

    RtlSecondsSince1970ToTime(dwSeconds, &Time);
    FileTime.dwLowDateTime = Time.u.LowPart;
    FileTime.dwHighDateTime = Time.u.HighPart;
    FileTimeToLocalFileTime(&FileTime, &FileTime);
    FileTimeToSystemTime(&FileTime, &SystemTime);

    GetDateFormatW(LOCALE_USER_DEFAULT,
                   DATE_SHORTDATE,
                   &SystemTime,
                   ((void*)0),
                   DateBuffer,
                   ARRAYSIZE(DateBuffer));

    GetTimeFormatW(LOCALE_USER_DEFAULT,
                   TIME_NOSECONDS,
                   &SystemTime,
                   ((void*)0),
                   TimeBuffer,
                   ARRAYSIZE(TimeBuffer));

    ConPrintf(StdOut, L"%s %s", DateBuffer, TimeBuffer);
}
