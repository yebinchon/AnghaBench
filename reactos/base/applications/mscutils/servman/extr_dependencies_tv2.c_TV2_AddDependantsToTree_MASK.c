#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {int /*<<< orphan*/  dwServiceType; } ;
struct TYPE_9__ {TYPE_1__ ServiceStatus; int /*<<< orphan*/ * lpServiceName; int /*<<< orphan*/  lpDisplayName; } ;
struct TYPE_8__ {int /*<<< orphan*/  hDependsTreeView2; } ;
typedef  TYPE_2__* PDEPENDDATA ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  TYPE_3__* LPENUM_SERVICE_STATUSW ;
typedef  int /*<<< orphan*/ * HTREEITEM ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  IDS_NO_DEPENDS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hInstance ; 

VOID
FUNC8(PDEPENDDATA pDependData,
                        HTREEITEM hParent,
                        LPWSTR lpServiceName)
{

    LPENUM_SERVICE_STATUSW lpServiceStatus;
    LPWSTR lpNoDepends;
    DWORD count, i;
    BOOL bHasChildren;

    /* Get a list of service dependents */
    lpServiceStatus = FUNC6(lpServiceName, &count);
    if (lpServiceStatus)
    {
        for (i = 0; i < count; i++)
        {
            /* Does this item need a +/- box? */
            bHasChildren = FUNC7(lpServiceStatus[i].lpServiceName);

            /* Add it */
            FUNC0(pDependData->hDependsTreeView2,
                              hParent,
                              lpServiceStatus[i].lpDisplayName,
                              lpServiceStatus[i].lpServiceName,
                              lpServiceStatus[i].ServiceStatus.dwServiceType,
                              bHasChildren);
        }

        FUNC4(FUNC3(),
                 0,
                 lpServiceStatus);
    }
    else
    {
        /* If there is no parent, set the tree to 'no dependencies' */
        if (!hParent)
        {
            /* Load the 'No dependencies' string */
            FUNC1(&lpNoDepends, hInstance, IDS_NO_DEPENDS);

            FUNC0(pDependData->hDependsTreeView2,
                              NULL,
                              lpNoDepends,
                              NULL,
                              0,
                              FALSE);

            FUNC5(lpNoDepends);

            /* Disable the window */
            FUNC2(pDependData->hDependsTreeView2, FALSE);
        }
    }
}