
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* page; int hBrush; scalar_t__ hHistoryWnd; scalar_t__ origRicheditWndProc; int hMainWnd; TYPE_1__* info; struct TYPE_10__* next; } ;
typedef TYPE_2__ WINHELP_WINDOW ;
struct TYPE_12__ {int wVersion; TYPE_2__* win_list; TYPE_2__* active_popup; TYPE_2__* active_win; } ;
struct TYPE_11__ {int file; } ;
struct TYPE_9__ {int name; } ;
typedef int LONG_PTR ;
typedef int HWND ;
typedef int BOOL ;


 int CTL_ID_TEXT ;
 int DeleteObject (int ) ;
 int DestroyWindow (scalar_t__) ;
 int GWLP_WNDPROC ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 TYPE_8__ Globals ;
 int HLPFILE_FreeHlpFile (int ) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int MACRO_Exit () ;
 int PostQuitMessage (int ) ;
 int SetActiveWindow (int ) ;
 int SetWindowLongPtrA (int ,int ,int ) ;
 int WINHELP_DeleteBackSet (TYPE_2__*) ;
 int WINHELP_DeleteButtons (TYPE_2__*) ;
 int WINHELP_DeletePageLinks (TYPE_4__*) ;
 int lstrcmpiA (int ,char*) ;

__attribute__((used)) static void WINHELP_DeleteWindow(WINHELP_WINDOW* win)
{
    WINHELP_WINDOW** w;
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
    bExit = (Globals.wVersion >= 4 && !lstrcmpiA(win->info->name, "main"));

    if (Globals.active_win == win)
    {
        Globals.active_win = Globals.win_list;
        if (Globals.win_list)
            SetActiveWindow(Globals.win_list->hMainWnd);
    }

    if (win == Globals.active_popup)
        Globals.active_popup = ((void*)0);

    hTextWnd = GetDlgItem(win->hMainWnd, CTL_ID_TEXT);
    SetWindowLongPtrA(hTextWnd, GWLP_WNDPROC, (LONG_PTR)win->origRicheditWndProc);

    WINHELP_DeleteButtons(win);

    if (win->page) WINHELP_DeletePageLinks(win->page);
    if (win->hHistoryWnd) DestroyWindow(win->hHistoryWnd);

    DeleteObject(win->hBrush);

    WINHELP_DeleteBackSet(win);

    if (win->page) HLPFILE_FreeHlpFile(win->page->file);
    HeapFree(GetProcessHeap(), 0, win);

    if (bExit) MACRO_Exit();
    if (!Globals.win_list)
        PostQuitMessage(0);
}
