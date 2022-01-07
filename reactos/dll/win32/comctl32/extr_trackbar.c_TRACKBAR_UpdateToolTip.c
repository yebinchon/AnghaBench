
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ti ;
typedef char WCHAR ;
struct TYPE_14__ {int x; int y; } ;
struct TYPE_13__ {int right; int bottom; } ;
struct TYPE_10__ {int top; int bottom; int left; int right; } ;
struct TYPE_12__ {int dwStyle; scalar_t__ fLocation; int hwndToolTip; int hwndSelf; TYPE_1__ rcThumb; int lPos; } ;
struct TYPE_11__ {int cbSize; int uFlags; char* lpszText; int hwnd; } ;
typedef TYPE_2__ TTTOOLINFOW ;
typedef TYPE_3__ TRACKBAR_INFO ;
typedef TYPE_4__ RECT ;
typedef TYPE_5__ POINT ;
typedef int LRESULT ;
typedef int LPARAM ;


 int ClientToScreen (int ,TYPE_5__*) ;
 int GetClientRect (int ,TYPE_4__*) ;
 int HIWORD (int ) ;
 int LOWORD (int ) ;
 int MAKELPARAM (int,int) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TBS_VERT ;
 scalar_t__ TBTS_LEFT ;
 scalar_t__ TBTS_TOP ;
 int TOOLTIP_OFFSET ;
 int TTF_ABSOLUTE ;
 int TTF_IDISHWND ;
 int TTF_TRACK ;
 int TTM_GETBUBBLESIZE ;
 int TTM_TRACKPOSITION ;
 int TTM_UPDATETIPTEXTW ;
 int ZeroMemory (TYPE_2__*,int) ;
 int wsprintfW (char*,char const*,int ) ;

__attribute__((used)) static void
TRACKBAR_UpdateToolTip (const TRACKBAR_INFO *infoPtr)
{
    WCHAR buf[80];
    static const WCHAR fmt[] = { '%', 'l', 'd', 0 };
    TTTOOLINFOW ti;
    POINT pt;
    RECT rcClient;
    LRESULT size;

    if (!infoPtr->hwndToolTip) return;

    ZeroMemory(&ti, sizeof(ti));
    ti.cbSize = sizeof(ti);
    ti.hwnd = infoPtr->hwndSelf;
    ti.uFlags = TTF_IDISHWND | TTF_TRACK | TTF_ABSOLUTE;

    wsprintfW (buf, fmt, infoPtr->lPos);
    ti.lpszText = buf;
    SendMessageW (infoPtr->hwndToolTip, TTM_UPDATETIPTEXTW, 0, (LPARAM)&ti);

    GetClientRect (infoPtr->hwndSelf, &rcClient);
    size = SendMessageW (infoPtr->hwndToolTip, TTM_GETBUBBLESIZE, 0, (LPARAM)&ti);
    if (infoPtr->dwStyle & TBS_VERT) {
 if (infoPtr->fLocation == TBTS_LEFT)
     pt.x = 0 - LOWORD(size) - TOOLTIP_OFFSET;
 else
     pt.x = rcClient.right + TOOLTIP_OFFSET;
     pt.y = (infoPtr->rcThumb.top + infoPtr->rcThumb.bottom - HIWORD(size))/2;
    } else {
 if (infoPtr->fLocation == TBTS_TOP)
     pt.y = 0 - HIWORD(size) - TOOLTIP_OFFSET;
 else
            pt.y = rcClient.bottom + TOOLTIP_OFFSET;
        pt.x = (infoPtr->rcThumb.left + infoPtr->rcThumb.right - LOWORD(size))/2;
    }
    ClientToScreen(infoPtr->hwndSelf, &pt);

    SendMessageW (infoPtr->hwndToolTip, TTM_TRACKPOSITION,
                  0, MAKELPARAM(pt.x, pt.y));
}
