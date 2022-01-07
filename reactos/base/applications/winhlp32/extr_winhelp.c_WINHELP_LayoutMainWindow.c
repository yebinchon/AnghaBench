
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hMainWnd; } ;
typedef TYPE_1__ WINHELP_WINDOW ;
struct TYPE_7__ {scalar_t__ bottom; scalar_t__ left; scalar_t__ right; scalar_t__ top; } ;
typedef TYPE_2__ RECT ;
typedef scalar_t__ INT ;
typedef int HWND ;


 int CTL_ID_BUTTON ;
 int CTL_ID_TEXT ;
 int GetClientRect (int ,TYPE_2__*) ;
 int GetDlgItem (int ,int ) ;
 scalar_t__ GetWindowRect (int ,TYPE_2__*) ;
 int HWND_TOP ;
 int SetWindowPos (int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;

void WINHELP_LayoutMainWindow(WINHELP_WINDOW* win)
{
    RECT rect, button_box_rect;
    INT text_top = 0;
    HWND hButtonBoxWnd = GetDlgItem(win->hMainWnd, CTL_ID_BUTTON);
    HWND hTextWnd = GetDlgItem(win->hMainWnd, CTL_ID_TEXT);

    GetClientRect(win->hMainWnd, &rect);


    SetWindowPos(hButtonBoxWnd, HWND_TOP,
                 rect.left, rect.top,
                 rect.right - rect.left,
                 rect.bottom - rect.top, 0);

    if (GetWindowRect(hButtonBoxWnd, &button_box_rect))
        text_top = rect.top + button_box_rect.bottom - button_box_rect.top;

    SetWindowPos(hTextWnd, HWND_TOP,
                 rect.left, text_top,
                 rect.right - rect.left,
                 rect.bottom - text_top, 0);

}
