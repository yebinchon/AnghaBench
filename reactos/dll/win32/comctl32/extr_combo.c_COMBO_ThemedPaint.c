
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wState; int dwStyle; int buttonRect; int self; int textRect; } ;
typedef int RECT ;
typedef int LRESULT ;
typedef int HTHEME ;
typedef TYPE_1__ HEADCOMBO ;
typedef int HDC ;


 int CBF_BUTTONDOWN ;
 int CBF_HOT ;
 int CBPaintText (TYPE_1__*,int ) ;
 int CBS_DROPDOWNLIST ;
 scalar_t__ CBS_SIMPLE ;
 int CBXS_DISABLED ;
 int CBXS_HOT ;
 int CBXS_NORMAL ;
 int CBXS_PRESSED ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 int COMBO_XBORDERSIZE () ;
 int COMBO_YBORDERSIZE () ;
 int CP_DROPDOWNBUTTON ;
 int DrawThemeBackground (int ,int ,int ,int,int *,int *) ;
 int EDIT_CONTROL_PADDING () ;
 int GetClientRect (int ,int *) ;
 int InflateRect (int *,int ,int ) ;
 int IsRectEmpty (int *) ;
 scalar_t__ IsWindowEnabled (int ) ;

__attribute__((used)) static LRESULT COMBO_ThemedPaint(HTHEME theme, HEADCOMBO *lphc, HDC hdc)
{
    int button_state;
    RECT frame;


    if (CB_GETTYPE(lphc) != CBS_SIMPLE)
        GetClientRect(lphc->self, &frame);
    else
    {
        frame = lphc->textRect;
        InflateRect(&frame, EDIT_CONTROL_PADDING(), EDIT_CONTROL_PADDING());
        InflateRect(&frame, COMBO_XBORDERSIZE(), COMBO_YBORDERSIZE());
    }

    DrawThemeBackground(theme, hdc, 0, IsWindowEnabled(lphc->self) ? CBXS_NORMAL : CBXS_DISABLED, &frame, ((void*)0));


    if (!IsRectEmpty(&lphc->buttonRect))
    {
        if (!IsWindowEnabled(lphc->self))
            button_state = CBXS_DISABLED;
        else if (lphc->wState & CBF_BUTTONDOWN)
            button_state = CBXS_PRESSED;
        else if (lphc->wState & CBF_HOT)
            button_state = CBXS_HOT;
        else
            button_state = CBXS_NORMAL;
        DrawThemeBackground(theme, hdc, CP_DROPDOWNBUTTON, button_state, &lphc->buttonRect, ((void*)0));
    }

    if ((lphc->dwStyle & CBS_DROPDOWNLIST) == CBS_DROPDOWNLIST)
        CBPaintText(lphc, hdc);

    return 0;
}
