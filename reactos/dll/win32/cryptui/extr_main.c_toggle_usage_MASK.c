#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int iItem; int state; int /*<<< orphan*/  stateMask; scalar_t__ iSubItem; int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ LVITEMW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int CheckBitmapIndexChecked ; 
 int CheckBitmapIndexUnchecked ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_CERTIFICATE_USAGES ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  LVIF_STATE ; 
 int /*<<< orphan*/  LVIS_STATEIMAGEMASK ; 
 int /*<<< orphan*/  LVM_GETITEMW ; 
 int /*<<< orphan*/  LVM_SETITEMSTATE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(HWND hwnd, int iItem)
{
    LVITEMW item;
    int res;
    HWND lv = FUNC0(hwnd, IDC_CERTIFICATE_USAGES);

    item.mask = LVIF_STATE;
    item.iItem = iItem;
    item.iSubItem = 0;
    item.stateMask = LVIS_STATEIMAGEMASK;
    res = FUNC2(lv, LVM_GETITEMW, 0, (LPARAM)&item);
    if (res)
    {
        int state = item.state >> 12;

        item.state = FUNC1(
         state == CheckBitmapIndexChecked ? CheckBitmapIndexUnchecked :
         CheckBitmapIndexChecked);
        FUNC2(lv, LVM_SETITEMSTATE, iItem, (LPARAM)&item);
    }
}