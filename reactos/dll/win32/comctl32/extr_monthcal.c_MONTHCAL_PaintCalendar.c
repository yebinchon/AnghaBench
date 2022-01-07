
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_16__ {scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_23__ {size_t firstDay; int* monthdayState; int * colors; scalar_t__ width_increment; TYPE_5__* calendars; int hFont; scalar_t__ textHeight; int * pens; int * brushes; TYPE_1__ todayrect; } ;
struct TYPE_22__ {scalar_t__ left; scalar_t__ right; scalar_t__ bottom; } ;
struct TYPE_21__ {int wDay; int wYear; int wMonth; } ;
struct TYPE_19__ {scalar_t__ right; } ;
struct TYPE_18__ {scalar_t__ left; scalar_t__ right; scalar_t__ bottom; } ;
struct TYPE_17__ {scalar_t__ bottom; } ;
struct TYPE_20__ {TYPE_7__ wdays; TYPE_4__ weeknums; TYPE_3__ days; TYPE_2__ title; TYPE_6__ month; } ;
typedef TYPE_6__ SYSTEMTIME ;
typedef TYPE_7__ RECT ;
typedef int PAINTSTRUCT ;
typedef TYPE_8__ MONTHCAL_INFO ;
typedef size_t INT ;
typedef int HPEN ;
typedef int HDC ;


 int ARRAY_SIZE (int *) ;
 size_t BrushMonth ;
 int DT_CENTER ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DrawTextW (int ,int *,int ,TYPE_7__*,int) ;
 int FillRect (int ,TYPE_7__*,int ) ;
 int LineTo (int ,scalar_t__,scalar_t__) ;
 size_t MCSC_MONTHBK ;
 size_t MCSC_TEXT ;
 size_t MCSC_TITLEBK ;
 int MONTHCAL_DrawDay (TYPE_8__ const*,int ,TYPE_6__*,int,int const*) ;
 int MONTHCAL_MonthLength (int ,int ) ;
 int MoveToEx (int ,scalar_t__,scalar_t__,int *) ;
 int OffsetRect (TYPE_7__*,scalar_t__,int ) ;
 size_t PenText ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int get_localized_dayname (TYPE_8__ const*,size_t,int *,int ) ;
 int strlenW (int *) ;

__attribute__((used)) static void MONTHCAL_PaintCalendar(const MONTHCAL_INFO *infoPtr, HDC hdc, const PAINTSTRUCT *ps, INT calIdx)
{
  const SYSTEMTIME *date = &infoPtr->calendars[calIdx].month;
  INT i, j;
  UINT length;
  RECT r, fill_bk_rect;
  SYSTEMTIME st;
  WCHAR buf[80];
  HPEN old_pen;
  int mask;


  fill_bk_rect = infoPtr->calendars[calIdx].wdays;
  fill_bk_rect.bottom = infoPtr->calendars[calIdx].days.bottom +
                          (infoPtr->todayrect.bottom - infoPtr->todayrect.top);

  FillRect(hdc, &fill_bk_rect, infoPtr->brushes[BrushMonth]);


  old_pen = SelectObject(hdc, infoPtr->pens[PenText]);
  MoveToEx(hdc, infoPtr->calendars[calIdx].days.left + 3,
                infoPtr->calendars[calIdx].title.bottom + infoPtr->textHeight + 1, ((void*)0));
  LineTo(hdc, infoPtr->calendars[calIdx].days.right - 3,
              infoPtr->calendars[calIdx].title.bottom + infoPtr->textHeight + 1);
  SelectObject(hdc, old_pen);

  infoPtr->calendars[calIdx].wdays.left = infoPtr->calendars[calIdx].days.left =
      infoPtr->calendars[calIdx].weeknums.right;


  SelectObject(hdc, infoPtr->hFont);
  SetBkColor(hdc, infoPtr->colors[MCSC_MONTHBK]);
  SetTextColor(hdc, infoPtr->colors[MCSC_TITLEBK]);

  r = infoPtr->calendars[calIdx].wdays;
  r.right = r.left + infoPtr->width_increment;

  i = infoPtr->firstDay;
  for(j = 0; j < 7; j++) {
    get_localized_dayname(infoPtr, (i + j + 6) % 7, buf, ARRAY_SIZE(buf));
    DrawTextW(hdc, buf, strlenW(buf), &r, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
    OffsetRect(&r, infoPtr->width_increment, 0);
  }


  SetTextColor(hdc, infoPtr->colors[MCSC_TEXT]);
  st = *date;
  st.wDay = 1;
  mask = 1;
  length = MONTHCAL_MonthLength(date->wMonth, date->wYear);
  while(st.wDay <= length)
  {
    MONTHCAL_DrawDay(infoPtr, hdc, &st, infoPtr->monthdayState[calIdx+1] & mask, ps);
    mask <<= 1;
    st.wDay++;
  }
}
