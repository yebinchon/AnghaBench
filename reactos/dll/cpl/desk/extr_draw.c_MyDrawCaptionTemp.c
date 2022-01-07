
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WORD ;
typedef int UINT ;
struct TYPE_14__ {int* crColor; } ;
struct TYPE_13__ {int member_1; int member_0; } ;
struct TYPE_12__ {int bottom; scalar_t__ right; int top; scalar_t__ left; } ;
struct TYPE_11__ {int Red; int Green; int Blue; scalar_t__ Alpha; int y; scalar_t__ x; } ;
typedef TYPE_1__ TRIVERTEX ;
typedef TYPE_2__ RECT ;
typedef int LPCWSTR ;
typedef int HWND ;
typedef int HICON ;
typedef int HGDIOBJ ;
typedef int HFONT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef TYPE_3__ GRADIENT_RECT ;
typedef TYPE_4__ COLOR_SCHEME ;
typedef int COLORREF ;
typedef int BOOL ;


 size_t COLOR_ACTIVECAPTION ;
 size_t COLOR_CAPTIONTEXT ;
 size_t COLOR_GRADIENTACTIVECAPTION ;
 size_t COLOR_GRADIENTINACTIVECAPTION ;
 size_t COLOR_INACTIVECAPTION ;
 size_t COLOR_INACTIVECAPTIONTEXT ;
 int CreateSolidBrush (int) ;
 int DC_ACTIVE ;
 int DC_GRADIENT ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DeleteObject (int ) ;
 int DrawTextW (int ,int ,int,TYPE_2__*,int) ;
 int FillRect (int ,TYPE_2__ const*,int ) ;
 int GRADIENT_FILL_RECT_H ;
 int GdiGradientFill (int ,TYPE_1__*,int,TYPE_3__*,int,int ) ;
 int SelectObject (int ,int ) ;
 int SetBkMode (int ,int ) ;
 int SetTextColor (int ,int) ;
 int TRANSPARENT ;
 int TRUE ;

BOOL
MyDrawCaptionTemp(HWND hwnd, HDC hdc, const RECT *rect, HFONT hFont, HICON hIcon, LPCWSTR str, UINT uFlags, COLOR_SCHEME *scheme)
{



    HBRUSH hbr;
    HGDIOBJ hFontOld;
    RECT rc;







    if (uFlags & DC_GRADIENT)
    {
        GRADIENT_RECT gcap = {0, 1};
        TRIVERTEX vert[2];
        COLORREF Colors[2];

        Colors[0] = scheme->crColor[((uFlags & DC_ACTIVE) ?
            COLOR_ACTIVECAPTION : COLOR_INACTIVECAPTION)];
        Colors[1] = scheme->crColor[((uFlags & DC_ACTIVE) ?
            COLOR_GRADIENTACTIVECAPTION : COLOR_GRADIENTINACTIVECAPTION)];

        vert[0].x = rect->left;
        vert[0].y = rect->top;
        vert[0].Red = (WORD)Colors[0]<<8;
        vert[0].Green = (WORD)Colors[0] & 0xFF00;
        vert[0].Blue = (WORD)(Colors[0]>>8) & 0xFF00;
        vert[0].Alpha = 0;

        vert[1].x = rect->right;
        vert[1].y = rect->bottom;
        vert[1].Red = (WORD)Colors[1]<<8;
        vert[1].Green = (WORD)Colors[1] & 0xFF00;
        vert[1].Blue = (WORD)(Colors[1]>>8) & 0xFF00;
        vert[1].Alpha = 0;

        GdiGradientFill(hdc, vert, 2, &gcap, 1, GRADIENT_FILL_RECT_H);
    }
    else
    {
        if (uFlags & DC_ACTIVE)
            hbr = CreateSolidBrush(scheme->crColor[COLOR_ACTIVECAPTION]);
        else
            hbr = CreateSolidBrush(scheme->crColor[COLOR_INACTIVECAPTION]);
        FillRect(hdc, rect, hbr);
        DeleteObject(hbr);
    }

    hFontOld = SelectObject(hdc, hFont);
    SetBkMode(hdc, TRANSPARENT);
    if (uFlags & DC_ACTIVE)
        SetTextColor(hdc, scheme->crColor[COLOR_CAPTIONTEXT]);
    else
        SetTextColor(hdc, scheme->crColor[COLOR_INACTIVECAPTIONTEXT]);
    rc.left = rect->left + 2;
    rc.top = rect->top;
    rc.right = rect->right;
    rc.bottom = rect->bottom;
    DrawTextW(hdc, str, -1, &rc, DT_SINGLELINE | DT_VCENTER);
    SelectObject(hdc, hFontOld);
    return TRUE;
}
