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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int /*<<< orphan*/  Scheme; int /*<<< orphan*/  lpButText; int /*<<< orphan*/  lpMessText; int /*<<< orphan*/  lpMessBox; int /*<<< orphan*/  lpWinTxt; int /*<<< orphan*/  lpAct; int /*<<< orphan*/  lpInAct; int /*<<< orphan*/  hMenu; scalar_t__ hClientFont; } ;
typedef  TYPE_1__* PPREVIEW_DATA ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  COLOR_SCHEME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEFAULT_GUI_FONT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  IDR_PREVIEW_MENU ; 
 int /*<<< orphan*/  IDS_ACTWIN ; 
 int /*<<< orphan*/  IDS_BUTTEXT ; 
 int /*<<< orphan*/  IDS_INACTWIN ; 
 int /*<<< orphan*/  IDS_MESSBOX ; 
 int /*<<< orphan*/  IDS_MESSTEXT ; 
 int /*<<< orphan*/  IDS_WINTEXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int MF_BYPOSITION ; 
 int MF_GRAYED ; 
 int MF_HILITE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hApplet ; 

__attribute__((used)) static VOID
FUNC8(HWND hwnd, PPREVIEW_DATA pPreviewData)
{
    COLOR_SCHEME *scheme;

    pPreviewData->hClientFont = (HFONT)FUNC2(DEFAULT_GUI_FONT);

    /* Load and modify the menu */
    pPreviewData->hMenu = FUNC5(hApplet, FUNC6(IDR_PREVIEW_MENU));
    FUNC1(pPreviewData->hMenu,
                   1, MF_BYPOSITION | MF_GRAYED);
    FUNC3(hwnd, pPreviewData->hMenu,
                   2, MF_BYPOSITION | MF_HILITE);

//    GetMenuItemRect(hwnd, pPreviewData->hMenu,
//                    2, &pPreviewData->rcSelectedMenuItem);

    FUNC0(&pPreviewData->lpInAct, hApplet, IDS_INACTWIN);
    FUNC0(&pPreviewData->lpAct, hApplet, IDS_ACTWIN);
    FUNC0(&pPreviewData->lpWinTxt, hApplet, IDS_WINTEXT);
    FUNC0(&pPreviewData->lpMessBox, hApplet, IDS_MESSBOX);
    FUNC0(&pPreviewData->lpMessText, hApplet, IDS_MESSTEXT);
    FUNC0(&pPreviewData->lpButText, hApplet, IDS_BUTTEXT);

    scheme = &pPreviewData->Scheme;
    FUNC4(scheme);

    FUNC7(hwnd, pPreviewData, scheme);
}