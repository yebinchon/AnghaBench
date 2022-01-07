
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int clr3dShadow; } ;
struct TYPE_7__ {int uItemState; int hdc; } ;
struct TYPE_9__ {int nHLStringBkMode; int clrText; int clrMark; int clrTextHighlight; int clrBtnHighlight; TYPE_1__ nmcd; } ;
struct TYPE_8__ {scalar_t__ nMaxTextRows; int dwDTFlags; int hFont; int hwndSelf; } ;
typedef TYPE_2__ TOOLBAR_INFO ;
typedef int RECT ;
typedef TYPE_3__ NMTBCUSTOMDRAW ;
typedef int LPCWSTR ;
typedef scalar_t__ HTHEME ;
typedef int HFONT ;
typedef int HDC ;
typedef int DWORD ;
typedef int COLORREF ;


 int CDIS_CHECKED ;
 int CDIS_DISABLED ;
 int CDIS_HOT ;
 int CDIS_INDETERMINATE ;
 int CDIS_MARKED ;
 int CDIS_SELECTED ;
 int DTT_GRAYED ;
 int DrawTextW (int ,int ,int,int *,int ) ;
 int DrawThemeText (scalar_t__,int ,int,int,int ,int,int ,int,int *) ;
 scalar_t__ GetWindowTheme (int ) ;
 int OffsetRect (int *,int,int) ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetBkMode (int ,int) ;
 int SetTextColor (int ,int ) ;
 int TBCDRF_HILITEHOTTRACK ;
 int TBCDRF_NOMARK ;
 int TP_BUTTON ;
 int TRACE (char*,int ,int ) ;
 int TS_DISABLED ;
 int TS_HOT ;
 int TS_HOTCHECKED ;
 int TS_NORMAL ;
 int TS_PRESSED ;
 TYPE_4__ comctl32_color ;
 int debugstr_w (int ) ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static void
TOOLBAR_DrawString (const TOOLBAR_INFO *infoPtr, RECT *rcText, LPCWSTR lpText,
                    const NMTBCUSTOMDRAW *tbcd, DWORD dwItemCDFlag)
{
    HDC hdc = tbcd->nmcd.hdc;
    HFONT hOldFont = 0;
    COLORREF clrOld = 0;
    COLORREF clrOldBk = 0;
    int oldBkMode = 0;
    UINT state = tbcd->nmcd.uItemState;





    if (lpText && infoPtr->nMaxTextRows > 0) {
        TRACE("string=%s rect=(%s)\n", debugstr_w(lpText),
              wine_dbgstr_rect(rcText));

 hOldFont = SelectObject (hdc, infoPtr->hFont);
 if ((state & CDIS_HOT) && (dwItemCDFlag & TBCDRF_HILITEHOTTRACK )) {
     clrOld = SetTextColor (hdc, tbcd->clrTextHighlight);
 }
 else if (state & CDIS_DISABLED) {
     clrOld = SetTextColor (hdc, tbcd->clrBtnHighlight);
     OffsetRect (rcText, 1, 1);
     DrawTextW (hdc, lpText, -1, rcText, infoPtr->dwDTFlags);
     SetTextColor (hdc, comctl32_color.clr3dShadow);
     OffsetRect (rcText, -1, -1);
 }
 else if (state & CDIS_INDETERMINATE) {
     clrOld = SetTextColor (hdc, comctl32_color.clr3dShadow);
 }
 else if ((state & CDIS_MARKED) && !(dwItemCDFlag & TBCDRF_NOMARK)) {
     clrOld = SetTextColor (hdc, tbcd->clrTextHighlight);
     clrOldBk = SetBkColor (hdc, tbcd->clrMark);
     oldBkMode = SetBkMode (hdc, tbcd->nHLStringBkMode);
 }
 else {
     clrOld = SetTextColor (hdc, tbcd->clrText);
 }

 DrawTextW (hdc, lpText, -1, rcText, infoPtr->dwDTFlags);
 SetTextColor (hdc, clrOld);
 if ((state & CDIS_MARKED) && !(dwItemCDFlag & TBCDRF_NOMARK))
 {
     SetBkColor (hdc, clrOldBk);
     SetBkMode (hdc, oldBkMode);
 }
 SelectObject (hdc, hOldFont);
    }
}
