
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dwStyle; int focusedSel; int todaysDate; TYPE_1__* calendars; } ;
struct TYPE_7__ {int month; } ;
typedef int RECT ;
typedef int PAINTSTRUCT ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef size_t INT ;
typedef int HDC ;


 int DrawFocusRect (int ,int *) ;
 int MCS_NOTODAYCIRCLE ;
 int MONTHCAL_CircleDay (TYPE_2__ const*,int ,int *) ;
 int MONTHCAL_CompareMonths (int *,int *) ;
 size_t MONTHCAL_GetCalCount (TYPE_2__ const*) ;
 int MONTHCAL_GetDayRect (TYPE_2__ const*,int *,int *,int) ;
 int MONTHCAL_IsDateEqual (int *,int *) ;
 int st_null ;

__attribute__((used)) static void MONTHCAL_PaintFocusAndCircle(const MONTHCAL_INFO *infoPtr, HDC hdc, const PAINTSTRUCT *ps)
{

  if (!(infoPtr->dwStyle & MCS_NOTODAYCIRCLE))
  {
    INT i;

    for (i = 0; i < MONTHCAL_GetCalCount(infoPtr); i++)
      if (!MONTHCAL_CompareMonths(&infoPtr->todaysDate, &infoPtr->calendars[i].month))
      {
        MONTHCAL_CircleDay(infoPtr, hdc, &infoPtr->todaysDate);
        break;
      }
  }

  if (!MONTHCAL_IsDateEqual(&infoPtr->focusedSel, &st_null))
  {
    RECT r;
    MONTHCAL_GetDayRect(infoPtr, &infoPtr->focusedSel, &r, -1);
    DrawFocusRect(hdc, &r);
  }
}
