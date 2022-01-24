#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {scalar_t__ dwImageRunCount; } ;
struct TYPE_6__ {struct TYPE_6__* lpServiceName; int /*<<< orphan*/  ServiceListEntry; struct TYPE_6__* pSecurityDescriptor; TYPE_3__* lpImage; struct TYPE_6__* lpDisplayName; } ;
typedef  TYPE_1__* PSERVICE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 

VOID
FUNC6(PSERVICE lpService)
{
    FUNC0("Deleting Service %S\n", lpService->lpServiceName);

    /* Delete the display name */
    if (lpService->lpDisplayName != NULL &&
        lpService->lpDisplayName != lpService->lpServiceName)
        FUNC2(FUNC1(), 0, lpService->lpDisplayName);

    /* Dereference the service image */
    if (lpService->lpImage)
    {
        lpService->lpImage->dwImageRunCount--;

        if (lpService->lpImage->dwImageRunCount == 0)
        {
            FUNC4(lpService->lpImage);
            lpService->lpImage = NULL;
        }
    }

    /* Decrement the group reference counter */
    FUNC5(lpService, NULL);

    /* Release the SecurityDescriptor */
    if (lpService->pSecurityDescriptor != NULL)
        FUNC2(FUNC1(), 0, lpService->pSecurityDescriptor);

    /* Remove the Service from the List */
    FUNC3(&lpService->ServiceListEntry);

    FUNC0("Deleted Service %S\n", lpService->lpServiceName);

    /* Delete the service record */
    FUNC2(FUNC1(), 0, lpService);

    FUNC0("Done\n");
}