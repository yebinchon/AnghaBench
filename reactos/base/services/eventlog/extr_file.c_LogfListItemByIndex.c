
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Flink; } ;
typedef int * PLOGFILE ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef scalar_t__ DWORD ;


 int * CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int EnterCriticalSection (int *) ;
 int LOGFILE ;
 int LeaveCriticalSection (int *) ;
 int ListEntry ;
 int LogFileListCs ;
 TYPE_1__ LogFileListHead ;

PLOGFILE LogfListItemByIndex(DWORD Index)
{
    PLIST_ENTRY CurrentEntry;
    PLOGFILE Result = ((void*)0);
    DWORD i = 1;

    EnterCriticalSection(&LogFileListCs);

    CurrentEntry = LogFileListHead.Flink;
    while (CurrentEntry != &LogFileListHead)
    {
        if (i == Index)
        {
            Result = CONTAINING_RECORD(CurrentEntry, LOGFILE, ListEntry);
            break;
        }

        CurrentEntry = CurrentEntry->Flink;
        i++;
    }

    LeaveCriticalSection(&LogFileListCs);
    return Result;
}
