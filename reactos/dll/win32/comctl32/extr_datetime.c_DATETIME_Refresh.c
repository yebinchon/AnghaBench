
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
struct TYPE_18__ {int clrWindowText; int clrWindow; int clrActiveCaption; int clrGrayText; } ;
struct TYPE_14__ {int right; } ;
struct TYPE_16__ {int bottom; int left; int right; int top; } ;
struct TYPE_17__ {int dwStyle; int nrFields; int select; int nCharsEntered; scalar_t__ bCalDepressed; int calbutton; int charsEntered; scalar_t__ haveFocus; TYPE_3__* fieldRect; TYPE_1__ checkbox; int hFont; TYPE_3__ rcDraw; scalar_t__ dateValid; } ;
struct TYPE_15__ {int cy; int cx; } ;
typedef TYPE_2__ SIZE ;
typedef int SHORT ;
typedef TYPE_3__ RECT ;
typedef int INT ;
typedef int HFONT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef TYPE_4__ DATETIME_INFO ;
typedef int COLORREF ;


 int ARRAY_SIZE (scalar_t__*) ;
 int CreateSolidBrush (int ) ;
 int DATETIME_ReturnFieldWidth (TYPE_4__*,int ,int,int*) ;
 int DATETIME_ReturnTxt (TYPE_4__*,int,scalar_t__*,int ) ;
 int DFCS_INACTIVE ;
 int DFCS_PUSHED ;
 int DFCS_SCROLLDOWN ;
 int DFC_SCROLL ;
 int DTS_SHOWNONE ;
 int DTS_UPDOWN ;
 int DT_CENTER ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DeleteObject (int ) ;
 int DrawFrameControl (int ,int *,int ,int) ;
 int DrawTextW (int ,scalar_t__*,int ,TYPE_3__*,int) ;
 int FillRect (int ,TYPE_3__*,int ) ;
 int GetTextExtentPoint32W (int ,scalar_t__*,int ,TYPE_2__*) ;
 int OffsetRect (TYPE_3__*,int,int) ;
 int SelectObject (int ,int ) ;
 int SetBkMode (int ,int ) ;
 int SetRect (TYPE_3__*,int ,int ,int,int) ;
 int SetTextColor (int ,int ) ;
 int TRACE (char*) ;
 int TRANSPARENT ;
 int WS_DISABLED ;
 TYPE_5__ comctl32_color ;
 int memcpy (scalar_t__*,int ,int) ;
 int strlenW (scalar_t__*) ;

__attribute__((used)) static void
DATETIME_Refresh (DATETIME_INFO *infoPtr, HDC hdc)
{
    TRACE("\n");

    if (infoPtr->dateValid) {
        int i, prevright;
        RECT *field;
        RECT *rcDraw = &infoPtr->rcDraw;
        SIZE size;
        COLORREF oldTextColor;
        SHORT fieldWidth = 0;
        HFONT oldFont = SelectObject (hdc, infoPtr->hFont);
        INT oldBkMode = SetBkMode (hdc, TRANSPARENT);
        WCHAR txt[80];

        DATETIME_ReturnTxt (infoPtr, 0, txt, ARRAY_SIZE(txt));
        GetTextExtentPoint32W (hdc, txt, strlenW(txt), &size);
        rcDraw->bottom = size.cy + 2;

        prevright = infoPtr->checkbox.right = ((infoPtr->dwStyle & DTS_SHOWNONE) ? 18 : 2);

        for (i = 0; i < infoPtr->nrFields; i++) {
            DATETIME_ReturnTxt (infoPtr, i, txt, ARRAY_SIZE(txt));
            GetTextExtentPoint32W (hdc, txt, strlenW(txt), &size);
            DATETIME_ReturnFieldWidth (infoPtr, hdc, i, &fieldWidth);
            field = &infoPtr->fieldRect[i];
            field->left = prevright;
            field->right = prevright + fieldWidth;
            field->top = rcDraw->top;
            field->bottom = rcDraw->bottom;
            prevright = field->right;

            if (infoPtr->dwStyle & WS_DISABLED)
                oldTextColor = SetTextColor (hdc, comctl32_color.clrGrayText);
            else if ((infoPtr->haveFocus) && (i == infoPtr->select)) {
                RECT selection;


                HBRUSH hbr = CreateSolidBrush (comctl32_color.clrActiveCaption);

                if (infoPtr->nCharsEntered)
                {
                    memcpy(txt, infoPtr->charsEntered, infoPtr->nCharsEntered * sizeof(WCHAR));
                    txt[infoPtr->nCharsEntered] = 0;
                    GetTextExtentPoint32W (hdc, txt, strlenW(txt), &size);
                }

                SetRect(&selection, 0, 0, size.cx, size.cy);

                OffsetRect(&selection, (field->right + field->left - size.cx)/2,
                                       (field->bottom - size.cy)/2);

                FillRect(hdc, &selection, hbr);
                DeleteObject (hbr);
                oldTextColor = SetTextColor (hdc, comctl32_color.clrWindow);
            }
            else
                oldTextColor = SetTextColor (hdc, comctl32_color.clrWindowText);


            DrawTextW (hdc, txt, strlenW(txt), field, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
            SetTextColor (hdc, oldTextColor);
        }
        SetBkMode (hdc, oldBkMode);
        SelectObject (hdc, oldFont);
    }

    if (!(infoPtr->dwStyle & DTS_UPDOWN)) {
        DrawFrameControl(hdc, &infoPtr->calbutton, DFC_SCROLL,
                         DFCS_SCROLLDOWN | (infoPtr->bCalDepressed ? DFCS_PUSHED : 0) |
                         (infoPtr->dwStyle & WS_DISABLED ? DFCS_INACTIVE : 0) );
    }
}
