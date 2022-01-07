
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int fStyle; scalar_t__ iRow; scalar_t__ cxMinBand; scalar_t__ cxEffective; scalar_t__ cx; } ;
struct TYPE_15__ {scalar_t__ uNumBands; int dwStyle; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ REBAR_BAND ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 int CCS_VERT ;
 int ERR (char*,scalar_t__,scalar_t__) ;
 int FALSE ;
 int RBBS_HIDDEN ;
 int REBAR_CalcHorzBand (TYPE_1__ const*,int,int) ;
 int REBAR_CalcVertBand (TYPE_1__ const*,int,int) ;
 TYPE_2__* REBAR_GetBand (TYPE_1__ const*,int) ;
 int REBAR_MaximizeBand (TYPE_1__ const*,int,int ) ;
 int REBAR_MoveChildWindows (TYPE_1__ const*,int,int) ;
 int REBAR_SetRowRectsX (TYPE_1__ const*,int,int) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;
 int WARN (char*,scalar_t__) ;
 int get_row_begin_for_band (TYPE_1__ const*,scalar_t__) ;
 int get_row_end_for_band (TYPE_1__ const*,scalar_t__) ;
 int next_visible (TYPE_1__ const*,scalar_t__) ;
 int prev_visible (TYPE_1__ const*,scalar_t__) ;

__attribute__((used)) static LRESULT
REBAR_MinimizeBand (const REBAR_INFO *infoPtr, INT iBand)
{
    REBAR_BAND *lpBand;
    int iPrev, iRowBegin, iRowEnd;







    if (infoPtr->uNumBands == 0 || iBand < 0 || iBand >= infoPtr->uNumBands) {

 ERR("Illegal MinimizeBand, requested=%d, current band count=%d\n",
       iBand, infoPtr->uNumBands);
       return FALSE;
    }


    lpBand = REBAR_GetBand(infoPtr, iBand);

    if (lpBand->fStyle & RBBS_HIDDEN)
    {

        WARN("Ignoring minimize request on a hidden band (%d)\n", iBand);
        return FALSE;
    }

    iPrev = prev_visible(infoPtr, iBand);

    if (iPrev < 0 || REBAR_GetBand(infoPtr, iPrev)->iRow != lpBand->iRow) {
        int iNext = next_visible(infoPtr, iBand);
        if (iNext < infoPtr->uNumBands && REBAR_GetBand(infoPtr, iNext)->iRow == lpBand->iRow) {
            TRACE("(%d): Minimizing the first band in row is by maximizing the second\n", iBand);
            REBAR_MaximizeBand(infoPtr, iNext, FALSE);
        }
        else
            TRACE("(%d): Only one band in row - nothing to do\n", iBand);
        return TRUE;
    }

    REBAR_GetBand(infoPtr, iPrev)->cxEffective += lpBand->cxEffective - lpBand->cxMinBand;
    REBAR_GetBand(infoPtr, iPrev)->cx = REBAR_GetBand(infoPtr, iPrev)->cxEffective;
    lpBand->cx = lpBand->cxEffective = lpBand->cxMinBand;

    iRowBegin = get_row_begin_for_band(infoPtr, iBand);
    iRowEnd = get_row_end_for_band(infoPtr, iBand);
    REBAR_SetRowRectsX(infoPtr, iRowBegin, iRowEnd);

    if (infoPtr->dwStyle & CCS_VERT)
        REBAR_CalcVertBand(infoPtr, iRowBegin, iRowEnd);
    else
        REBAR_CalcHorzBand(infoPtr, iRowBegin, iRowEnd);
    REBAR_MoveChildWindows(infoPtr, iRowBegin, iRowEnd);
    return FALSE;
}
