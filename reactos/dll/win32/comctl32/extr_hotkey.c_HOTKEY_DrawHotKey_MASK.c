#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_8__ {int /*<<< orphan*/  clrWindow; int /*<<< orphan*/  clrWindowText; int /*<<< orphan*/  clrBtnFace; int /*<<< orphan*/  clrGrayText; } ;
struct TYPE_7__ {scalar_t__ CaretPos; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  hFont; } ;
struct TYPE_6__ {scalar_t__ cx; } ;
typedef  TYPE_1__ SIZE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ INT ;
typedef  TYPE_2__ HOTKEY_INFO ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  GWL_STYLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXBORDER ; 
 int /*<<< orphan*/  SM_CYBORDER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WS_DISABLED ; 
 TYPE_3__ comctl32_color ; 

__attribute__((used)) static void
FUNC8(HOTKEY_INFO *infoPtr, HDC hdc, LPCWSTR KeyName, WORD NameLen)
{
    SIZE TextSize;
    INT nXStart, nYStart;
    COLORREF clrOldText, clrOldBk;
    HFONT hFontOld;

    /* Make a gap from the frame */
    nXStart = FUNC0(SM_CXBORDER);
    nYStart = FUNC0(SM_CYBORDER);

    hFontOld = FUNC3(hdc, infoPtr->hFont);
    if (FUNC2(infoPtr->hwndSelf, GWL_STYLE) & WS_DISABLED)
    {
        clrOldText = FUNC6(hdc, comctl32_color.clrGrayText);
        clrOldBk = FUNC4(hdc, comctl32_color.clrBtnFace);
    }
    else
    {
        clrOldText = FUNC6(hdc, comctl32_color.clrWindowText);
        clrOldBk = FUNC4(hdc, comctl32_color.clrWindow);
    }

    FUNC7(hdc, nXStart, nYStart, KeyName, NameLen);

    /* Get the text width for the caret */
    FUNC1(hdc, KeyName, NameLen, &TextSize);
    infoPtr->CaretPos = nXStart + TextSize.cx;

    FUNC4(hdc, clrOldBk);
    FUNC6(hdc, clrOldText);
    FUNC3(hdc, hFontOld);

    /* position the caret */
    FUNC5(infoPtr->CaretPos, nYStart);
}