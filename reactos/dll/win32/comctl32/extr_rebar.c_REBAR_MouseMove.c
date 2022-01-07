
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_23__ {short x; short y; } ;
struct TYPE_19__ {int top; int bottom; } ;
struct TYPE_22__ {int fDraw; int rcChevron; TYPE_2__ rcBand; } ;
struct TYPE_18__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_21__ {void* iGrabbedBand; int dwStyle; scalar_t__ hwndSelf; int fStatus; scalar_t__ iOldBand; scalar_t__ ichevronhotBand; TYPE_1__ dragStart; TYPE_1__ dragNow; } ;
struct TYPE_20__ {int cbSize; int dwFlags; scalar_t__ hwndTrack; scalar_t__ dwHoverTime; } ;
typedef TYPE_3__ TRACKMOUSEEVENT ;
typedef TYPE_4__ REBAR_INFO ;
typedef TYPE_5__ REBAR_BAND ;
typedef TYPE_6__ POINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef void* INT ;


 int BEGIN_DRAG_ISSUED ;
 int CCS_VERT ;
 int DRAW_CHEVRONHOT ;
 int ERR (char*) ;
 scalar_t__ GetCapture () ;
 scalar_t__ HIWORD (int ) ;
 int InvalidateRect (scalar_t__,int *,int ) ;
 scalar_t__ LOWORD (int ) ;
 scalar_t__ RBHT_CHEVRON ;
 int RBN_BEGINDRAG ;
 TYPE_5__* REBAR_GetBand (TYPE_4__*,void*) ;
 int REBAR_HandleLRDrag (TYPE_4__*,TYPE_6__*) ;
 int REBAR_HandleUDDrag (TYPE_4__*,TYPE_6__*) ;
 int REBAR_InternalHitTest (TYPE_4__*,TYPE_6__*,scalar_t__*,void**) ;
 scalar_t__ REBAR_Notify_NMREBAR (TYPE_4__*,int,int ) ;
 int ReleaseCapture () ;
 int TME_LEAVE ;
 int TME_QUERY ;
 int TRUE ;
 int _TrackMouseEvent (TYPE_3__*) ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__ mindragx ;
 scalar_t__ mindragy ;

__attribute__((used)) static LRESULT
REBAR_MouseMove (REBAR_INFO *infoPtr, LPARAM lParam)
{
    REBAR_BAND *lpChevronBand;
    POINT ptMove;

    ptMove.x = (short)LOWORD(lParam);
    ptMove.y = (short)HIWORD(lParam);


    if (infoPtr->iGrabbedBand >= 0)
    {
        REBAR_BAND *band;
        int yPtMove = (infoPtr->dwStyle & CCS_VERT ? ptMove.x : ptMove.y);

        if (GetCapture() != infoPtr->hwndSelf)
            ERR("We are dragging but haven't got capture?!?\n");

        band = REBAR_GetBand(infoPtr, infoPtr->iGrabbedBand);


        if ((abs(ptMove.x - infoPtr->dragNow.x) <= mindragx) &&
            (abs(ptMove.y - infoPtr->dragNow.y) <= mindragy)) return 0;


        if (!(infoPtr->fStatus & BEGIN_DRAG_ISSUED)) {
            if (REBAR_Notify_NMREBAR (infoPtr, -1, RBN_BEGINDRAG)) {

                infoPtr->dragStart.x = 0;
                infoPtr->dragStart.y = 0;
                infoPtr->dragNow = infoPtr->dragStart;
                infoPtr->iGrabbedBand = -1;
                ReleaseCapture ();
                return 0;
            }
            infoPtr->fStatus |= BEGIN_DRAG_ISSUED;
        }


        if ((yPtMove < band->rcBand.top) ||
              (yPtMove > band->rcBand.bottom)) {
            REBAR_HandleUDDrag (infoPtr, &ptMove);
        }
        else {
            REBAR_HandleLRDrag (infoPtr, &ptMove);
        }
    }
    else
    {
        INT iHitBand;
        UINT htFlags;
        TRACKMOUSEEVENT trackinfo;

        REBAR_InternalHitTest(infoPtr, &ptMove, &htFlags, &iHitBand);

        if (infoPtr->iOldBand >= 0 && infoPtr->iOldBand == infoPtr->ichevronhotBand)
        {
            lpChevronBand = REBAR_GetBand(infoPtr, infoPtr->ichevronhotBand);
            if (lpChevronBand->fDraw & DRAW_CHEVRONHOT)
            {
                lpChevronBand->fDraw &= ~DRAW_CHEVRONHOT;
                InvalidateRect(infoPtr->hwndSelf, &lpChevronBand->rcChevron, TRUE);
            }
            infoPtr->ichevronhotBand = -2;
        }

        if (htFlags == RBHT_CHEVRON)
        {

            trackinfo.cbSize = sizeof(TRACKMOUSEEVENT);
            trackinfo.dwFlags = TME_QUERY;
            trackinfo.hwndTrack = infoPtr->hwndSelf;
            trackinfo.dwHoverTime = 0;


            _TrackMouseEvent(&trackinfo);


            if(!(trackinfo.dwFlags & TME_LEAVE))
            {
                trackinfo.dwFlags = TME_LEAVE;



                _TrackMouseEvent(&trackinfo);
            }

            lpChevronBand = REBAR_GetBand(infoPtr, iHitBand);
            if (!(lpChevronBand->fDraw & DRAW_CHEVRONHOT))
            {
                lpChevronBand->fDraw |= DRAW_CHEVRONHOT;
                InvalidateRect(infoPtr->hwndSelf, &lpChevronBand->rcChevron, TRUE);
                infoPtr->ichevronhotBand = iHitBand;
            }
        }
        infoPtr->iOldBand = iHitBand;
    }

    return 0;
}
