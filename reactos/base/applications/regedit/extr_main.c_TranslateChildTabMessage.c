
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hAddressBarWnd; scalar_t__ hWnd; } ;
struct TYPE_4__ {scalar_t__ message; scalar_t__ hwnd; int wParam; } ;
typedef TYPE_1__* PMSG ;
typedef int BOOL ;


 int EM_SETSEL ;
 int FALSE ;
 scalar_t__ GetKeyState (int ) ;
 scalar_t__ GetParent (scalar_t__) ;
 int ID_SWITCH_PANELS ;
 int PostMessageW (scalar_t__,int ,int ,int ) ;
 int SendMessageW (scalar_t__,int ,int ,int) ;
 int TRUE ;
 int VK_CONTROL ;
 int VK_TAB ;
 int WM_COMMAND ;
 scalar_t__ WM_KEYDOWN ;
 TYPE_2__* g_pChildWnd ;

BOOL TranslateChildTabMessage(PMSG msg)
{
    if (msg->message != WM_KEYDOWN) return FALSE;


    if ((msg->hwnd == g_pChildWnd->hAddressBarWnd) &&
        (msg->message == WM_KEYDOWN) &&
        (msg->wParam == L'A') && (GetKeyState(VK_CONTROL) < 0))
    {
        SendMessageW(msg->hwnd, EM_SETSEL, 0, -1);
        return TRUE;
    }

    if (msg->wParam != VK_TAB) return FALSE;
    if (GetParent(msg->hwnd) != g_pChildWnd->hWnd) return FALSE;
    PostMessageW(g_pChildWnd->hWnd, WM_COMMAND, ID_SWITCH_PANELS, 0);
    return TRUE;
}
