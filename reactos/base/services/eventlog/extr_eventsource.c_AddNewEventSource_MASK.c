#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  EventSourceListEntry; int /*<<< orphan*/  szName; int /*<<< orphan*/  LogFile; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  PLOGFILE ;
typedef  TYPE_1__* PEVENTSOURCE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVENTSOURCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EventSourceListCs ; 
 int /*<<< orphan*/  EventSourceListHead ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * szName ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC9(PLOGFILE pLogFile,
                  PWSTR lpSourceName)
{
    PEVENTSOURCE lpEventSource;

    lpEventSource = FUNC4(FUNC3(), 0,
                              FUNC2(EVENTSOURCE, szName[FUNC8(lpSourceName) + 1]));
    if (lpEventSource != NULL)
    {
        FUNC7(lpEventSource->szName, lpSourceName);
        lpEventSource->LogFile = pLogFile;

        FUNC0("Insert event source: %S\n", lpEventSource->szName);

        FUNC1(&EventSourceListCs);
        FUNC5(&EventSourceListHead,
                       &lpEventSource->EventSourceListEntry);
        FUNC6(&EventSourceListCs);
    }

    return (lpEventSource != NULL);
}