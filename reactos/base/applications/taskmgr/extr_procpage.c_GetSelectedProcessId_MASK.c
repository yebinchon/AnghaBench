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
struct TYPE_6__ {int /*<<< orphan*/  ProcessId; } ;
struct TYPE_5__ {int iItem; scalar_t__ lParam; int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ LVITEM ;
typedef  TYPE_2__* LPPROCESS_PAGE_LIST_ITEM ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  LVIF_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hProcessPageListCtrl ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

DWORD FUNC4(void)
{
    int     Index;
    LVITEM  lvitem;

    if(FUNC1(hProcessPageListCtrl) == 1)
    {
        Index = FUNC2(hProcessPageListCtrl);

        FUNC3(&lvitem, 0, sizeof(LVITEM));

        lvitem.mask = LVIF_PARAM;
        lvitem.iItem = Index;

        (void)FUNC0(hProcessPageListCtrl, &lvitem);

        if (lvitem.lParam)
            return ((LPPROCESS_PAGE_LIST_ITEM)lvitem.lParam)->ProcessId;
    }

    return 0;
}