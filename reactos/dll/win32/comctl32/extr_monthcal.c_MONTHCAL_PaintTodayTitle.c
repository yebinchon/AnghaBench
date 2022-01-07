
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_6__ {int cx; int cy; } ;
struct TYPE_7__ {int dwStyle; int width_increment; int * colors; int hBoldFont; int todaysDate; TYPE_1__ dim; } ;
typedef int RECT ;
typedef int PAINTSTRUCT ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef int INT ;
typedef int HFONT ;
typedef int HDC ;


 int ARRAY_SIZE (char*) ;
 int COMCTL32_hModule ;
 int DATE_SHORTDATE ;
 int DT_CALCRECT ;
 int DT_LEFT ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DrawTextW (int ,char*,int,int *,int) ;
 int GetDateFormatW (int ,int ,int *,int *,char*,int ) ;
 int IDM_TODAY ;
 int LOCALE_USER_DEFAULT ;
 int LoadStringW (int ,int ,char*,int ) ;
 size_t MCSC_TEXT ;
 int MCS_NOTODAY ;
 int MCS_NOTODAYCIRCLE ;
 int MCS_WEEKNUMBERS ;
 int MONTHCAL_Circle (TYPE_2__ const*,int ,int *) ;
 int MONTHCAL_GetDayRectI (TYPE_2__ const*,int *,int,int,int) ;
 int OffsetRect (int *,int ,int ) ;
 int SelectObject (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int wsprintfW (char*,char const*,char*,char*) ;

__attribute__((used)) static void MONTHCAL_PaintTodayTitle(const MONTHCAL_INFO *infoPtr, HDC hdc, const PAINTSTRUCT *ps)
{
  static const WCHAR fmt_todayW[] = { '%','s',' ','%','s',0 };
  WCHAR buf_todayW[30], buf_dateW[20], buf[80];
  RECT text_rect, box_rect;
  HFONT old_font;
  INT col;

  if(infoPtr->dwStyle & MCS_NOTODAY) return;

  LoadStringW(COMCTL32_hModule, IDM_TODAY, buf_todayW, ARRAY_SIZE(buf_todayW));
  col = infoPtr->dwStyle & MCS_NOTODAYCIRCLE ? 0 : 1;
  if (infoPtr->dwStyle & MCS_WEEKNUMBERS) col--;

  MONTHCAL_GetDayRectI(infoPtr, &text_rect, col, 6, infoPtr->dim.cx * infoPtr->dim.cy - infoPtr->dim.cx);
  box_rect = text_rect;

  GetDateFormatW(LOCALE_USER_DEFAULT, DATE_SHORTDATE, &infoPtr->todaysDate, ((void*)0), buf_dateW, ARRAY_SIZE(buf_dateW));
  old_font = SelectObject(hdc, infoPtr->hBoldFont);
  SetTextColor(hdc, infoPtr->colors[MCSC_TEXT]);

  wsprintfW(buf, fmt_todayW, buf_todayW, buf_dateW);
  DrawTextW(hdc, buf, -1, &text_rect, DT_CALCRECT | DT_LEFT | DT_VCENTER | DT_SINGLELINE);
  DrawTextW(hdc, buf, -1, &text_rect, DT_LEFT | DT_VCENTER | DT_SINGLELINE);

  if(!(infoPtr->dwStyle & MCS_NOTODAYCIRCLE)) {
    OffsetRect(&box_rect, -infoPtr->width_increment, 0);
    MONTHCAL_Circle(infoPtr, hdc, &box_rect);
  }

  SelectObject(hdc, old_font);
}
