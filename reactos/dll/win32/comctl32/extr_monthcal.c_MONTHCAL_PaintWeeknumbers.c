
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_15__ {int dwStyle; size_t firstDay; TYPE_1__* calendars; int * pens; scalar_t__ height_increment; int * colors; int * brushes; } ;
struct TYPE_14__ {scalar_t__ bottom; int right; scalar_t__ top; } ;
struct TYPE_13__ {size_t wDay; int wMonth; int wYear; } ;
struct TYPE_12__ {TYPE_3__ weeknums; TYPE_2__ month; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef TYPE_3__ RECT ;
typedef int PAINTSTRUCT ;
typedef TYPE_4__ MONTHCAL_INFO ;
typedef size_t INT ;
typedef int HPEN ;
typedef int HDC ;


 int ARRAY_SIZE (char*) ;
 size_t BrushMonth ;
 int DT_CENTER ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DrawTextW (int ,char*,int,TYPE_3__*,int) ;
 int FALSE ;
 int FillRect (int ,TYPE_3__*,int ) ;
 int GetLocaleInfoW (int ,int ,char*,int ) ;
 int LOCALE_IFIRSTWEEKOFYEAR ;
 int LOCALE_USER_DEFAULT ;
 int LineTo (int ,int ,scalar_t__) ;
 size_t MCSC_TITLEBK ;
 int MCS_WEEKNUMBERS ;
 size_t MONTHCAL_CalculateDayOfWeek (TYPE_2__*,int ) ;
 int MONTHCAL_GetMinDate (TYPE_4__ const*,TYPE_2__*) ;
 scalar_t__ MONTHCAL_MonthLength (size_t,int) ;
 int MoveToEx (int ,int ,scalar_t__,int *) ;
 int OffsetRect (TYPE_3__*,int ,scalar_t__) ;
 size_t PenText ;
 int SelectObject (int ,int ) ;
 int SetTextColor (int ,int ) ;
 int WARN (char*,size_t) ;
 size_t atoiW (char*) ;
 int wsprintfW (char*,char const*,size_t) ;

__attribute__((used)) static void MONTHCAL_PaintWeeknumbers(const MONTHCAL_INFO *infoPtr, HDC hdc, const PAINTSTRUCT *ps, INT calIdx)
{
  const SYSTEMTIME *date = &infoPtr->calendars[calIdx].month;
  static const WCHAR fmt_weekW[] = { '%','d',0 };
  INT mindays, weeknum, weeknum1, startofprescal;
  INT i, prev_month;
  SYSTEMTIME st;
  WCHAR buf[80];
  HPEN old_pen;
  RECT r;

  if (!(infoPtr->dwStyle & MCS_WEEKNUMBERS)) return;

  MONTHCAL_GetMinDate(infoPtr, &st);
  startofprescal = st.wDay;
  st = *date;

  prev_month = date->wMonth - 1;
  if(prev_month == 0) prev_month = 12;
  GetLocaleInfoW(LOCALE_USER_DEFAULT, LOCALE_IFIRSTWEEKOFYEAR, buf, ARRAY_SIZE(buf));
  weeknum = atoiW(buf);
  switch (weeknum)
  {
    case 1: mindays = 6;
 break;
    case 2: mindays = 3;
 break;
    case 0: mindays = 0;
        break;
    default:
        WARN("Unknown LOCALE_IFIRSTWEEKOFYEAR value %d, defaulting to 0\n", weeknum);
 mindays = 0;
  }

  if (date->wMonth == 1)
  {

    st.wDay = st.wMonth = 1;
    weeknum1 = MONTHCAL_CalculateDayOfWeek(&st, FALSE);
    if ((infoPtr->firstDay - weeknum1) % 7 > mindays)
 weeknum = 1;
    else
    {
 weeknum = 0;
 for(i = 0; i < 11; i++)
    weeknum += MONTHCAL_MonthLength(i+1, date->wYear - 1);

 weeknum += startofprescal + 7;
 weeknum /= 7;
 st.wYear -= 1;
 weeknum1 = MONTHCAL_CalculateDayOfWeek(&st, FALSE);
 if ((infoPtr->firstDay - weeknum1) % 7 > mindays) weeknum++;
    }
  }
  else
  {
    weeknum = 0;
    for(i = 0; i < prev_month - 1; i++)
 weeknum += MONTHCAL_MonthLength(i+1, date->wYear);

    weeknum += startofprescal + 7;
    weeknum /= 7;
    st.wDay = st.wMonth = 1;
    weeknum1 = MONTHCAL_CalculateDayOfWeek(&st, FALSE);
    if ((infoPtr->firstDay - weeknum1) % 7 > mindays) weeknum++;
  }

  r = infoPtr->calendars[calIdx].weeknums;


  FillRect(hdc, &r, infoPtr->brushes[BrushMonth]);
  SetTextColor(hdc, infoPtr->colors[MCSC_TITLEBK]);


  r.bottom = r.top + infoPtr->height_increment;

  for(i = 0; i < 6; i++) {
    if((i == 0) && (weeknum > 50))
    {
        wsprintfW(buf, fmt_weekW, weeknum);
        weeknum = 0;
    }
    else if((i == 5) && (weeknum > 47))
    {
 wsprintfW(buf, fmt_weekW, 1);
    }
    else
 wsprintfW(buf, fmt_weekW, weeknum + i);

    DrawTextW(hdc, buf, -1, &r, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
    OffsetRect(&r, 0, infoPtr->height_increment);
  }


  old_pen = SelectObject(hdc, infoPtr->pens[PenText]);
  MoveToEx(hdc, infoPtr->calendars[calIdx].weeknums.right, infoPtr->calendars[calIdx].weeknums.top + 3 , ((void*)0));
  LineTo(hdc, infoPtr->calendars[calIdx].weeknums.right, infoPtr->calendars[calIdx].weeknums.bottom);
  SelectObject(hdc, old_pen);
}
