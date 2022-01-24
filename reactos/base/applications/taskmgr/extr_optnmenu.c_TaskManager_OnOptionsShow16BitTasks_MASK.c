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
struct TYPE_2__ {int /*<<< orphan*/  Show16BitTasks; } ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ID_OPTIONS_SHOW16BITTASKS ; 
 int MF_BYCOMMAND ; 
 int MF_CHECKED ; 
 int MF_UNCHECKED ; 
 int /*<<< orphan*/  OPTIONS_MENU_INDEX ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ TaskManagerSettings ; 
 int /*<<< orphan*/  hMainWnd ; 

void FUNC5(void)
{
    HMENU  hMenu;
    HMENU  hOptionsMenu;

    hMenu = FUNC1(hMainWnd);
    hOptionsMenu = FUNC3(hMenu, OPTIONS_MENU_INDEX);

    /*
     * FIXME: Currently this is useless because the
     * current implementation doesn't list the 16-bit
     * processes. I believe that would require querying
     * each ntvdm.exe process for it's children.
     */

    /*
     * Check or uncheck the show 16-bit tasks menu item
     */
    if (FUNC2(hOptionsMenu, ID_OPTIONS_SHOW16BITTASKS, MF_BYCOMMAND) & MF_CHECKED)
    {
        FUNC0(hOptionsMenu, ID_OPTIONS_SHOW16BITTASKS, MF_BYCOMMAND|MF_UNCHECKED);
        TaskManagerSettings.Show16BitTasks = FALSE;
    }
    else
    {
        FUNC0(hOptionsMenu, ID_OPTIONS_SHOW16BITTASKS, MF_BYCOMMAND|MF_CHECKED);
        TaskManagerSettings.Show16BitTasks = TRUE;
    }

    /*
     * Refresh the list of processes.
     */
    FUNC4();
}