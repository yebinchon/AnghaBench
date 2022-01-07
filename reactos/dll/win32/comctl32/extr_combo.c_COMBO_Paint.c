
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int wState; int textRect; int buttonRect; int self; } ;
typedef int RECT ;
typedef int LRESULT ;
typedef TYPE_1__ HEADCOMBO ;
typedef int HDC ;
typedef scalar_t__ HBRUSH ;


 int CBF_EDIT ;
 int CBPaintBorder (int ,TYPE_1__*,int ) ;
 int CBPaintButton (TYPE_1__*,int ,int ) ;
 int CBPaintText (TYPE_1__*,int ) ;
 scalar_t__ CBS_DROPDOWNLIST ;
 scalar_t__ CB_GETTYPE (TYPE_1__*) ;
 int COLOR_WINDOW ;
 scalar_t__ COMBO_PrepareColors (TYPE_1__*,int ) ;
 int EDIT_CONTROL_PADDING () ;
 int FillRect (int ,int *,scalar_t__) ;
 int FrameRect (int ,int *,int ) ;
 int GetSysColorBrush (int ) ;
 int InflateRect (int *,int ,int ) ;
 int IsRectEmpty (int *) ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int TRACE (char*,int ) ;

__attribute__((used)) static LRESULT COMBO_Paint(HEADCOMBO *lphc, HDC hdc)
{
    HBRUSH hPrevBrush, hBkgBrush;

    TRACE("hdc=%p\n", hdc);





    hBkgBrush = COMBO_PrepareColors(lphc, hdc);
    hPrevBrush = SelectObject(hdc, hBkgBrush);
    if (!(lphc->wState & CBF_EDIT))
        FillRect(hdc, &lphc->textRect, hBkgBrush);




    CBPaintBorder(lphc->self, lphc, hdc);

    if (!IsRectEmpty(&lphc->buttonRect))
        CBPaintButton(lphc, hdc, lphc->buttonRect);


    if (CB_GETTYPE(lphc) != CBS_DROPDOWNLIST)
    {
        RECT rPadEdit = lphc->textRect;

        InflateRect(&rPadEdit, EDIT_CONTROL_PADDING(), EDIT_CONTROL_PADDING());

        FrameRect(hdc, &rPadEdit, GetSysColorBrush(COLOR_WINDOW));
    }

    if (!(lphc->wState & CBF_EDIT))
        CBPaintText( lphc, hdc );

    if (hPrevBrush)
        SelectObject( hdc, hPrevBrush );

    return 0;
}
