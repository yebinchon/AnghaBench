#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
struct TYPE_18__ {int /*<<< orphan*/  clrWindowText; int /*<<< orphan*/  clrWindow; int /*<<< orphan*/  clrActiveCaption; int /*<<< orphan*/  clrGrayText; } ;
struct TYPE_14__ {int right; } ;
struct TYPE_16__ {int bottom; int left; int right; int /*<<< orphan*/  top; } ;
struct TYPE_17__ {int dwStyle; int nrFields; int select; int nCharsEntered; scalar_t__ bCalDepressed; int /*<<< orphan*/  calbutton; int /*<<< orphan*/  charsEntered; scalar_t__ haveFocus; TYPE_3__* fieldRect; TYPE_1__ checkbox; int /*<<< orphan*/  hFont; TYPE_3__ rcDraw; scalar_t__ dateValid; } ;
struct TYPE_15__ {int cy; int cx; } ;
typedef  TYPE_2__ SIZE ;
typedef  int SHORT ;
typedef  TYPE_3__ RECT ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBRUSH ;
typedef  TYPE_4__ DATETIME_INFO ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int DFCS_INACTIVE ; 
 int DFCS_PUSHED ; 
 int DFCS_SCROLLDOWN ; 
 int /*<<< orphan*/  DFC_SCROLL ; 
 int DTS_SHOWNONE ; 
 int DTS_UPDOWN ; 
 int DT_CENTER ; 
 int DT_SINGLELINE ; 
 int DT_VCENTER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  TRANSPARENT ; 
 int WS_DISABLED ; 
 TYPE_5__ comctl32_color ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*) ; 

__attribute__((used)) static void 
FUNC17 (DATETIME_INFO *infoPtr, HDC hdc)
{
    FUNC14("\n");

    if (infoPtr->dateValid) {
        int i, prevright;
        RECT *field;
        RECT *rcDraw = &infoPtr->rcDraw;
        SIZE size;
        COLORREF oldTextColor;
        SHORT fieldWidth = 0;
        HFONT oldFont = FUNC10 (hdc, infoPtr->hFont);
        INT oldBkMode = FUNC11 (hdc, TRANSPARENT);
        WCHAR txt[80];

        FUNC3 (infoPtr, 0, txt, FUNC0(txt));
        FUNC8 (hdc, txt, FUNC16(txt), &size);
        rcDraw->bottom = size.cy + 2;

        prevright = infoPtr->checkbox.right = ((infoPtr->dwStyle & DTS_SHOWNONE) ? 18 : 2);

        for (i = 0; i < infoPtr->nrFields; i++) {
            FUNC3 (infoPtr, i, txt, FUNC0(txt));
            FUNC8 (hdc, txt, FUNC16(txt), &size);
            FUNC2 (infoPtr, hdc, i, &fieldWidth);
            field = &infoPtr->fieldRect[i];
            field->left   = prevright;
            field->right  = prevright + fieldWidth;
            field->top    = rcDraw->top;
            field->bottom = rcDraw->bottom;
            prevright = field->right;

            if (infoPtr->dwStyle & WS_DISABLED)
                oldTextColor = FUNC13 (hdc, comctl32_color.clrGrayText);
            else if ((infoPtr->haveFocus) && (i == infoPtr->select)) {
                RECT selection;

                /* fill if focused */
                HBRUSH hbr = FUNC1 (comctl32_color.clrActiveCaption);

                if (infoPtr->nCharsEntered)
                {
                    FUNC15(txt, infoPtr->charsEntered, infoPtr->nCharsEntered * sizeof(WCHAR));
                    txt[infoPtr->nCharsEntered] = 0;
                    FUNC8 (hdc, txt, FUNC16(txt), &size);
                }

                FUNC12(&selection, 0, 0, size.cx, size.cy);
                /* center rectangle */
                FUNC9(&selection, (field->right  + field->left - size.cx)/2,
                                       (field->bottom - size.cy)/2);

                FUNC7(hdc, &selection, hbr);
                FUNC4 (hbr);
                oldTextColor = FUNC13 (hdc, comctl32_color.clrWindow);
            }
            else
                oldTextColor = FUNC13 (hdc, comctl32_color.clrWindowText);

            /* draw the date text using the colour set above */
            FUNC6 (hdc, txt, FUNC16(txt), field, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
            FUNC13 (hdc, oldTextColor);
        }
        FUNC11 (hdc, oldBkMode);
        FUNC10 (hdc, oldFont);
    }

    if (!(infoPtr->dwStyle & DTS_UPDOWN)) {
        FUNC5(hdc, &infoPtr->calbutton, DFC_SCROLL,
                         DFCS_SCROLLDOWN | (infoPtr->bCalDepressed ? DFCS_PUSHED : 0) |
                         (infoPtr->dwStyle & WS_DISABLED ? DFCS_INACTIVE : 0) );
    }
}