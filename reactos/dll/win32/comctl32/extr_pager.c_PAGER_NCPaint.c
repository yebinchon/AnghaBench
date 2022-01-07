
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_4__ {int dwStyle; int hwndSelf; int BRbtnState; int clrBk; int TLbtnState; } ;
typedef int RECT ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;
typedef scalar_t__ HRGN ;
typedef int HDC ;


 int DCX_USESTYLE ;
 int DCX_WINDOW ;
 int DefWindowProcW (int ,int ,int ,int ) ;
 int FALSE ;
 int GetDCEx (int ,int ,int) ;
 int PAGER_DrawButton (int ,int ,int ,int,int ,int ) ;
 int PAGER_GetButtonRects (TYPE_1__ const*,int *,int *,int ) ;
 int PGS_HORZ ;
 int ReleaseDC (int ,int ) ;
 int TRUE ;
 int WM_NCPAINT ;
 int WS_MINIMIZE ;

__attribute__((used)) static LRESULT
PAGER_NCPaint (const PAGER_INFO* infoPtr, HRGN hRgn)
{
    RECT rcBottomRight, rcTopLeft;
    HDC hdc;

    if (infoPtr->dwStyle & WS_MINIMIZE)
        return 0;

    DefWindowProcW (infoPtr->hwndSelf, WM_NCPAINT, (WPARAM)hRgn, 0);

    if (!(hdc = GetDCEx (infoPtr->hwndSelf, 0, DCX_USESTYLE | DCX_WINDOW)))
        return 0;

    PAGER_GetButtonRects(infoPtr, &rcTopLeft, &rcBottomRight, FALSE);

    PAGER_DrawButton(hdc, infoPtr->clrBk, rcTopLeft,
                     infoPtr->dwStyle & PGS_HORZ, TRUE, infoPtr->TLbtnState);
    PAGER_DrawButton(hdc, infoPtr->clrBk, rcBottomRight,
                     infoPtr->dwStyle & PGS_HORZ, FALSE, infoPtr->BRbtnState);

    ReleaseDC( infoPtr->hwndSelf, hdc );
    return 0;
}
