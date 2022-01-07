
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int wDay; } ;
struct TYPE_10__ {int dwStyle; int monthdayState; int hwndNotify; int hwndSelf; } ;
struct TYPE_8__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_9__ {int cDayState; int * prgDayState; TYPE_1__ nmhdr; TYPE_7__ stStart; } ;
typedef TYPE_2__ NMDAYSTATE ;
typedef int MONTHDAYSTATE ;
typedef TYPE_3__ MONTHCAL_INFO ;
typedef int LPARAM ;


 int GMR_DAYSTATE ;
 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int MCN_GETDAYSTATE ;
 int MCS_DAYSTATE ;
 int MONTHCAL_GetMinDate (TYPE_3__*,TYPE_7__*) ;
 int MONTHCAL_GetMonthRange (TYPE_3__*,int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int WM_NOTIFY ;
 int * heap_alloc_zero (int) ;
 int heap_free (int *) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void MONTHCAL_NotifyDayState(MONTHCAL_INFO *infoPtr)
{
  MONTHDAYSTATE *state;
  NMDAYSTATE nmds;

  if (!(infoPtr->dwStyle & MCS_DAYSTATE)) return;

  nmds.nmhdr.hwndFrom = infoPtr->hwndSelf;
  nmds.nmhdr.idFrom = GetWindowLongPtrW(infoPtr->hwndSelf, GWLP_ID);
  nmds.nmhdr.code = MCN_GETDAYSTATE;
  nmds.cDayState = MONTHCAL_GetMonthRange(infoPtr, GMR_DAYSTATE, 0);
  nmds.prgDayState = state = heap_alloc_zero(nmds.cDayState * sizeof(MONTHDAYSTATE));

  MONTHCAL_GetMinDate(infoPtr, &nmds.stStart);
  nmds.stStart.wDay = 1;

  SendMessageW(infoPtr->hwndNotify, WM_NOTIFY, nmds.nmhdr.idFrom, (LPARAM)&nmds);
  memcpy(infoPtr->monthdayState, nmds.prgDayState,
      MONTHCAL_GetMonthRange(infoPtr, GMR_DAYSTATE, 0)*sizeof(MONTHDAYSTATE));

  heap_free(state);
}
