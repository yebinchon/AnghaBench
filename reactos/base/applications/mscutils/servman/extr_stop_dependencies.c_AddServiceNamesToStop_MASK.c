#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {scalar_t__ lpDisplayName; } ;
typedef  int* LPWSTR ;
typedef  TYPE_1__* LPQUERY_SERVICE_CONFIG ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  LB_ADDSTRING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC4(HWND hServiceListBox,
                      LPWSTR lpServiceList)
{
    LPQUERY_SERVICE_CONFIG lpServiceConfig;
    LPWSTR lpStr;

    lpStr = lpServiceList;

    /* Loop through all the services in the list */
    for (;;)
    {
        /* Break when we hit the double null */
        if (*lpStr == L'\0' && *(lpStr + 1) == L'\0')
            break;

        /* If this isn't our first time in the loop we'll
           have been left on a null char */
        if (*lpStr == L'\0')
            lpStr++;

        /* Get the service's display name */
        lpServiceConfig = FUNC1(lpStr);
        if (lpServiceConfig)
        {
            /* Add the service to the listbox */
            FUNC3(hServiceListBox,
                         LB_ADDSTRING,
                         0,
                         (LPARAM)lpServiceConfig->lpDisplayName);

            FUNC2(FUNC0(), 0, lpServiceConfig);
        }

        /* Move onto the next string */
        while (*lpStr != L'\0')
            lpStr++;
    }
}