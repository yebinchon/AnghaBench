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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_2__ {int /*<<< orphan*/  hMainWnd; int /*<<< orphan*/  hEdit; scalar_t__ bShowStatusBar; scalar_t__ bWrapLongLines; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  CF_TEXT ; 
 int /*<<< orphan*/  CMD_COPY ; 
 int /*<<< orphan*/  CMD_CUT ; 
 int /*<<< orphan*/  CMD_DELETE ; 
 int /*<<< orphan*/  CMD_PASTE ; 
 int /*<<< orphan*/  CMD_SELECT_ALL ; 
 int /*<<< orphan*/  CMD_STATUSBAR ; 
 int /*<<< orphan*/  CMD_UNDO ; 
 int /*<<< orphan*/  CMD_WRAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EM_CANUNDO ; 
 int /*<<< orphan*/  EM_GETSEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ Globals ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int MF_BYCOMMAND ; 
 int MF_CHECKED ; 
 int MF_ENABLED ; 
 int MF_GRAYED ; 
 int MF_UNCHECKED ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID FUNC10(HMENU menu, LPARAM index)
{
    int enable;

    FUNC9(index);

    FUNC0(FUNC3(Globals.hMainWnd), CMD_WRAP,
        MF_BYCOMMAND | (Globals.bWrapLongLines ? MF_CHECKED : MF_UNCHECKED));
    if (!Globals.bWrapLongLines)
    {
        FUNC0(FUNC3(Globals.hMainWnd), CMD_STATUSBAR,
            MF_BYCOMMAND | (Globals.bShowStatusBar ? MF_CHECKED : MF_UNCHECKED));
    }
    FUNC2(menu, CMD_UNDO,
        FUNC8(Globals.hEdit, EM_CANUNDO, 0, 0) ? MF_ENABLED : MF_GRAYED);
    FUNC2(menu, CMD_PASTE,
        FUNC6(CF_TEXT) ? MF_ENABLED : MF_GRAYED);
    enable = (int) FUNC8(Globals.hEdit, EM_GETSEL, 0, 0);
    enable = (FUNC5(enable) == FUNC7(enable)) ? MF_GRAYED : MF_ENABLED;
    FUNC2(menu, CMD_CUT, enable);
    FUNC2(menu, CMD_COPY, enable);
    FUNC2(menu, CMD_DELETE, enable);

    FUNC2(menu, CMD_SELECT_ALL,
        FUNC4(Globals.hEdit) ? MF_ENABLED : MF_GRAYED);
    FUNC1(Globals.hMainWnd);
}