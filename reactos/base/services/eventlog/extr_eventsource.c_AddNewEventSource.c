
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int EventSourceListEntry; int szName; int LogFile; } ;
typedef int PWSTR ;
typedef int PLOGFILE ;
typedef TYPE_1__* PEVENTSOURCE ;
typedef int BOOL ;


 int DPRINT (char*,int ) ;
 int EVENTSOURCE ;
 int EnterCriticalSection (int *) ;
 int EventSourceListCs ;
 int EventSourceListHead ;
 int FIELD_OFFSET (int ,int ) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int ) ;
 int InsertTailList (int *,int *) ;
 int LeaveCriticalSection (int *) ;
 int * szName ;
 int wcscpy (int ,int ) ;
 int wcslen (int ) ;

__attribute__((used)) static BOOL
AddNewEventSource(PLOGFILE pLogFile,
                  PWSTR lpSourceName)
{
    PEVENTSOURCE lpEventSource;

    lpEventSource = HeapAlloc(GetProcessHeap(), 0,
                              FIELD_OFFSET(EVENTSOURCE, szName[wcslen(lpSourceName) + 1]));
    if (lpEventSource != ((void*)0))
    {
        wcscpy(lpEventSource->szName, lpSourceName);
        lpEventSource->LogFile = pLogFile;

        DPRINT("Insert event source: %S\n", lpEventSource->szName);

        EnterCriticalSection(&EventSourceListCs);
        InsertTailList(&EventSourceListHead,
                       &lpEventSource->EventSourceListEntry);
        LeaveCriticalSection(&EventSourceListCs);
    }

    return (lpEventSource != ((void*)0));
}
