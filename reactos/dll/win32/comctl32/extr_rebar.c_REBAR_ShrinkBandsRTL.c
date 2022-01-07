
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cxEffective; scalar_t__ cx; scalar_t__ cxMinBand; } ;
typedef int REBAR_INFO ;
typedef TYPE_1__ REBAR_BAND ;
typedef scalar_t__ INT ;
typedef scalar_t__ BOOL ;


 TYPE_1__* REBAR_GetBand (int const*,scalar_t__) ;
 int TRACE (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ max (scalar_t__,int) ;
 scalar_t__ prev_visible (int const*,scalar_t__) ;

__attribute__((used)) static int REBAR_ShrinkBandsRTL(const REBAR_INFO *infoPtr, INT iBeginBand, INT iEndBand, INT cxShrink, BOOL bEnforce)
{
    REBAR_BAND *lpBand;
    INT width, i;

    TRACE("Shrinking bands [%d..%d) by %d, right-to-left\n", iBeginBand, iEndBand, cxShrink);
    for (i = prev_visible(infoPtr, iEndBand); i >= iBeginBand; i = prev_visible(infoPtr, i))
    {
        lpBand = REBAR_GetBand(infoPtr, i);

        width = max(lpBand->cxEffective - cxShrink, (int)lpBand->cxMinBand);
        cxShrink -= lpBand->cxEffective - width;
        lpBand->cxEffective = width;
        if (bEnforce && lpBand->cx > lpBand->cxEffective)
            lpBand->cx = lpBand->cxEffective;
        if (cxShrink == 0)
            break;
    }
    return cxShrink;
}
