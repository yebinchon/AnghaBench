
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int Offset; int OffsetHigh; scalar_t__ hEvent; } ;
typedef int OVERLAPPED ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ARRAYSIZE (int ) ;
 scalar_t__ CreateEvent (int *,scalar_t__,scalar_t__,int *) ;
 int DeleteFileW (int ) ;
 scalar_t__ ERROR_IO_PENDING ;
 scalar_t__ FALSE ;
 int GetEnvironmentVariableW (char*,int ,int ) ;
 scalar_t__ GetLastError () ;
 int LOG_ERROR ;
 int LOG_EVENTLOG ;
 int LogToEventLog (char*,scalar_t__,int ,int) ;
 scalar_t__ OpenLogFile () ;
 int StringCchCatW (int ,int ,char*) ;
 int StringCchCopyW (int ,int ,char*) ;
 scalar_t__ TRUE ;
 scalar_t__ WriteFile (int ,int*,int,int *,TYPE_1__*) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int hLogFile ;
 TYPE_1__ olWrite ;
 int szLogFileName ;

BOOL
InitLogging()
{
    return TRUE;

}
