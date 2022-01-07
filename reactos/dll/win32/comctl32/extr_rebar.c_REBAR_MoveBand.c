
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ uNumBands; int bands; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int REBAR_BAND ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 int DPA_DeletePtr (int ,scalar_t__) ;
 int DPA_InsertPtr (int ,scalar_t__,int *) ;
 int ERR (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int FALSE ;
 int REBAR_DumpBand (TYPE_1__*) ;
 int * REBAR_GetBand (TYPE_1__*,scalar_t__) ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 int TRUE ;

__attribute__((used)) static LRESULT
REBAR_MoveBand (REBAR_INFO *infoPtr, INT iFrom, INT iTo)
{
    REBAR_BAND *lpBand;


    if ((infoPtr->uNumBands == 0) ||
 (iFrom < 0) || iFrom >= infoPtr->uNumBands ||
 (iTo < 0) || iTo >= infoPtr->uNumBands) {

 ERR("Illegal MoveBand, from=%d, to=%d, current band count=%d\n",
       iFrom, iTo, infoPtr->uNumBands);
       return FALSE;
    }

    lpBand = REBAR_GetBand(infoPtr, iFrom);
    DPA_DeletePtr(infoPtr->bands, iFrom);
    DPA_InsertPtr(infoPtr->bands, iTo, lpBand);

    TRACE("moved band %d to index %d\n", iFrom, iTo);
    REBAR_DumpBand (infoPtr);
    return TRUE;
}
