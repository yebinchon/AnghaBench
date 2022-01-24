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
typedef  int /*<<< orphan*/  item ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_6__ {int dwLanguage; } ;
struct TYPE_5__ {int mask; scalar_t__ iItem; int /*<<< orphan*/ * pszText; } ;
typedef  TYPE_1__ LV_ITEM ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDS_CTRL_SHIFT ; 
 int /*<<< orphan*/  IDS_LEFT_ALT_SHIFT ; 
 int /*<<< orphan*/  IDS_NONE ; 
 int /*<<< orphan*/  IDS_SWITCH_BET_INLANG ; 
 int LVIF_PARAM ; 
 int LVIF_STATE ; 
 int LVIF_TEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_STR_LEN ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 TYPE_2__ _KeySettings ; 
 int /*<<< orphan*/  hApplet ; 

__attribute__((used)) static VOID
FUNC6(HWND hwndList)
{
    WCHAR szBuffer[MAX_STR_LEN];
    LV_ITEM item;
    INT iItemIndex;

    FUNC1(hwndList);

    FUNC5(&item, sizeof(item));

    FUNC4(hApplet, IDS_SWITCH_BET_INLANG, szBuffer, FUNC0(szBuffer));
    item.mask = LVIF_TEXT | LVIF_PARAM | LVIF_STATE;
    item.pszText = szBuffer;
    item.iItem = 0;

    iItemIndex = FUNC2(hwndList, &item);

    if (_KeySettings.dwLanguage == 1)
    {
        FUNC4(hApplet, IDS_LEFT_ALT_SHIFT, szBuffer, FUNC0(szBuffer));
    }
    else if (_KeySettings.dwLanguage == 2)
    {
        FUNC4(hApplet, IDS_CTRL_SHIFT, szBuffer, FUNC0(szBuffer));
    }
    else
    {
        FUNC4(hApplet, IDS_NONE, szBuffer, FUNC0(szBuffer));
    }

    FUNC3(hwndList, iItemIndex, 1, szBuffer);
}