
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ clrBtnShadow; scalar_t__ clrBtnHighlight; } ;
struct TYPE_10__ {int top; int bottom; int right; int left; } ;
struct TYPE_9__ {scalar_t__ clrBtnShadow; scalar_t__ clrBtnHighlight; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ RECT ;
typedef int HDC ;
typedef scalar_t__ COLORREF ;


 scalar_t__ CLR_DEFAULT ;
 int ETO_OPAQUE ;
 int ExtTextOutW (int ,int ,int ,int ,TYPE_2__*,int ,int ,int ) ;
 int InflateRect (TYPE_2__*,int,int ) ;
 scalar_t__ SetBkColor (int ,scalar_t__) ;
 int TRACE (char*,int ) ;
 TYPE_4__ comctl32_color ;
 int wine_dbgstr_rect (TYPE_2__*) ;

__attribute__((used)) static void
TOOLBAR_DrawFlatHorizontalSeparator (const RECT *lpRect, HDC hdc,
                             const TOOLBAR_INFO *infoPtr)
{
    RECT myrect;
    COLORREF oldcolor, newcolor;

    myrect.left = lpRect->left;
    myrect.right = lpRect->right;
    myrect.top = lpRect->top + (lpRect->bottom - lpRect->top - 2)/2;
    myrect.bottom = myrect.top + 1;

    InflateRect (&myrect, -2, 0);

    TRACE("rect=(%s)\n", wine_dbgstr_rect(&myrect));

    newcolor = (infoPtr->clrBtnShadow == CLR_DEFAULT) ?
         comctl32_color.clrBtnShadow : infoPtr->clrBtnShadow;
    oldcolor = SetBkColor (hdc, newcolor);
    ExtTextOutW (hdc, 0, 0, ETO_OPAQUE, &myrect, 0, 0, 0);

    myrect.top = myrect.bottom;
    myrect.bottom = myrect.top + 1;

    newcolor = (infoPtr->clrBtnHighlight == CLR_DEFAULT) ?
         comctl32_color.clrBtnHighlight : infoPtr->clrBtnHighlight;
    SetBkColor (hdc, newcolor);
    ExtTextOutW (hdc, 0, 0, ETO_OPAQUE, &myrect, 0, 0, 0);

    SetBkColor (hdc, oldcolor);
}
