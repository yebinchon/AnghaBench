#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {struct TYPE_6__* Next; int /*<<< orphan*/  StandardName; scalar_t__ Description; } ;
struct TYPE_5__ {int /*<<< orphan*/  StandardName; } ;
typedef  TYPE_1__ TIME_ZONE_INFORMATION ;
typedef  TYPE_2__* PTIMEZONE_ENTRY ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_SETCURSEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* TimeZoneListHead ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC3(HWND hwnd)
{
    TIME_ZONE_INFORMATION TimeZoneInfo;
    PTIMEZONE_ENTRY Entry;
    DWORD dwIndex;
    DWORD i;

    FUNC0(&TimeZoneInfo);

    dwIndex = 0;
    i = 0;
    Entry = TimeZoneListHead;
    while (Entry != NULL)
    {
        FUNC1(hwnd,
                     CB_ADDSTRING,
                     0,
                     (LPARAM)Entry->Description);

        if (!FUNC2(Entry->StandardName, TimeZoneInfo.StandardName))
            dwIndex = i;

        i++;
        Entry = Entry->Next;
    }

    FUNC1(hwnd,
                 CB_SETCURSEL,
                 (WPARAM)dwIndex,
                 0);
}