
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_18__ {int wDay; scalar_t__ wMilliseconds; scalar_t__ wSecond; scalar_t__ wMinute; scalar_t__ wHour; } ;
struct TYPE_19__ {int dwStyle; int hwndSelf; TYPE_2__ maxSel; TYPE_2__ minSel; TYPE_1__* calendars; } ;
struct TYPE_17__ {int month; } ;
typedef TYPE_2__ SYSTEMTIME ;
typedef int RECT ;
typedef TYPE_3__ MONTHCAL_INFO ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int MCS_MULTISELECT ;
 int MONTHCAL_CalculateDayOfWeek (TYPE_2__*,int ) ;
 scalar_t__ MONTHCAL_GetCalCount (TYPE_3__*) ;
 int MONTHCAL_GetDayRect (TYPE_3__*,TYPE_2__*,int *,int) ;
 int MONTHCAL_GetMonth (int *,scalar_t__) ;
 scalar_t__ MONTHCAL_IsDateEqual (TYPE_2__*,TYPE_2__*) ;
 int MONTHCAL_IsDateInValidRange (TYPE_3__*,TYPE_2__*,int ) ;
 scalar_t__ MONTHCAL_MonthDiff (int *,TYPE_2__*) ;
 int MONTHCAL_ValidateDate (TYPE_2__*) ;
 int TRACE (char*,TYPE_2__*) ;
 int TRUE ;

__attribute__((used)) static LRESULT
MONTHCAL_SetCurSel(MONTHCAL_INFO *infoPtr, SYSTEMTIME *curSel)
{
  SYSTEMTIME prev = infoPtr->minSel, selection;
  INT diff;
  WORD day;

  TRACE("%p\n", curSel);
  if(!curSel) return FALSE;
  if(infoPtr->dwStyle & MCS_MULTISELECT) return FALSE;

  if(!MONTHCAL_ValidateDate(curSel)) return FALSE;

  if (MONTHCAL_IsDateEqual(&infoPtr->minSel, curSel)) return TRUE;

  selection = *curSel;
  selection.wHour = selection.wMinute = selection.wSecond = selection.wMilliseconds = 0;
  MONTHCAL_CalculateDayOfWeek(&selection, TRUE);

  if(!MONTHCAL_IsDateInValidRange(infoPtr, &selection, FALSE)) return FALSE;


  diff = MONTHCAL_MonthDiff(&infoPtr->calendars[MONTHCAL_GetCalCount(infoPtr)-1].month, curSel);
  if (diff <= 0)
  {
    diff = MONTHCAL_MonthDiff(&infoPtr->calendars[0].month, curSel);
    if (diff > 0) diff = 0;
  }

  if (diff != 0)
  {
    INT i;

    for (i = 0; i < MONTHCAL_GetCalCount(infoPtr); i++)
      MONTHCAL_GetMonth(&infoPtr->calendars[i].month, diff);
  }


  selection = *curSel;
  MONTHCAL_CalculateDayOfWeek(&selection, TRUE);
  infoPtr->minSel = infoPtr->maxSel = selection;


  day = prev.wDay;
  prev.wDay = curSel->wDay;
  if (MONTHCAL_IsDateEqual(&prev, curSel))
  {
    RECT r_prev, r_new;

    prev.wDay = day;
    MONTHCAL_GetDayRect(infoPtr, &prev, &r_prev, -1);
    MONTHCAL_GetDayRect(infoPtr, curSel, &r_new, -1);

    InvalidateRect(infoPtr->hwndSelf, &r_prev, FALSE);
    InvalidateRect(infoPtr->hwndSelf, &r_new, FALSE);
  }
  else
    InvalidateRect(infoPtr->hwndSelf, ((void*)0), FALSE);

  return TRUE;
}
