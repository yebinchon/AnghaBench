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
struct TYPE_2__ {int /*<<< orphan*/  AlwaysOnTop; } ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HWND_NOTOPMOST ; 
 int /*<<< orphan*/  HWND_TOPMOST ; 
 int /*<<< orphan*/  ID_OPTIONS_ALWAYSONTOP ; 
 int MF_BYCOMMAND ; 
 int MF_CHECKED ; 
 int MF_UNCHECKED ; 
 int /*<<< orphan*/  OPTIONS_MENU_INDEX ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ TaskManagerSettings ; 
 int WS_EX_TOPMOST ; 
 int /*<<< orphan*/  hMainWnd ; 

void FUNC5(void)
{
    HMENU  hMenu;
    HMENU  hOptionsMenu;

    hMenu = FUNC1(hMainWnd);
    hOptionsMenu = FUNC2(hMenu, OPTIONS_MENU_INDEX);

    /*
     * Check or uncheck the always on top menu item
     * and update main window.
     */
    if ((FUNC3(hMainWnd, GWL_EXSTYLE) & WS_EX_TOPMOST) != 0)
    {
        FUNC0(hOptionsMenu, ID_OPTIONS_ALWAYSONTOP, MF_BYCOMMAND|MF_UNCHECKED);
        TaskManagerSettings.AlwaysOnTop = FALSE;
        FUNC4(hMainWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE|SWP_NOSIZE);
    }
    else
    {
        FUNC0(hOptionsMenu, ID_OPTIONS_ALWAYSONTOP, MF_BYCOMMAND|MF_CHECKED);
        TaskManagerSettings.AlwaysOnTop = TRUE;
        FUNC4(hMainWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE|SWP_NOSIZE);
    }
}