
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int firstDay; TYPE_1__* calendars; } ;
struct TYPE_11__ {int wDay; int wYear; int wMonth; } ;
struct TYPE_10__ {TYPE_2__ month; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef TYPE_3__ MONTHCAL_INFO ;
typedef int LONG ;
typedef size_t INT ;


 int FALSE ;
 int MONTHCAL_CalculateDayOfWeek (TYPE_2__*,int ) ;
 int MONTHCAL_CompareMonths (TYPE_2__ const*,TYPE_2__*) ;
 int MONTHCAL_GetCalCount (TYPE_3__ const*) ;
 size_t MONTHCAL_MonthLength (int ,int ) ;

__attribute__((used)) static void MONTHCAL_GetDayPos(const MONTHCAL_INFO *infoPtr, const SYSTEMTIME *date,
    INT *col, INT *row, INT calIdx)
{
  SYSTEMTIME st = infoPtr->calendars[calIdx].month;
  INT first;

  st.wDay = 1;
  first = (MONTHCAL_CalculateDayOfWeek(&st, FALSE) + 6 - infoPtr->firstDay) % 7;

  if (calIdx == 0 || calIdx == MONTHCAL_GetCalCount(infoPtr)-1) {
      const SYSTEMTIME *cal = &infoPtr->calendars[calIdx].month;
      LONG cmp = MONTHCAL_CompareMonths(date, &st);


      if (cmp == -1) {
        *col = (first - MONTHCAL_MonthLength(date->wMonth, cal->wYear) + date->wDay) % 7;
        *row = 0;
        return;
      }


      if (cmp == 1)
          first += MONTHCAL_MonthLength(cal->wMonth, cal->wYear);
  }

  *col = (date->wDay + first) % 7;
  *row = (date->wDay + first - *col) / 7;
}
