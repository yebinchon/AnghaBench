
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {scalar_t__ LogName; } ;
typedef TYPE_1__* PLOGFILE ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef int LPCWSTR ;


 int ASSERT (int ) ;
 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int EnterCriticalSection (int *) ;
 int LOGFILE ;
 int LeaveCriticalSection (int *) ;
 int ListEntry ;
 int LogFileListCs ;
 TYPE_2__ LogFileListHead ;
 int _wcsicmp (scalar_t__,int ) ;

PLOGFILE LogfListItemByName(LPCWSTR Name)
{
    PLIST_ENTRY CurrentEntry;
    PLOGFILE Item, Result = ((void*)0);

    ASSERT(Name);

    EnterCriticalSection(&LogFileListCs);

    CurrentEntry = LogFileListHead.Flink;
    while (CurrentEntry != &LogFileListHead)
    {
        Item = CONTAINING_RECORD(CurrentEntry, LOGFILE, ListEntry);

        if (Item->LogName && !_wcsicmp(Item->LogName, Name))
        {
            Result = Item;
            break;
        }

        CurrentEntry = CurrentEntry->Flink;
    }

    LeaveCriticalSection(&LogFileListCs);
    return Result;
}
