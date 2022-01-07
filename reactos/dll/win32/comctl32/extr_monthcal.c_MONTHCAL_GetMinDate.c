
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int firstDay; TYPE_1__* calendars; } ;
struct TYPE_9__ {int wDay; int wYear; int wMonth; } ;
struct TYPE_8__ {TYPE_2__ month; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef TYPE_3__ MONTHCAL_INFO ;
typedef int INT ;


 int FALSE ;
 int MONTHCAL_CalculateDayOfWeek (TYPE_2__*,int ) ;
 int MONTHCAL_GetPrevMonth (TYPE_2__*) ;
 scalar_t__ MONTHCAL_MonthLength (int ,int ) ;
 int TRUE ;

__attribute__((used)) static void MONTHCAL_GetMinDate(const MONTHCAL_INFO *infoPtr, SYSTEMTIME *date)
{

  SYSTEMTIME st_first = infoPtr->calendars[0].month;
  INT firstDay;

  st_first.wDay = 1;
  firstDay = MONTHCAL_CalculateDayOfWeek(&st_first, FALSE);

  *date = infoPtr->calendars[0].month;
  MONTHCAL_GetPrevMonth(date);

  date->wDay = MONTHCAL_MonthLength(date->wMonth, date->wYear) +
               (infoPtr->firstDay - firstDay) % 7 + 1;

  if(date->wDay > MONTHCAL_MonthLength(date->wMonth, date->wYear))
    date->wDay -= 7;


  MONTHCAL_CalculateDayOfWeek(date, TRUE);
}
