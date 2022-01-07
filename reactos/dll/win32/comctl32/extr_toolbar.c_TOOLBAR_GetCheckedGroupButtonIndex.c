
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fsStyle; int fsState; } ;
struct TYPE_4__ {int nNumButtons; TYPE_2__* buttons; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ TBUTTON_INFO ;
typedef int INT ;


 int BTNS_CHECKGROUP ;
 int BTNS_GROUP ;
 int TBSTATE_CHECKED ;

__attribute__((used)) static INT
TOOLBAR_GetCheckedGroupButtonIndex (const TOOLBAR_INFO *infoPtr, INT nIndex)
{
    TBUTTON_INFO *btnPtr;
    INT nRunIndex;

    if ((nIndex < 0) || (nIndex > infoPtr->nNumButtons))
 return -1;


    btnPtr = &infoPtr->buttons[nIndex];
    if ((btnPtr->fsStyle & BTNS_CHECKGROUP) == BTNS_CHECKGROUP) {
 if (btnPtr->fsState & TBSTATE_CHECKED)
     return nIndex;
    }


    nRunIndex = nIndex - 1;
    while (nRunIndex >= 0) {
 btnPtr = &infoPtr->buttons[nRunIndex];
 if ((btnPtr->fsStyle & BTNS_GROUP) == BTNS_GROUP) {
     if (btnPtr->fsState & TBSTATE_CHECKED)
  return nRunIndex;
 }
 else
     break;
 nRunIndex--;
    }


    nRunIndex = nIndex + 1;
    while (nRunIndex < infoPtr->nNumButtons) {
 btnPtr = &infoPtr->buttons[nRunIndex];
 if ((btnPtr->fsStyle & BTNS_GROUP) == BTNS_GROUP) {
     if (btnPtr->fsState & TBSTATE_CHECKED)
  return nRunIndex;
 }
 else
     break;
 nRunIndex++;
    }

    return -1;
}
