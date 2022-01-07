
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int bottom; int top; } ;
struct TYPE_10__ {scalar_t__ iRow; TYPE_1__ rcBand; } ;
struct TYPE_9__ {scalar_t__ uNumBands; } ;
typedef TYPE_2__ REBAR_INFO ;
typedef TYPE_3__ REBAR_BAND ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 scalar_t__ HIDDENBAND (TYPE_3__*) ;
 TYPE_3__* REBAR_GetBand (TYPE_2__ const*,scalar_t__) ;
 int TRACE (char*,scalar_t__,int) ;

__attribute__((used)) static LRESULT
REBAR_GetRowHeight (const REBAR_INFO *infoPtr, INT iRow)
{
    int j = 0, ret = 0;
    UINT i;
    REBAR_BAND *lpBand;

    for (i=0; i<infoPtr->uNumBands; i++) {
 lpBand = REBAR_GetBand(infoPtr, i);
 if (HIDDENBAND(lpBand)) continue;
 if (lpBand->iRow != iRow) continue;
        j = lpBand->rcBand.bottom - lpBand->rcBand.top;
 if (j > ret) ret = j;
    }

    TRACE("row %d, height %d\n", iRow, ret);

    return ret;
}
