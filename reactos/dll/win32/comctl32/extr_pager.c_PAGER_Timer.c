
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ TLbtnState; int dwStyle; scalar_t__ direction; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 int KillTimer (int ,scalar_t__) ;
 int PAGER_Scroll (TYPE_1__*,scalar_t__) ;
 scalar_t__ PGF_HOT ;
 scalar_t__ PGF_SCROLLDOWN ;
 scalar_t__ PGF_SCROLLLEFT ;
 scalar_t__ PGF_SCROLLRIGHT ;
 scalar_t__ PGF_SCROLLUP ;
 int PGS_AUTOSCROLL ;
 int PGS_HORZ ;
 int REPEAT_DELAY ;
 int SWP_FRAMECHANGED ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetTimer (int ,scalar_t__,int ,int ) ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;
 scalar_t__ TIMERID1 ;
 scalar_t__ TIMERID2 ;
 int TRACE (char*,int ,scalar_t__,...) ;

__attribute__((used)) static LRESULT
PAGER_Timer (PAGER_INFO* infoPtr, INT nTimerId)
{
    INT dir;


    if (nTimerId == TIMERID1) {
 if (infoPtr->TLbtnState == PGF_HOT)
     dir = (infoPtr->dwStyle & PGS_HORZ) ?
  PGF_SCROLLLEFT : PGF_SCROLLUP;
 else
     dir = (infoPtr->dwStyle & PGS_HORZ) ?
  PGF_SCROLLRIGHT : PGF_SCROLLDOWN;
 TRACE("[%p] TIMERID1: style=%08x, dir=%d\n",
              infoPtr->hwndSelf, infoPtr->dwStyle, dir);
 KillTimer(infoPtr->hwndSelf, TIMERID1);
 SetTimer(infoPtr->hwndSelf, TIMERID1, REPEAT_DELAY, 0);
 if (infoPtr->dwStyle & PGS_AUTOSCROLL) {
     PAGER_Scroll(infoPtr, dir);
     SetWindowPos(infoPtr->hwndSelf, 0, 0, 0, 0, 0,
    SWP_FRAMECHANGED | SWP_NOSIZE | SWP_NOMOVE |
    SWP_NOZORDER | SWP_NOACTIVATE);
 }
 return 0;

    }

    TRACE("[%p] TIMERID2: dir=%d\n", infoPtr->hwndSelf, infoPtr->direction);
    KillTimer(infoPtr->hwndSelf, TIMERID2);
    if (infoPtr->direction > 0) {
 PAGER_Scroll(infoPtr, infoPtr->direction);
 SetTimer(infoPtr->hwndSelf, TIMERID2, REPEAT_DELAY, 0);
    }
    return 0;
}
