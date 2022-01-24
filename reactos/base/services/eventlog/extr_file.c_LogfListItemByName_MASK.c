#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {scalar_t__ LogName; } ;
typedef  TYPE_1__* PLOGFILE ;
typedef  TYPE_2__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOGFILE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  LogFileListCs ; 
 TYPE_2__ LogFileListHead ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

PLOGFILE FUNC5(LPCWSTR Name)
{
    PLIST_ENTRY CurrentEntry;
    PLOGFILE Item, Result = NULL;

    FUNC0(Name);

    FUNC2(&LogFileListCs);

    CurrentEntry = LogFileListHead.Flink;
    while (CurrentEntry != &LogFileListHead)
    {
        Item = FUNC1(CurrentEntry, LOGFILE, ListEntry);

        if (Item->LogName && !FUNC4(Item->LogName, Name))
        {
            Result = Item;
            break;
        }

        CurrentEntry = CurrentEntry->Flink;
    }

    FUNC3(&LogFileListCs);
    return Result;
}