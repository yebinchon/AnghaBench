
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ uNumBands; int hFont; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int REBAR_BAND ;
typedef int LRESULT ;
typedef int HFONT ;


 int * REBAR_GetBand (TYPE_1__*,scalar_t__) ;
 int REBAR_Layout (TYPE_1__*) ;
 int REBAR_ValidateBand (TYPE_1__*,int *) ;

__attribute__((used)) static LRESULT
REBAR_SetFont (REBAR_INFO *infoPtr, HFONT font)
{
    REBAR_BAND *lpBand;
    UINT i;

    infoPtr->hFont = font;


    for (i=0; i<infoPtr->uNumBands; i++) {
        lpBand = REBAR_GetBand(infoPtr, i);
 REBAR_ValidateBand (infoPtr, lpBand);
    }

    REBAR_Layout(infoPtr);
    return 0;
}
