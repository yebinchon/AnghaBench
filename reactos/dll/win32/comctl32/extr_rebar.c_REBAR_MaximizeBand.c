
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {int fStyle; int cxIdeal; int cxHeader; int cxEffective; int cx; } ;
struct TYPE_16__ {int cx; } ;
struct TYPE_17__ {scalar_t__ uNumBands; int dwStyle; TYPE_1__ calcSize; } ;
typedef TYPE_2__ REBAR_INFO ;
typedef TYPE_3__ REBAR_BAND ;
typedef int LRESULT ;
typedef scalar_t__ LPARAM ;
typedef scalar_t__ INT ;


 int CCS_VERT ;
 int ERR (char*,scalar_t__,scalar_t__) ;
 int FALSE ;
 int RBBS_HIDDEN ;
 int REBAR_CalcHorzBand (TYPE_2__ const*,int,int) ;
 int REBAR_CalcVertBand (TYPE_2__ const*,int,int) ;
 TYPE_3__* REBAR_GetBand (TYPE_2__ const*,scalar_t__) ;
 int REBAR_MoveChildWindows (TYPE_2__ const*,int,int) ;
 int REBAR_POST_CHILD ;
 int REBAR_SetRowRectsX (TYPE_2__ const*,int,int) ;
 int REBAR_ShrinkBandsLTR (TYPE_2__ const*,int ,int,int,int ) ;
 int REBAR_ShrinkBandsRTL (TYPE_2__ const*,int,scalar_t__,int,int ) ;
 int TRACE (char*,scalar_t__,scalar_t__,int,int,int,int) ;
 int TRUE ;
 int WARN (char*,scalar_t__) ;
 int get_row_begin_for_band (TYPE_2__ const*,scalar_t__) ;
 int get_row_end_for_band (TYPE_2__ const*,scalar_t__) ;
 int next_visible (TYPE_2__ const*,scalar_t__) ;

__attribute__((used)) static LRESULT
REBAR_MaximizeBand (const REBAR_INFO *infoPtr, INT iBand, LPARAM lParam)
{
    REBAR_BAND *lpBand;
    int iRowBegin, iRowEnd;
    int cxDesired, extra, extraOrig;
    int cxIdealBand;


    if (infoPtr->uNumBands == 0 || iBand < 0 || iBand >= infoPtr->uNumBands) {

 ERR("Illegal MaximizeBand, requested=%d, current band count=%d\n",
       iBand, infoPtr->uNumBands);
       return FALSE;
    }

    lpBand = REBAR_GetBand(infoPtr, iBand);

    if (lpBand->fStyle & RBBS_HIDDEN)
    {

        WARN("Ignoring maximize request on a hidden band (%d)\n", iBand);
        return FALSE;
    }

    cxIdealBand = lpBand->cxIdeal + lpBand->cxHeader + REBAR_POST_CHILD;
    if (lParam && (lpBand->cxEffective < cxIdealBand))
        cxDesired = cxIdealBand;
    else
        cxDesired = infoPtr->calcSize.cx;

    iRowBegin = get_row_begin_for_band(infoPtr, iBand);
    iRowEnd = get_row_end_for_band(infoPtr, iBand);
    extraOrig = extra = cxDesired - lpBand->cxEffective;
    if (extra > 0)
        extra = REBAR_ShrinkBandsRTL(infoPtr, iRowBegin, iBand, extra, TRUE);
    if (extra > 0)
        extra = REBAR_ShrinkBandsLTR(infoPtr, next_visible(infoPtr, iBand), iRowEnd, extra, TRUE);
    lpBand->cxEffective += extraOrig - extra;
    lpBand->cx = lpBand->cxEffective;
    TRACE("(%d, %ld): Wanted size %d, obtained %d (shrink %d, %d)\n", iBand, lParam, cxDesired, lpBand->cx, extraOrig, extra);
    REBAR_SetRowRectsX(infoPtr, iRowBegin, iRowEnd);

    if (infoPtr->dwStyle & CCS_VERT)
        REBAR_CalcVertBand(infoPtr, iRowBegin, iRowEnd);
    else
        REBAR_CalcHorzBand(infoPtr, iRowBegin, iRowEnd);
    REBAR_MoveChildWindows(infoPtr, iRowBegin, iRowEnd);
    return TRUE;

}
