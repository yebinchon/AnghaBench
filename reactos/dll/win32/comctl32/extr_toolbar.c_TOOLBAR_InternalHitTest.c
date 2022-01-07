
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fsState; int fsStyle; int rect; } ;
struct TYPE_4__ {int nNumButtons; TYPE_2__* buttons; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ TBUTTON_INFO ;
typedef int POINT ;
typedef int INT ;
typedef int BOOL ;


 int BTNS_SEP ;
 int FALSE ;
 scalar_t__ PtInRect (int *,int const) ;
 int TBSTATE_HIDDEN ;
 int TOOLBAR_NOWHERE ;
 int TRACE (char*,...) ;
 int TRUE ;

__attribute__((used)) static INT
TOOLBAR_InternalHitTest (const TOOLBAR_INFO *infoPtr, const POINT *lpPt, BOOL *button)
{
    TBUTTON_INFO *btnPtr;
    INT i;

    if (button)
        *button = FALSE;

    btnPtr = infoPtr->buttons;
    for (i = 0; i < infoPtr->nNumButtons; i++, btnPtr++) {
 if (btnPtr->fsState & TBSTATE_HIDDEN)
     continue;

 if (btnPtr->fsStyle & BTNS_SEP) {
     if (PtInRect (&btnPtr->rect, *lpPt)) {
  TRACE(" ON SEPARATOR %d\n", i);
  return -i;
     }
 }
 else {
     if (PtInRect (&btnPtr->rect, *lpPt)) {
  TRACE(" ON BUTTON %d\n", i);
                if (button)
                    *button = TRUE;
  return i;
     }
 }
    }

    TRACE(" NOWHERE\n");
    return TOOLBAR_NOWHERE;
}
