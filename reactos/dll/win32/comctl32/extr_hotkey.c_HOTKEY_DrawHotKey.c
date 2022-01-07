
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_8__ {int clrWindow; int clrWindowText; int clrBtnFace; int clrGrayText; } ;
struct TYPE_7__ {scalar_t__ CaretPos; int hwndSelf; int hFont; } ;
struct TYPE_6__ {scalar_t__ cx; } ;
typedef TYPE_1__ SIZE ;
typedef int LPCWSTR ;
typedef scalar_t__ INT ;
typedef TYPE_2__ HOTKEY_INFO ;
typedef int HFONT ;
typedef int HDC ;
typedef int COLORREF ;


 int GWL_STYLE ;
 scalar_t__ GetSystemMetrics (int ) ;
 int GetTextExtentPoint32W (int ,int ,int ,TYPE_1__*) ;
 int GetWindowLongW (int ,int ) ;
 int SM_CXBORDER ;
 int SM_CYBORDER ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetCaretPos (scalar_t__,scalar_t__) ;
 int SetTextColor (int ,int ) ;
 int TextOutW (int ,scalar_t__,scalar_t__,int ,int ) ;
 int WS_DISABLED ;
 TYPE_3__ comctl32_color ;

__attribute__((used)) static void
HOTKEY_DrawHotKey(HOTKEY_INFO *infoPtr, HDC hdc, LPCWSTR KeyName, WORD NameLen)
{
    SIZE TextSize;
    INT nXStart, nYStart;
    COLORREF clrOldText, clrOldBk;
    HFONT hFontOld;


    nXStart = GetSystemMetrics(SM_CXBORDER);
    nYStart = GetSystemMetrics(SM_CYBORDER);

    hFontOld = SelectObject(hdc, infoPtr->hFont);
    if (GetWindowLongW(infoPtr->hwndSelf, GWL_STYLE) & WS_DISABLED)
    {
        clrOldText = SetTextColor(hdc, comctl32_color.clrGrayText);
        clrOldBk = SetBkColor(hdc, comctl32_color.clrBtnFace);
    }
    else
    {
        clrOldText = SetTextColor(hdc, comctl32_color.clrWindowText);
        clrOldBk = SetBkColor(hdc, comctl32_color.clrWindow);
    }

    TextOutW(hdc, nXStart, nYStart, KeyName, NameLen);


    GetTextExtentPoint32W(hdc, KeyName, NameLen, &TextSize);
    infoPtr->CaretPos = nXStart + TextSize.cx;

    SetBkColor(hdc, clrOldBk);
    SetTextColor(hdc, clrOldText);
    SelectObject(hdc, hFontOld);


    SetCaretPos(infoPtr->CaretPos, nYStart);
}
