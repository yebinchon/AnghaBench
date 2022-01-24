#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t current_tab; TYPE_1__* tabs; int /*<<< orphan*/  hwndTabCtrl; } ;
struct TYPE_3__ {int id; scalar_t__ hwnd; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_2__ HHInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int TAB_NUMTABS ; 
 int /*<<< orphan*/  TCM_GETCURSEL ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC5(HWND hwnd)
{
    HHInfo *info = (HHInfo*)FUNC1(hwnd, 0);
    int tab_id, tab_index, i;

    FUNC4("%p\n", hwnd);

    if (!info)
        return 0;

    if(info->tabs[info->current_tab].hwnd)
        FUNC3(info->tabs[info->current_tab].hwnd, SW_HIDE);

    tab_id = (int) FUNC2(info->hwndTabCtrl, TCM_GETCURSEL, 0, 0);
    /* convert the ID of the tab to an index in our tab list */
    tab_index = -1;
    for (i=0; i<TAB_NUMTABS; i++)
    {
        if (info->tabs[i].id == tab_id)
        {
            tab_index = i;
            break;
        }
    }
    if (tab_index == -1)
    {
        FUNC0("Tab ID %d does not correspond to a valid index in the tab list.\n", tab_id);
        return 0;
    }
    info->current_tab = tab_index;

    if(info->tabs[info->current_tab].hwnd)
        FUNC3(info->tabs[info->current_tab].hwnd, SW_SHOW);

    return 0;
}