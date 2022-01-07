
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_5__ {int clrWindow; int clrBtnFace; } ;
struct TYPE_4__ {int dwStyle; scalar_t__ hwndSelf; int hwndNotify; } ;
typedef int RECT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef scalar_t__ HDC ;
typedef int * HBRUSH ;
typedef TYPE_1__ DATETIME_INFO ;


 int * CreateSolidBrush (int ) ;
 int DeleteObject (int *) ;
 int FillRect (scalar_t__,int *,int *) ;
 int GetClientRect (scalar_t__,int *) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int WM_CTLCOLOREDIT ;
 int WS_DISABLED ;
 TYPE_2__ comctl32_color ;

__attribute__((used)) static LRESULT
DATETIME_EraseBackground (const DATETIME_INFO *infoPtr, HDC hdc)
{
    HBRUSH hBrush, hSolidBrush = ((void*)0);
    RECT rc;

    if (infoPtr->dwStyle & WS_DISABLED)
        hBrush = hSolidBrush = CreateSolidBrush(comctl32_color.clrBtnFace);
    else
    {
        hBrush = (HBRUSH)SendMessageW(infoPtr->hwndNotify, WM_CTLCOLOREDIT,
                                      (WPARAM)hdc, (LPARAM)infoPtr->hwndSelf);
        if (!hBrush)
            hBrush = hSolidBrush = CreateSolidBrush(comctl32_color.clrWindow);
    }

    GetClientRect (infoPtr->hwndSelf, &rc);

    FillRect (hdc, &rc, hBrush);

    if (hSolidBrush)
        DeleteObject(hSolidBrush);

    return -1;
}
