
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {int iGrabbedBand; int fStatus; int hwndSelf; TYPE_1__ dragStart; TYPE_1__ dragNow; } ;
typedef int RECT ;
typedef TYPE_2__ REBAR_INFO ;
typedef int NMHDR ;
typedef int LRESULT ;


 int BEGIN_DRAG_ISSUED ;
 int GetClientRect (int ,int *) ;
 int InvalidateRect (int ,int *,int ) ;
 int RBN_ENDDRAG ;
 int RBN_LAYOUTCHANGED ;
 int REBAR_Notify (int *,TYPE_2__*,int ) ;
 int REBAR_Notify_NMREBAR (TYPE_2__*,int,int ) ;
 int ReleaseCapture () ;
 int TRUE ;

__attribute__((used)) static LRESULT
REBAR_LButtonUp (REBAR_INFO *infoPtr)
{
    if (infoPtr->iGrabbedBand >= 0)
    {
        NMHDR layout;
        RECT rect;

        infoPtr->dragStart.x = 0;
        infoPtr->dragStart.y = 0;
        infoPtr->dragNow = infoPtr->dragStart;

        ReleaseCapture ();

        if (infoPtr->fStatus & BEGIN_DRAG_ISSUED) {
            REBAR_Notify(&layout, infoPtr, RBN_LAYOUTCHANGED);
            REBAR_Notify_NMREBAR (infoPtr, infoPtr->iGrabbedBand, RBN_ENDDRAG);
            infoPtr->fStatus &= ~BEGIN_DRAG_ISSUED;
        }

        infoPtr->iGrabbedBand = -1;

        GetClientRect(infoPtr->hwndSelf, &rect);
        InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);
    }

    return 0;
}
