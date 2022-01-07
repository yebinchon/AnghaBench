
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* calendars; } ;
struct TYPE_7__ {int month; } ;
typedef int SYSTEMTIME ;
typedef int RECT ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ MONTHCAL_CompareMonths (int const*,int *) ;
 int MONTHCAL_GetCalCount (TYPE_2__ const*) ;
 int MONTHCAL_GetDayPos (TYPE_2__ const*,int const*,int*,int*,int) ;
 int MONTHCAL_GetDayRectI (TYPE_2__ const*,int *,int,int,int) ;
 int MONTHCAL_ValidateDate (int const*) ;
 int SetRectEmpty (int *) ;
 int TRUE ;

__attribute__((used)) static BOOL MONTHCAL_GetDayRect(const MONTHCAL_INFO *infoPtr, const SYSTEMTIME *date, RECT *r, INT calIdx)
{
  INT col, row;

  if (!MONTHCAL_ValidateDate(date))
  {
      SetRectEmpty(r);
      return FALSE;
  }

  if (calIdx == -1)
  {
      INT cmp = MONTHCAL_CompareMonths(date, &infoPtr->calendars[0].month);

      if (cmp <= 0)
          calIdx = 0;
      else
      {
          cmp = MONTHCAL_CompareMonths(date, &infoPtr->calendars[MONTHCAL_GetCalCount(infoPtr)-1].month);
          if (cmp >= 0)
              calIdx = MONTHCAL_GetCalCount(infoPtr)-1;
          else
          {
              for (calIdx = 1; calIdx < MONTHCAL_GetCalCount(infoPtr)-1; calIdx++)
                  if (MONTHCAL_CompareMonths(date, &infoPtr->calendars[calIdx].month) == 0)
                      break;
          }
      }
  }

  MONTHCAL_GetDayPos(infoPtr, date, &col, &row, calIdx);
  MONTHCAL_GetDayRectI(infoPtr, r, col, row, calIdx);

  return TRUE;
}
