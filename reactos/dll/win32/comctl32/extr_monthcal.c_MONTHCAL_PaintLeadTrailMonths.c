
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_16__ {int dwStyle; size_t* monthdayState; TYPE_1__* calendars; int * colors; } ;
struct TYPE_15__ {int wDay; int wYear; scalar_t__ wMonth; } ;
struct TYPE_14__ {TYPE_2__ month; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef int PAINTSTRUCT ;
typedef TYPE_3__ MONTHCAL_INFO ;
typedef size_t INT ;
typedef int HDC ;


 int GMR_DAYSTATE ;
 size_t MCSC_TRAILINGTEXT ;
 int MCS_NOTRAILINGDATES ;
 int MONTHCAL_DrawDay (TYPE_3__ const*,int ,TYPE_2__*,size_t,int const*) ;
 int MONTHCAL_GetCalCount (TYPE_3__ const*) ;
 int MONTHCAL_GetMaxDate (TYPE_3__ const*,TYPE_2__*) ;
 int MONTHCAL_GetMinDate (TYPE_3__ const*,TYPE_2__*) ;
 int MONTHCAL_GetMonthRange (TYPE_3__ const*,int ,int ) ;
 int MONTHCAL_GetNextMonth (TYPE_2__*) ;
 int MONTHCAL_MonthLength (scalar_t__,int ) ;
 int SetTextColor (int ,int ) ;

__attribute__((used)) static void MONTHCAL_PaintLeadTrailMonths(const MONTHCAL_INFO *infoPtr, HDC hdc, const PAINTSTRUCT *ps)
{
  INT mask, index;
  UINT length;
  SYSTEMTIME st_max, st;

  if (infoPtr->dwStyle & MCS_NOTRAILINGDATES) return;

  SetTextColor(hdc, infoPtr->colors[MCSC_TRAILINGTEXT]);


  MONTHCAL_GetMinDate(infoPtr, &st);
  mask = 1 << (st.wDay-1);

  length = MONTHCAL_MonthLength(infoPtr->calendars[0].month.wMonth - 1,
                                infoPtr->calendars[0].month.wYear);
  index = 0;
  while(st.wDay <= length)
  {
      MONTHCAL_DrawDay(infoPtr, hdc, &st, infoPtr->monthdayState[index] & mask, ps);
      mask <<= 1;
      st.wDay++;
  }


  st = infoPtr->calendars[MONTHCAL_GetCalCount(infoPtr)-1].month;
  st.wDay = 1;
  MONTHCAL_GetNextMonth(&st);
  MONTHCAL_GetMaxDate(infoPtr, &st_max);
  mask = 1;
  index = MONTHCAL_GetMonthRange(infoPtr, GMR_DAYSTATE, 0)-1;
  while(st.wDay <= st_max.wDay)
  {
      MONTHCAL_DrawDay(infoPtr, hdc, &st, infoPtr->monthdayState[index] & mask, ps);
      mask <<= 1;
      st.wDay++;
  }
}
