
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chMsg ;
typedef int WCHAR ;
typedef int VOID ;
typedef scalar_t__ LPTSTR ;
typedef scalar_t__ LPCWSTR ;
typedef int * HANDLE ;


 int DeregisterEventSource (int *) ;
 int EVENTLOG_WARNING_TYPE ;
 int GetLastError () ;
 int * RegisterEventSource (int *,int ) ;
 int ReportEvent (int *,int ,int ,int ,int *,int,int ,scalar_t__*,int *) ;
 int TEXT (char*) ;
 int _snwprintf (int *,int,char*,int) ;
 int swprintf_s (int *,int,char*,int) ;

VOID
tirpc_report(LPTSTR lpszMsg)
{
 WCHAR chMsg[256];
 HANDLE hEventSource;
 LPCWSTR lpszStrings[2];



 hEventSource = RegisterEventSource(((void*)0),
            TEXT("tirpc.dll"));


 swprintf_s(chMsg, sizeof(chMsg), L"tirpc report: %d", GetLastError());



 lpszStrings[0] = (LPCWSTR)chMsg;
 lpszStrings[1] = lpszMsg;

 if (hEventSource != ((void*)0)) {
  ReportEvent(hEventSource,
   EVENTLOG_WARNING_TYPE,
   0,
   0,
   ((void*)0),
   2,
   0,
   lpszStrings,
   ((void*)0));

  (VOID) DeregisterEventSource(hEventSource);
 }
}
