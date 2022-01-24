#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* szName; } ;
struct TYPE_11__ {struct TYPE_11__* Flink; } ;
typedef  TYPE_1__* PLIST_ENTRY ;
typedef  TYPE_2__* PEVENTSOURCE ;
typedef  TYPE_2__* LPCWSTR ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  EVENTSOURCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EventSourceListCs ; 
 int /*<<< orphan*/  EventSourceListEntry ; 
 TYPE_1__ EventSourceListHead ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_2__*) ; 

PEVENTSOURCE
FUNC5(LPCWSTR Name)
{
    PLIST_ENTRY CurrentEntry;
    PEVENTSOURCE Item, Result = NULL;

    FUNC1("GetEventSourceByName(%S)\n", Name);
    FUNC2(&EventSourceListCs);

    CurrentEntry = EventSourceListHead.Flink;
    while (CurrentEntry != &EventSourceListHead)
    {
        Item = FUNC0(CurrentEntry,
                                 EVENTSOURCE,
                                 EventSourceListEntry);

        FUNC1("Item->szName: %S\n", Item->szName);
//        if ((*(Item->szName) != 0) && !_wcsicmp(Item->szName, Name))
        if (FUNC4(Item->szName, Name) == 0)
        {
            FUNC1("Found it\n");
            Result = Item;
            break;
        }

        CurrentEntry = CurrentEntry->Flink;
    }

    FUNC3(&EventSourceListCs);

    FUNC1("Done (Result: %p)\n", Result);

    return Result;
}