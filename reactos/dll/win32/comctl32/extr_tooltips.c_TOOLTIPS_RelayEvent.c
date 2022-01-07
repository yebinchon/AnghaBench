
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int message; int hwnd; int lParam; } ;
struct TYPE_11__ {short x; short y; } ;
struct TYPE_10__ {int nTool; int nCurrentTool; int nInitialTime; int hwndSelf; int bActive; int nAutoPopTime; int nReshowTime; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef TYPE_2__ POINT ;
typedef int LRESULT ;
typedef TYPE_3__* LPMSG ;
typedef int INT ;


 int ERR (char*) ;
 scalar_t__ HIWORD (int ) ;
 int ID_TIMERLEAVE ;
 int ID_TIMERPOP ;
 int ID_TIMERSHOW ;
 int KillTimer (int ,int ) ;
 scalar_t__ LOWORD (int ) ;
 int SetTimer (int ,int ,int ,int ) ;
 int TOOLTIPS_GetToolFromPoint (TYPE_1__*,int ,TYPE_2__*) ;
 int TOOLTIPS_Hide (TYPE_1__*) ;
 int TRACE (char*,...) ;







 int wine_dbgstr_point (TYPE_2__*) ;

__attribute__((used)) static LRESULT
TOOLTIPS_RelayEvent (TOOLTIPS_INFO *infoPtr, LPMSG lpMsg)
{
    POINT pt;
    INT nOldTool;

    if (!lpMsg) {
 ERR("lpMsg == NULL\n");
 return 0;
    }

    switch (lpMsg->message) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 129:
 case 128:
     TOOLTIPS_Hide (infoPtr);
     break;

 case 130:
     pt.x = (short)LOWORD(lpMsg->lParam);
     pt.y = (short)HIWORD(lpMsg->lParam);
     nOldTool = infoPtr->nTool;
     infoPtr->nTool = TOOLTIPS_GetToolFromPoint(infoPtr, lpMsg->hwnd,
             &pt);
     TRACE("tool (%p) %d %d %d\n", infoPtr->hwndSelf, nOldTool,
    infoPtr->nTool, infoPtr->nCurrentTool);
            TRACE("WM_MOUSEMOVE (%p %s)\n", infoPtr->hwndSelf, wine_dbgstr_point(&pt));

     if (infoPtr->nTool != nOldTool) {
         if(infoPtr->nTool == -1) {
      TOOLTIPS_Hide(infoPtr);
      KillTimer(infoPtr->hwndSelf, ID_TIMERLEAVE);
  } else if (nOldTool == -1) {
      if(infoPtr->bActive) {
          SetTimer(infoPtr->hwndSelf, ID_TIMERSHOW, infoPtr->nInitialTime, 0);
                        TRACE("timer 1 started\n");
      }
  } else {
      TOOLTIPS_Hide (infoPtr);
      KillTimer(infoPtr->hwndSelf, ID_TIMERLEAVE);
      if(infoPtr->bActive) {
          SetTimer (infoPtr->hwndSelf, ID_TIMERSHOW, infoPtr->nReshowTime, 0);
                        TRACE("timer 1 started\n");
      }
  }
     } else if(infoPtr->nCurrentTool != -1) {
         KillTimer(infoPtr->hwndSelf, ID_TIMERPOP);
  SetTimer(infoPtr->hwndSelf, ID_TIMERPOP, infoPtr->nAutoPopTime, 0);
  TRACE("timer 2 restarted\n");
     } else if(infoPtr->nTool != -1 && infoPtr->bActive) {

  SetTimer(infoPtr->hwndSelf, ID_TIMERSHOW, infoPtr->nInitialTime, 0);
                TRACE("timer 1 started\n");
     }
     break;
    }

    return 0;
}
