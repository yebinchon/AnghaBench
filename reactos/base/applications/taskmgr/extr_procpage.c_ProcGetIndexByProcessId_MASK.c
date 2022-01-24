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
struct TYPE_6__ {scalar_t__ ProcessId; } ;
struct TYPE_5__ {int iItem; scalar_t__ lParam; int /*<<< orphan*/  mask; } ;
typedef  int /*<<< orphan*/  LV_ITEM ;
typedef  TYPE_1__ LVITEM ;
typedef  TYPE_2__* LPPROCESS_PAGE_LIST_ITEM ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  LVIF_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hProcessPageListCtrl ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC3(DWORD dwProcessId)
{
    int     i;
    LVITEM  item;
    LPPROCESS_PAGE_LIST_ITEM pData;

    for (i=0; i<FUNC1(hProcessPageListCtrl); i++)
    {
        FUNC2(&item, 0, sizeof(LV_ITEM));
        item.mask = LVIF_PARAM;
        item.iItem = i;
        (void)FUNC0(hProcessPageListCtrl, &item);
        pData = (LPPROCESS_PAGE_LIST_ITEM)item.lParam;
        if (pData->ProcessId == dwProcessId)
        {
            return i;
        }
    }
    return 0;
}