
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum nav_direction { ____Placeholder_nav_direction } nav_direction ;
struct TYPE_10__ {int delta; int dwStyle; TYPE_1__* calendars; } ;
struct TYPE_9__ {int month; } ;
typedef int SYSTEMTIME ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef int INT ;
typedef int BOOL ;


 int DIRECTION_BACKWARD ;
 int FALSE ;
 int MCS_NOSELCHANGEONNAV ;
 int MONTHCAL_GetCalCount (TYPE_2__*) ;
 int MONTHCAL_GetMonth (int *,int) ;
 int MONTHCAL_IsDateInValidRange (TYPE_2__*,int *,int ) ;
 int MONTHCAL_NotifyDayState (TYPE_2__*) ;
 int MONTHCAL_NotifySelectionChange (TYPE_2__*) ;
 int MONTHCAL_Scroll (TYPE_2__*,int,int) ;
 int TRACE (char*,char*) ;

__attribute__((used)) static void MONTHCAL_GoToMonth(MONTHCAL_INFO *infoPtr, enum nav_direction direction)
{
  INT delta = infoPtr->delta ? infoPtr->delta : MONTHCAL_GetCalCount(infoPtr);
  BOOL keep_selection;
  SYSTEMTIME st;

  TRACE("%s\n", direction == DIRECTION_BACKWARD ? "back" : "fwd");


  if(direction == DIRECTION_BACKWARD)
  {
    st = infoPtr->calendars[0].month;
    MONTHCAL_GetMonth(&st, -delta);
  }
  else
  {
    st = infoPtr->calendars[MONTHCAL_GetCalCount(infoPtr)-1].month;
    MONTHCAL_GetMonth(&st, delta);
  }

  if(!MONTHCAL_IsDateInValidRange(infoPtr, &st, FALSE)) return;

  keep_selection = infoPtr->dwStyle & MCS_NOSELCHANGEONNAV;
  MONTHCAL_Scroll(infoPtr, direction == DIRECTION_BACKWARD ? -delta : delta, keep_selection);
  MONTHCAL_NotifyDayState(infoPtr);
  if (!keep_selection)
    MONTHCAL_NotifySelectionChange(infoPtr);
}
