#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_9__ {scalar_t__ lpDisplayName; } ;
struct TYPE_8__ {int /*<<< orphan*/  iItem; } ;
struct TYPE_7__ {int /*<<< orphan*/  hTool; TYPE_5__* pCurrentService; int /*<<< orphan*/  hStatus; int /*<<< orphan*/  SelectedItem; int /*<<< orphan*/  hShortcutMenu; int /*<<< orphan*/  hMainWnd; } ;
typedef  TYPE_1__* PMAIN_WND_INFO ;
typedef  TYPE_2__* LPNMLISTVIEW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ID_DELETE ; 
 int ID_PROP ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MF_BYCOMMAND ; 
 scalar_t__ MF_ENABLED ; 
 int /*<<< orphan*/  SB_SETTEXT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TBSTATE_ENABLED ; 
 int /*<<< orphan*/  TB_SETSTATE ; 

VOID
FUNC8(PMAIN_WND_INFO Info,
                         LPNMLISTVIEW pnmv)
{
    HMENU hMainMenu;

    /* get handle to menu */
    hMainMenu = FUNC1(Info->hMainWnd);

    /* activate properties menu item, if not already */
    if (FUNC2(hMainMenu,
                     ID_PROP,
                     MF_BYCOMMAND) != MF_ENABLED)
    {
        FUNC0(hMainMenu,
                       ID_PROP,
                       MF_ENABLED);
        FUNC0(FUNC4(Info->hShortcutMenu, 0),
                       ID_PROP,
                       MF_ENABLED);
        FUNC7(FUNC4(Info->hShortcutMenu, 0),
                           ID_PROP,
                           MF_BYCOMMAND);
    }

    /* activate delete menu item, if not already */
    if (FUNC2(hMainMenu,
                     ID_DELETE,
                     MF_BYCOMMAND) != MF_ENABLED)
    {
        FUNC0(hMainMenu,
                       ID_DELETE,
                       MF_ENABLED);
        FUNC0(FUNC4(Info->hShortcutMenu, 0),
                       ID_DELETE,
                       MF_ENABLED);
    }

    /* set selected service */
    Info->SelectedItem = pnmv->iItem;

    /* get pointer to selected service */
    Info->pCurrentService = FUNC3(Info);

    /* set current selected service in the status bar */
    FUNC6(Info->hStatus,
                SB_SETTEXT,
                1,
                (LPARAM)Info->pCurrentService->lpDisplayName);

    /* show the properties button */
    FUNC6(Info->hTool,
                TB_SETSTATE,
                ID_PROP,
                (LPARAM)FUNC5(TBSTATE_ENABLED, 0));
}