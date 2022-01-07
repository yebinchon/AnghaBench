
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* szName; } ;
struct TYPE_11__ {struct TYPE_11__* Flink; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PEVENTSOURCE ;
typedef TYPE_2__* LPCWSTR ;


 TYPE_2__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int DPRINT (char*,...) ;
 int EVENTSOURCE ;
 int EnterCriticalSection (int *) ;
 int EventSourceListCs ;
 int EventSourceListEntry ;
 TYPE_1__ EventSourceListHead ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ _wcsicmp (TYPE_2__*,TYPE_2__*) ;

PEVENTSOURCE
GetEventSourceByName(LPCWSTR Name)
{
    PLIST_ENTRY CurrentEntry;
    PEVENTSOURCE Item, Result = ((void*)0);

    DPRINT("GetEventSourceByName(%S)\n", Name);
    EnterCriticalSection(&EventSourceListCs);

    CurrentEntry = EventSourceListHead.Flink;
    while (CurrentEntry != &EventSourceListHead)
    {
        Item = CONTAINING_RECORD(CurrentEntry,
                                 EVENTSOURCE,
                                 EventSourceListEntry);

        DPRINT("Item->szName: %S\n", Item->szName);

        if (_wcsicmp(Item->szName, Name) == 0)
        {
            DPRINT("Found it\n");
            Result = Item;
            break;
        }

        CurrentEntry = CurrentEntry->Flink;
    }

    LeaveCriticalSection(&EventSourceListCs);

    DPRINT("Done (Result: %p)\n", Result);

    return Result;
}
