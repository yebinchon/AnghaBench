
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fStatus; int hwndSelf; int uNumBands; scalar_t__ DoRedraw; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int LRESULT ;
typedef scalar_t__ BOOL ;


 int BAND_NEEDS_REDRAW ;
 int InvalidateRect (int ,int *,int ) ;
 int REBAR_ForceResize (TYPE_1__*) ;
 int REBAR_MoveChildWindows (TYPE_1__*,int ,int ) ;
 int TRACE (char*,char*,int) ;
 int TRUE ;

__attribute__((used)) static inline LRESULT
REBAR_SetRedraw (REBAR_INFO *infoPtr, BOOL redraw)
{
    BOOL oldredraw = infoPtr->DoRedraw;

    TRACE("set to %s, fStatus=%08x\n",
   (redraw) ? "TRUE" : "FALSE", infoPtr->fStatus);
    infoPtr->DoRedraw = redraw;
    if (redraw) {
 if (infoPtr->fStatus & BAND_NEEDS_REDRAW) {
     REBAR_MoveChildWindows (infoPtr, 0, infoPtr->uNumBands);
     REBAR_ForceResize (infoPtr);
     InvalidateRect (infoPtr->hwndSelf, ((void*)0), TRUE);
 }
 infoPtr->fStatus &= ~BAND_NEEDS_REDRAW;
    }
    return (oldredraw) ? -1 : 0;
}
