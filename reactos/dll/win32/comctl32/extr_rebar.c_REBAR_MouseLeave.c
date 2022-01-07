
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fDraw; int rcChevron; } ;
struct TYPE_6__ {int ichevronhotBand; int iOldBand; int hwndSelf; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ REBAR_BAND ;
typedef int LRESULT ;


 int DRAW_CHEVRONHOT ;
 int InvalidateRect (int ,int *,int ) ;
 TYPE_2__* REBAR_GetBand (TYPE_1__*,int) ;
 int TRUE ;

__attribute__((used)) static LRESULT
REBAR_MouseLeave (REBAR_INFO *infoPtr)
{
    if (infoPtr->ichevronhotBand >= 0)
    {
        REBAR_BAND *lpChevronBand = REBAR_GetBand(infoPtr, infoPtr->ichevronhotBand);
        if (lpChevronBand->fDraw & DRAW_CHEVRONHOT)
        {
            lpChevronBand->fDraw &= ~DRAW_CHEVRONHOT;
            InvalidateRect(infoPtr->hwndSelf, &lpChevronBand->rcChevron, TRUE);
        }
    }
    infoPtr->iOldBand = -1;
    infoPtr->ichevronhotBand = -2;

    return TRUE;
}
