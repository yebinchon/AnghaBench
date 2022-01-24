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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_2__ {int /*<<< orphan*/  hInstance; int /*<<< orphan*/  hMainWnd; int /*<<< orphan*/  hMenu; } ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ CMD_AUTOMATIC ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  DISPLAY_MENU_POS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ Globals ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  MAX_FMT_NAME_LEN ; 
 int /*<<< orphan*/  MF_BYPOSITION ; 
 int MF_GRAYED ; 
 int MF_SEPARATOR ; 
 int MF_STRING ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC11(void)
{
    UINT uFormat;
    HMENU hMenu;
    WCHAR szFormatName[MAX_FMT_NAME_LEN + 1];

    hMenu = FUNC7(Globals.hMenu, DISPLAY_MENU_POS);

    while (FUNC6(hMenu) > 1)
    {
        FUNC4(hMenu, 1, MF_BYPOSITION);
    }

    if (FUNC3() == 0)
        return;

    if (!FUNC9(Globals.hMainWnd))
        return;

    FUNC1(hMenu, MF_SEPARATOR, 0, NULL);

    /* Display the supported clipboard formats first */
    for (uFormat = FUNC5(0); uFormat;
         uFormat = FUNC5(uFormat))
    {
        if (FUNC8(uFormat))
        {
            FUNC10(Globals.hInstance, uFormat, TRUE,
                                        szFormatName, FUNC0(szFormatName));
            FUNC1(hMenu, MF_STRING, CMD_AUTOMATIC + uFormat, szFormatName);
        }
    }

    /* Now display the unsupported clipboard formats */
    for (uFormat = FUNC5(0); uFormat;
         uFormat = FUNC5(uFormat))
    {
        if (!FUNC8(uFormat))
        {
            FUNC10(Globals.hInstance, uFormat, TRUE,
                                        szFormatName, FUNC0(szFormatName));
            FUNC1(hMenu, MF_STRING | MF_GRAYED, 0, szFormatName);
        }
    }

    FUNC2();
}