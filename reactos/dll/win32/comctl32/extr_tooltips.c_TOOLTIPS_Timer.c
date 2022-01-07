
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nTool; int nReshowTime; int hwndSelf; int bActive; int nCurrentTool; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int INT ;


 int ERR (char*,...) ;
 int FALSE ;



 int KillTimer (int ,int const) ;
 int SetTimer (int ,int const,int ,int ) ;
 void* TOOLTIPS_CheckTool (TYPE_1__*,int ) ;
 int TOOLTIPS_Hide (TYPE_1__*) ;
 int TOOLTIPS_Show (TYPE_1__*,int ) ;
 int TRACE (char*,...) ;
 int TRUE ;

__attribute__((used)) static LRESULT
TOOLTIPS_Timer (TOOLTIPS_INFO *infoPtr, INT iTimer)
{
    INT nOldTool;

    TRACE("timer %d (%p) expired\n", iTimer, infoPtr->hwndSelf);

    switch (iTimer) {
    case 128:
        KillTimer (infoPtr->hwndSelf, 128);
 nOldTool = infoPtr->nTool;
 if ((infoPtr->nTool = TOOLTIPS_CheckTool (infoPtr, TRUE)) == nOldTool)
     TOOLTIPS_Show (infoPtr, FALSE);
 break;

    case 129:
        TOOLTIPS_Hide (infoPtr);
 break;

    case 130:
        nOldTool = infoPtr->nTool;
 infoPtr->nTool = TOOLTIPS_CheckTool (infoPtr, FALSE);
 TRACE("tool (%p) %d %d %d\n", infoPtr->hwndSelf, nOldTool,
       infoPtr->nTool, infoPtr->nCurrentTool);
 if (infoPtr->nTool != nOldTool) {
     if(infoPtr->nTool == -1) {
         TOOLTIPS_Hide(infoPtr);
  KillTimer(infoPtr->hwndSelf, 130);
     } else if (nOldTool == -1) {
         ERR("How did this happen?\n");
     } else {
         TOOLTIPS_Hide (infoPtr);
  KillTimer(infoPtr->hwndSelf, 130);
  if(infoPtr->bActive) {
      SetTimer (infoPtr->hwndSelf, 128, infoPtr->nReshowTime, 0);
      TRACE("timer 1 started!\n");
  }
     }
 }
 break;

    default:
        ERR("Unknown timer id %d\n", iTimer);
 break;
    }
    return 0;
}
