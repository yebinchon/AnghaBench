
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ clrBtnShadow; scalar_t__ clrBtnHighlight; } ;
struct TYPE_8__ {int left; int right; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_7__ {scalar_t__ clrBtnShadow; scalar_t__ clrBtnHighlight; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ RECT ;
typedef int HDC ;
typedef scalar_t__ COLORREF ;


 scalar_t__ CLR_DEFAULT ;
 int ETO_OPAQUE ;
 int ExtTextOutW (int ,int ,int ,int ,TYPE_2__*,int ,int ,int ) ;
 scalar_t__ SetBkColor (int ,scalar_t__) ;
 TYPE_3__ comctl32_color ;

__attribute__((used)) static void
TOOLBAR_DrawFlatSeparator (const RECT *lpRect, HDC hdc, const TOOLBAR_INFO *infoPtr)
{
    RECT myrect;
    COLORREF oldcolor, newcolor;

    myrect.left = (lpRect->left + lpRect->right) / 2 - 1;
    myrect.right = myrect.left + 1;
    myrect.top = lpRect->top + 2;
    myrect.bottom = lpRect->bottom - 2;

    newcolor = (infoPtr->clrBtnShadow == CLR_DEFAULT) ?
         comctl32_color.clrBtnShadow : infoPtr->clrBtnShadow;
    oldcolor = SetBkColor (hdc, newcolor);
    ExtTextOutW (hdc, 0, 0, ETO_OPAQUE, &myrect, 0, 0, 0);

    myrect.left = myrect.right;
    myrect.right = myrect.left + 1;

    newcolor = (infoPtr->clrBtnHighlight == CLR_DEFAULT) ?
         comctl32_color.clrBtnHighlight : infoPtr->clrBtnHighlight;
    SetBkColor (hdc, newcolor);
    ExtTextOutW (hdc, 0, 0, ETO_OPAQUE, &myrect, 0, 0, 0);

    SetBkColor (hdc, oldcolor);
}
