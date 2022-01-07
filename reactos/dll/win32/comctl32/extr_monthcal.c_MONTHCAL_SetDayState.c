
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwStyle; int monthdayState; } ;
typedef int MONTHDAYSTATE ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int LRESULT ;
typedef int INT ;


 int GMR_DAYSTATE ;
 int MCS_DAYSTATE ;
 int MONTHCAL_GetMonthRange (TYPE_1__ const*,int ,int ) ;
 int TRACE (char*,TYPE_1__ const*,int,int *) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static LRESULT
MONTHCAL_SetDayState(const MONTHCAL_INFO *infoPtr, INT months, MONTHDAYSTATE *states)
{
  TRACE("%p %d %p\n", infoPtr, months, states);

  if (!(infoPtr->dwStyle & MCS_DAYSTATE)) return 0;
  if (months != MONTHCAL_GetMonthRange(infoPtr, GMR_DAYSTATE, 0)) return 0;

  memcpy(infoPtr->monthdayState, states, months*sizeof(MONTHDAYSTATE));

  return 1;
}
