
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* tools; int hwndSelf; } ;
struct TYPE_5__ {int uFlags; scalar_t__ hwnd; scalar_t__ uId; } ;
typedef TYPE_1__ TTTOOL_INFO ;
typedef TYPE_2__ TOOLTIPS_INFO ;
typedef int POINT ;
typedef int LPARAM ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef scalar_t__ BOOL ;


 int GWL_STYLE ;
 int GetActiveWindow () ;
 int GetCursorPos (int *) ;
 int GetParent (scalar_t__) ;
 int GetWindowLongW (int ,int ) ;
 int ScreenToClient (scalar_t__,int *) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TOOLTIPS_GetToolFromPoint (TYPE_2__ const*,scalar_t__,int *) ;
 int TOOLTIPS_IsWindowActive (scalar_t__) ;
 int TRACE (char*,int,...) ;
 int TTF_IDISHWND ;
 int TTM_WINDOWFROMPOINT ;
 int TTS_ALWAYSTIP ;

__attribute__((used)) static INT
TOOLTIPS_CheckTool (const TOOLTIPS_INFO *infoPtr, BOOL bShowTest)
{
    POINT pt;
    HWND hwndTool;
    INT nTool;

    GetCursorPos (&pt);
    hwndTool = (HWND)SendMessageW (infoPtr->hwndSelf, TTM_WINDOWFROMPOINT, 0, (LPARAM)&pt);
    if (hwndTool == 0)
 return -1;

    ScreenToClient (hwndTool, &pt);
    nTool = TOOLTIPS_GetToolFromPoint (infoPtr, hwndTool, &pt);
    if (nTool == -1)
 return -1;

    if (!(GetWindowLongW (infoPtr->hwndSelf, GWL_STYLE) & TTS_ALWAYSTIP) && bShowTest)
    {
        TTTOOL_INFO *ti = &infoPtr->tools[nTool];
        HWND hwnd = (ti->uFlags & TTF_IDISHWND) ? (HWND)ti->uId : ti->hwnd;

        if (!TOOLTIPS_IsWindowActive(hwnd))
        {
            TRACE("not active: hwnd %p, parent %p, active %p\n",
                  hwnd, GetParent(hwnd), GetActiveWindow());
            return -1;
        }
    }

    TRACE("tool %d\n", nTool);

    return nTool;
}
