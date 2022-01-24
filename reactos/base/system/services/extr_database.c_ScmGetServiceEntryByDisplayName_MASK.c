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
struct TYPE_7__ {int /*<<< orphan*/  lpDisplayName; } ;
typedef  TYPE_1__* PSERVICE ;
typedef  TYPE_2__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  SERVICE ; 
 int /*<<< orphan*/  ServiceListEntry ; 
 TYPE_2__ ServiceListHead ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PSERVICE
FUNC3(LPCWSTR lpDisplayName)
{
    PLIST_ENTRY ServiceEntry;
    PSERVICE CurrentService;

    FUNC1("ScmGetServiceEntryByDisplayName() called\n");

    ServiceEntry = ServiceListHead.Flink;
    while (ServiceEntry != &ServiceListHead)
    {
        CurrentService = FUNC0(ServiceEntry,
                                           SERVICE,
                                           ServiceListEntry);
        if (FUNC2(CurrentService->lpDisplayName, lpDisplayName) == 0)
        {
            FUNC1("Found service: '%S'\n", CurrentService->lpDisplayName);
            return CurrentService;
        }

        ServiceEntry = ServiceEntry->Flink;
    }

    FUNC1("Couldn't find a matching service\n");

    return NULL;
}