
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int dwStyle; int minSel; TYPE_1__* calendars; } ;
struct TYPE_8__ {int month; } ;
typedef int SYSTEMTIME ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 int MCS_MULTISELECT ;
 scalar_t__ MONTHCAL_CompareMonths (int *,int *) ;
 int MONTHCAL_GetCalCount (TYPE_2__*) ;
 int MONTHCAL_GetMonth (int *,int) ;
 int MONTHCAL_GetSelRange (TYPE_2__*,int *) ;
 int MONTHCAL_SetCurSel (TYPE_2__*,int *) ;
 int MONTHCAL_SetSelRange (TYPE_2__*,int *) ;

__attribute__((used)) static void MONTHCAL_Scroll(MONTHCAL_INFO *infoPtr, INT delta, BOOL keep_selection)
{
  INT i, selIdx = -1;

  for(i = 0; i < MONTHCAL_GetCalCount(infoPtr); i++)
  {

    if (selIdx == -1 && MONTHCAL_CompareMonths(&infoPtr->minSel, &infoPtr->calendars[i].month) == 0)
      selIdx = i;

    MONTHCAL_GetMonth(&infoPtr->calendars[i].month, delta);
  }

  if (keep_selection)
    return;


  if (infoPtr->dwStyle & MCS_MULTISELECT)
  {
    SYSTEMTIME range[2];

    MONTHCAL_GetSelRange(infoPtr, range);
    MONTHCAL_GetMonth(&range[0], delta - selIdx);
    MONTHCAL_GetMonth(&range[1], delta - selIdx);
    MONTHCAL_SetSelRange(infoPtr, range);
  }
  else
  {
    SYSTEMTIME st = infoPtr->minSel;

    MONTHCAL_GetMonth(&st, delta - selIdx);
    MONTHCAL_SetCurSel(infoPtr, &st);
  }
}
