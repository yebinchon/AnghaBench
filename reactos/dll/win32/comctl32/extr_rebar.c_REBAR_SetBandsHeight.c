
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int top; int bottom; } ;
struct TYPE_4__ {int iRow; int cyRowSoFar; TYPE_2__ rcBand; int fDraw; int cyMinBand; } ;
typedef int REBAR_INFO ;
typedef TYPE_1__ REBAR_BAND ;
typedef int INT ;


 int NTF_INVALIDATE ;
 TYPE_1__* REBAR_GetBand (int const*,int) ;
 scalar_t__ SEP_WIDTH ;
 int TRACE (char*,int,int,...) ;
 int max (int,int ) ;
 int next_visible (int const*,int) ;
 int wine_dbgstr_rect (TYPE_2__*) ;

__attribute__((used)) static int REBAR_SetBandsHeight(const REBAR_INFO *infoPtr, INT iBeginBand, INT iEndBand, INT yStart)
{
    REBAR_BAND *lpBand;
    int yMaxHeight = 0;
    int yPos = yStart;
    int row = REBAR_GetBand(infoPtr, iBeginBand)->iRow;
    int i;
    for (i = iBeginBand; i < iEndBand; i = next_visible(infoPtr, i))
    {
        lpBand = REBAR_GetBand(infoPtr, i);
        lpBand->cyRowSoFar = yMaxHeight;
        yMaxHeight = max(yMaxHeight, lpBand->cyMinBand);
    }
    TRACE("Bands [%d; %d) height: %d\n", iBeginBand, iEndBand, yMaxHeight);

    for (i = iBeginBand; i < iEndBand; i = next_visible(infoPtr, i))
    {
        lpBand = REBAR_GetBand(infoPtr, i);

        if (lpBand->iRow != row) {
            yPos += yMaxHeight + SEP_WIDTH;
            row = lpBand->iRow;
        }

        if (lpBand->rcBand.top != yPos || lpBand->rcBand.bottom != yPos + yMaxHeight) {
            lpBand->fDraw |= NTF_INVALIDATE;
            lpBand->rcBand.top = yPos;
            lpBand->rcBand.bottom = yPos + yMaxHeight;
            TRACE("Band %d: %s\n", i, wine_dbgstr_rect(&lpBand->rcBand));
        }
    }
    return yPos + yMaxHeight;
}
