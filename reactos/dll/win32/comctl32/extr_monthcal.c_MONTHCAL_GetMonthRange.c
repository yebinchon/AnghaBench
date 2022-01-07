
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int wDay; int wYear; int wMonth; } ;
struct TYPE_16__ {TYPE_1__* calendars; } ;
struct TYPE_15__ {int wDay; int wYear; int wMonth; } ;
struct TYPE_14__ {TYPE_2__ month; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef TYPE_3__ MONTHCAL_INFO ;
typedef int LRESULT ;
typedef int INT ;
typedef int DWORD ;




 int MONTHCAL_CalculateDayOfWeek (TYPE_2__*,int ) ;
 int MONTHCAL_GetCalCount (TYPE_3__ const*) ;
 int MONTHCAL_GetMaxDate (TYPE_3__ const*,TYPE_2__*) ;
 int MONTHCAL_GetMinDate (TYPE_3__ const*,TYPE_2__*) ;
 int MONTHCAL_MonthLength (int ,int ) ;
 int TRACE (char*,int,TYPE_2__*) ;
 int TRUE ;
 int WARN (char*,int) ;
 TYPE_4__ min_allowed_date ;

__attribute__((used)) static LRESULT
MONTHCAL_GetMonthRange(const MONTHCAL_INFO *infoPtr, DWORD flag, SYSTEMTIME *st)
{
  INT range;

  TRACE("flag=%d, st=%p\n", flag, st);

  switch (flag) {
  case 128:
  {
      if (st)
      {
          st[0] = infoPtr->calendars[0].month;
          st[1] = infoPtr->calendars[MONTHCAL_GetCalCount(infoPtr)-1].month;

          if (st[0].wMonth == min_allowed_date.wMonth &&
              st[0].wYear == min_allowed_date.wYear)
          {
              st[0].wDay = min_allowed_date.wDay;
          }
          else
              st[0].wDay = 1;
          MONTHCAL_CalculateDayOfWeek(&st[0], TRUE);

          st[1].wDay = MONTHCAL_MonthLength(st[1].wMonth, st[1].wYear);
          MONTHCAL_CalculateDayOfWeek(&st[1], TRUE);
      }

      range = MONTHCAL_GetCalCount(infoPtr);
      break;
  }
  case 129:
  {
      if (st)
      {
          MONTHCAL_GetMinDate(infoPtr, &st[0]);
          MONTHCAL_GetMaxDate(infoPtr, &st[1]);
      }

      range = MONTHCAL_GetCalCount(infoPtr) + 2;
      break;
  }
  default:
      WARN("Unknown flag value, got %d\n", flag);
      range = 0;
  }

  return range;
}
