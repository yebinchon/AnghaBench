
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
typedef int INT ;


 int FALSE ;
 int MONTHCAL_CalculateDayOfWeek (TYPE_2__*,int ) ;
 int MONTHCAL_GetCalCount (TYPE_3__ const*) ;
 int MONTHCAL_GetNextMonth (TYPE_2__*) ;
 int MONTHCAL_GetPrevMonth (TYPE_2__*) ;
 int MONTHCAL_MonthLength (int ,int ) ;
 int TRUE ;

__attribute__((used)) static void MONTHCAL_GetMaxDate(const MONTHCAL_INFO *infoPtr, SYSTEMTIME *date)
{

  SYSTEMTIME st, *lt_month = &infoPtr->calendars[MONTHCAL_GetCalCount(infoPtr)-1].month;
  INT first_day;

  *date = *lt_month;
  st = *lt_month;


  st.wDay = 1;
  first_day = MONTHCAL_CalculateDayOfWeek(&st, FALSE);

  MONTHCAL_GetNextMonth(date);
  MONTHCAL_GetPrevMonth(&st);


  st.wDay = MONTHCAL_MonthLength(st.wMonth, st.wYear) +
             (infoPtr->firstDay - first_day) % 7 + 1;
  if (st.wDay > MONTHCAL_MonthLength(st.wMonth, st.wYear)) st.wDay -= 7;


  date->wDay = 42 - (MONTHCAL_MonthLength(st.wMonth, st.wYear) - st.wDay + 1) -
                     MONTHCAL_MonthLength(lt_month->wMonth, lt_month->wYear);


  MONTHCAL_CalculateDayOfWeek(date, TRUE);
}
