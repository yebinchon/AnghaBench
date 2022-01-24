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
struct TYPE_4__ {int iItem; scalar_t__ lParam; int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ LV_ITEM ;
typedef  scalar_t__ LPPROCESS_PAGE_LIST_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  LVIF_PARAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hProcessPageListCtrl ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC5(void)
{
    int i;
    LV_ITEM item;
    LPPROCESS_PAGE_LIST_ITEM pData;
    for (i = 0; i < FUNC3(hProcessPageListCtrl); i++)
    {
        FUNC4(&item, 0, sizeof(LV_ITEM));
        item.mask = LVIF_PARAM;
        item.iItem = i;
        (void)FUNC2(hProcessPageListCtrl, &item);
        pData = (LPPROCESS_PAGE_LIST_ITEM)item.lParam;
        FUNC1(FUNC0(), 0, pData);
    }
}