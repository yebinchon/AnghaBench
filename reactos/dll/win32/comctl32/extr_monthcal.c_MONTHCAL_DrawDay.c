
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef char WCHAR ;
struct TYPE_11__ {int wDay; } ;
struct TYPE_14__ {int hFont; int hBoldFont; int * brushes; int * colors; TYPE_10__ maxSel; TYPE_10__ minSel; } ;
struct TYPE_13__ {int rcPaint; } ;
struct TYPE_12__ {int wDay; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int RECT ;
typedef TYPE_2__ PAINTSTRUCT ;
typedef TYPE_3__ MONTHCAL_INFO ;
typedef int INT ;
typedef int HDC ;
typedef int COLORREF ;


 size_t BrushTitle ;
 int DT_CENTER ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DrawTextW (int ,char*,int,int *,int) ;
 int FillRect (int ,int *,int ) ;
 int IntersectRect (int *,int *,int *) ;
 size_t MCSC_MONTHBK ;
 size_t MCSC_TRAILINGTEXT ;
 scalar_t__ MONTHCAL_CompareDate (TYPE_1__ const*,TYPE_10__*) ;
 int MONTHCAL_GetDayRect (TYPE_3__ const*,TYPE_1__ const*,int *,int) ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetBkMode (int ,int) ;
 int SetTextColor (int ,int ) ;
 int TRACE (char*,int ,...) ;
 int TRANSPARENT ;
 int wine_dbgstr_rect (int *) ;
 int wsprintfW (char*,char const*,int ) ;

__attribute__((used)) static void MONTHCAL_DrawDay(const MONTHCAL_INFO *infoPtr, HDC hdc, const SYSTEMTIME *st,
                             int bold, const PAINTSTRUCT *ps)
{
  static const WCHAR fmtW[] = { '%','d',0 };
  WCHAR buf[10];
  RECT r, r_temp;
  COLORREF oldCol = 0;
  COLORREF oldBk = 0;
  INT old_bkmode, selection;



  MONTHCAL_GetDayRect(infoPtr, st, &r, -1);
  if(!IntersectRect(&r_temp, &(ps->rcPaint), &r)) return;

  if ((MONTHCAL_CompareDate(st, &infoPtr->minSel) >= 0) &&
      (MONTHCAL_CompareDate(st, &infoPtr->maxSel) <= 0))
  {
    TRACE("%d %d %d\n", st->wDay, infoPtr->minSel.wDay, infoPtr->maxSel.wDay);
    TRACE("%s\n", wine_dbgstr_rect(&r));
    oldCol = SetTextColor(hdc, infoPtr->colors[MCSC_MONTHBK]);
    oldBk = SetBkColor(hdc, infoPtr->colors[MCSC_TRAILINGTEXT]);
    FillRect(hdc, &r, infoPtr->brushes[BrushTitle]);

    selection = 1;
  }
  else
    selection = 0;

  SelectObject(hdc, bold ? infoPtr->hBoldFont : infoPtr->hFont);

  old_bkmode = SetBkMode(hdc, TRANSPARENT);
  wsprintfW(buf, fmtW, st->wDay);
  DrawTextW(hdc, buf, -1, &r, DT_CENTER | DT_VCENTER | DT_SINGLELINE );
  SetBkMode(hdc, old_bkmode);

  if (selection)
  {
    SetTextColor(hdc, oldCol);
    SetBkColor(hdc, oldBk);
  }
}
