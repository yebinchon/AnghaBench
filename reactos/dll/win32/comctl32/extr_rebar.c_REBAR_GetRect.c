
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rcBand; } ;
struct TYPE_6__ {scalar_t__ uNumBands; } ;
typedef int RECT ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ REBAR_BAND ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 int FALSE ;
 TYPE_2__* REBAR_GetBand (TYPE_1__ const*,scalar_t__) ;
 int TRACE (char*,scalar_t__,int ) ;
 int TRUE ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static LRESULT
REBAR_GetRect (const REBAR_INFO *infoPtr, INT iBand, RECT *lprc)
{
    REBAR_BAND *lpBand;

    if (iBand < 0 || iBand >= infoPtr->uNumBands)
 return FALSE;
    if (!lprc)
 return FALSE;

    lpBand = REBAR_GetBand(infoPtr, iBand);

    *lprc = lpBand->rcBand;

    TRACE("band %d, (%s)\n", iBand, wine_dbgstr_rect(lprc));

    return TRUE;
}
