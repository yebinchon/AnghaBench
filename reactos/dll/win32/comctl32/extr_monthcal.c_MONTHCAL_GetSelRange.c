
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wDay; } ;
struct TYPE_7__ {int dwStyle; TYPE_1__ maxSel; TYPE_1__ minSel; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef int LRESULT ;


 int FALSE ;
 int MCS_MULTISELECT ;
 int TRACE (char*,TYPE_1__*,...) ;
 int TRUE ;

__attribute__((used)) static LRESULT
MONTHCAL_GetSelRange(const MONTHCAL_INFO *infoPtr, SYSTEMTIME *range)
{
  TRACE("%p\n", range);

  if(!range) return FALSE;

  if(infoPtr->dwStyle & MCS_MULTISELECT)
  {
    range[1] = infoPtr->maxSel;
    range[0] = infoPtr->minSel;
    TRACE("[min,max]=[%d %d]\n", infoPtr->minSel.wDay, infoPtr->maxSel.wDay);
    return TRUE;
  }

  return FALSE;
}
