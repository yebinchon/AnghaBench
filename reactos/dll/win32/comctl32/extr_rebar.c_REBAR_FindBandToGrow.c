
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cxMinBand; scalar_t__ cxEffective; int fStyle; } ;
typedef int REBAR_INFO ;
typedef TYPE_1__ REBAR_BAND ;
typedef scalar_t__ INT ;


 int RBBS_FIXEDSIZE ;
 TYPE_1__* REBAR_GetBand (int const*,scalar_t__) ;
 int TRACE (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ prev_visible (int const*,scalar_t__) ;

__attribute__((used)) static REBAR_BAND *REBAR_FindBandToGrow(const REBAR_INFO *infoPtr, INT iBeginBand, INT iEndBand)
{
    INT cxMinFirstBand = 0, i;

    cxMinFirstBand = REBAR_GetBand(infoPtr, iBeginBand)->cxMinBand;

    for (i = prev_visible(infoPtr, iEndBand); i >= iBeginBand; i = prev_visible(infoPtr, i))
        if (REBAR_GetBand(infoPtr, i)->cxEffective > cxMinFirstBand &&
          !(REBAR_GetBand(infoPtr, i)->fStyle & RBBS_FIXEDSIZE))
            break;

    if (i < iBeginBand)
        for (i = prev_visible(infoPtr, iEndBand); i >= iBeginBand; i = prev_visible(infoPtr, i))
            if (REBAR_GetBand(infoPtr, i)->cxMinBand == cxMinFirstBand)
                break;

    TRACE("Extra space for row [%d..%d) should be added to band %d\n", iBeginBand, iEndBand, i);
    return REBAR_GetBand(infoPtr, i);
}
