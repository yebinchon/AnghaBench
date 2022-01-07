
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {int lParamNM; int rc; int lParam; int wID; scalar_t__ uBand; } ;
struct TYPE_9__ {int rcChevron; int fDraw; int lParam; int wID; } ;
struct TYPE_8__ {scalar_t__ uNumBands; int hwndSelf; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ REBAR_BAND ;
typedef TYPE_3__ NMREBARCHEVRON ;
typedef int NMHDR ;
typedef int LRESULT ;
typedef int LPARAM ;


 int DRAW_CHEVRONPUSHED ;
 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int RBN_CHEVRONPUSHED ;
 int RDW_ERASE ;
 int RDW_INVALIDATE ;
 int RDW_UPDATENOW ;
 TYPE_2__* REBAR_GetBand (TYPE_1__ const*,scalar_t__) ;
 int REBAR_Notify (int *,TYPE_1__ const*,int ) ;
 int RedrawWindow (int ,int *,int ,int) ;
 int TRACE (char*,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static LRESULT
REBAR_PushChevron(const REBAR_INFO *infoPtr, UINT uBand, LPARAM lParam)
{
    if (uBand < infoPtr->uNumBands)
    {
        NMREBARCHEVRON nmrbc;
        REBAR_BAND *lpBand = REBAR_GetBand(infoPtr, uBand);

        TRACE("Pressed chevron on band %u\n", uBand);


        lpBand->fDraw |= DRAW_CHEVRONPUSHED;
        RedrawWindow(infoPtr->hwndSelf, &lpBand->rcChevron,0,
          RDW_ERASE|RDW_INVALIDATE|RDW_UPDATENOW);


        nmrbc.uBand = uBand;
        nmrbc.wID = lpBand->wID;
        nmrbc.lParam = lpBand->lParam;
        nmrbc.rc = lpBand->rcChevron;
        nmrbc.lParamNM = lParam;
        REBAR_Notify((NMHDR*)&nmrbc, infoPtr, RBN_CHEVRONPUSHED);


        lpBand->fDraw &= ~DRAW_CHEVRONPUSHED;
        InvalidateRect(infoPtr->hwndSelf, &lpBand->rcChevron, TRUE);

        return TRUE;
    }
    return FALSE;
}
