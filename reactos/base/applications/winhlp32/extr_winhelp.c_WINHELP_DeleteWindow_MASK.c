#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* page; int /*<<< orphan*/  hBrush; scalar_t__ hHistoryWnd; scalar_t__ origRicheditWndProc; int /*<<< orphan*/  hMainWnd; TYPE_1__* info; struct TYPE_10__* next; } ;
typedef  TYPE_2__ WINHELP_WINDOW ;
struct TYPE_12__ {int wVersion; TYPE_2__* win_list; TYPE_2__* active_popup; TYPE_2__* active_win; } ;
struct TYPE_11__ {int /*<<< orphan*/  file; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_ID_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  GWLP_WNDPROC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_8__ Globals ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC14(WINHELP_WINDOW* win)
{
    WINHELP_WINDOW**    w;
    BOOL bExit;
    HWND hTextWnd;

    for (w = &Globals.win_list; *w; w = &(*w)->next)
    {
        if (*w == win)
        {
            *w = win->next;
            break;
        }
    }
    bExit = (Globals.wVersion >= 4 && !FUNC13(win->info->name, "main"));

    if (Globals.active_win == win)
    {
        Globals.active_win = Globals.win_list;
        if (Globals.win_list)
            FUNC8(Globals.win_list->hMainWnd);
    }

    if (win == Globals.active_popup)
        Globals.active_popup = NULL;

    hTextWnd = FUNC2(win->hMainWnd, CTL_ID_TEXT);
    FUNC9(hTextWnd, GWLP_WNDPROC, (LONG_PTR)win->origRicheditWndProc);

    FUNC11(win);

    if (win->page) FUNC12(win->page);
    if (win->hHistoryWnd) FUNC1(win->hHistoryWnd);

    FUNC0(win->hBrush);

    FUNC10(win);

    if (win->page) FUNC4(win->page->file);
    FUNC5(FUNC3(), 0, win);

    if (bExit) FUNC6();
    if (!Globals.win_list)
        FUNC7(0);
}