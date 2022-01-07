
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwStyle; scalar_t__ maxSelCount; } ;
typedef TYPE_1__ MONTHCAL_INFO ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 int FALSE ;
 int MCS_MULTISELECT ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static LRESULT
MONTHCAL_SetMaxSelCount(MONTHCAL_INFO *infoPtr, INT max)
{
  TRACE("%d\n", max);

  if(!(infoPtr->dwStyle & MCS_MULTISELECT)) return FALSE;
  if(max <= 0) return FALSE;

  infoPtr->maxSelCount = max;

  return TRUE;
}
