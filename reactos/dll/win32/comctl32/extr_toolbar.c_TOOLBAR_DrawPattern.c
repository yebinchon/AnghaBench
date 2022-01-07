
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hdc; } ;
struct TYPE_8__ {int clrBtnFace; int clrBtnHighlight; int hbrMonoDither; TYPE_1__ nmcd; } ;
struct TYPE_7__ {int right; int left; int bottom; int top; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ NMTBCUSTOMDRAW ;
typedef int INT ;
typedef int HDC ;
typedef int HBRUSH ;
typedef int COLORREF ;


 int GetSystemMetrics (int ) ;
 int PATCOPY ;
 int PatBlt (int ,int,int,int,int,int ) ;
 int SM_CXEDGE ;
 int SM_CYEDGE ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetTextColor (int ,int ) ;

__attribute__((used)) static void
TOOLBAR_DrawPattern (const RECT *lpRect, const NMTBCUSTOMDRAW *tbcd)
{
    HDC hdc = tbcd->nmcd.hdc;
    HBRUSH hbr = SelectObject (hdc, tbcd->hbrMonoDither);
    COLORREF clrTextOld;
    COLORREF clrBkOld;
    INT cx = lpRect->right - lpRect->left;
    INT cy = lpRect->bottom - lpRect->top;
    INT cxEdge = GetSystemMetrics(SM_CXEDGE);
    INT cyEdge = GetSystemMetrics(SM_CYEDGE);
    clrTextOld = SetTextColor(hdc, tbcd->clrBtnHighlight);
    clrBkOld = SetBkColor(hdc, tbcd->clrBtnFace);
    PatBlt (hdc, lpRect->left + cxEdge, lpRect->top + cyEdge,
            cx - (2 * cxEdge), cy - (2 * cyEdge), PATCOPY);
    SetBkColor(hdc, clrBkOld);
    SetTextColor(hdc, clrTextOld);
    SelectObject (hdc, hbr);
}
