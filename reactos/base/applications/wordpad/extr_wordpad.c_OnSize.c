
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int bottom; int top; int right; } ;
typedef TYPE_1__ RECT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;


 int DefWindowProcW (scalar_t__,int ,int ,int ) ;
 int GetClientRect (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetDlgItem (scalar_t__,int ) ;
 int IDC_EDITOR ;
 int IDC_PREVIEW ;
 int IDC_REBAR ;
 int IDC_RULER ;
 int IDC_STATUSBAR ;
 scalar_t__ IsWindowVisible (scalar_t__) ;
 int LOWORD (int ) ;
 int MoveWindow (scalar_t__,int ,int,int ,int,int ) ;
 int RB_GETBARHEIGHT ;
 int SendMessageW (scalar_t__,int ,int ,int ) ;
 int TRUE ;
 int WM_SIZE ;
 scalar_t__ preview_isactive () ;
 int redraw_ruler (scalar_t__) ;

__attribute__((used)) static LRESULT OnSize( HWND hWnd, WPARAM wParam, LPARAM lParam )
{
    int nStatusSize = 0;
    RECT rc;
    HWND hwndEditor = preview_isactive() ? GetDlgItem(hWnd, IDC_PREVIEW) : GetDlgItem(hWnd, IDC_EDITOR);
    HWND hwndStatusBar = GetDlgItem(hWnd, IDC_STATUSBAR);
    HWND hwndReBar = GetDlgItem(hWnd, IDC_REBAR);
    HWND hRulerWnd = GetDlgItem(hwndReBar, IDC_RULER);
    int rebarHeight = 0;

    if (hwndStatusBar)
    {
        SendMessageW(hwndStatusBar, WM_SIZE, 0, 0);
        if (IsWindowVisible(hwndStatusBar))
        {
            GetClientRect(hwndStatusBar, &rc);
            nStatusSize = rc.bottom - rc.top;
        } else
        {
            nStatusSize = 0;
        }
    }
    if (hwndReBar)
    {
        rebarHeight = SendMessageW(hwndReBar, RB_GETBARHEIGHT, 0, 0);

        MoveWindow(hwndReBar, 0, 0, LOWORD(lParam), rebarHeight, TRUE);
    }
    if (hwndEditor)
    {
        GetClientRect(hWnd, &rc);
        MoveWindow(hwndEditor, 0, rebarHeight, rc.right, rc.bottom-nStatusSize-rebarHeight, TRUE);
    }

    redraw_ruler(hRulerWnd);

    return DefWindowProcW(hWnd, WM_SIZE, wParam, lParam);
}
