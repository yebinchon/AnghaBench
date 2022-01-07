
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int left; scalar_t__ right; } ;
struct TYPE_5__ {scalar_t__ cxEffective; TYPE_1__ rcBand; int fDraw; } ;
typedef int REBAR_INFO ;
typedef TYPE_2__ REBAR_BAND ;
typedef int INT ;


 int NTF_INVALIDATE ;
 TYPE_2__* REBAR_GetBand (int const*,int) ;
 scalar_t__ SEP_WIDTH ;
 int TRACE (char*,int,int,scalar_t__) ;
 int next_visible (int const*,int) ;

__attribute__((used)) static void REBAR_SetRowRectsX(const REBAR_INFO *infoPtr, INT iBeginBand, INT iEndBand)
{
    int xPos = 0, i;
    for (i = iBeginBand; i < iEndBand; i = next_visible(infoPtr, i))
    {
        REBAR_BAND *lpBand = REBAR_GetBand(infoPtr, i);
        if (lpBand->rcBand.left != xPos || lpBand->rcBand.right != xPos + lpBand->cxEffective) {
            lpBand->fDraw |= NTF_INVALIDATE;
            TRACE("Setting rect %d to %d,%d\n", i, xPos, xPos + lpBand->cxEffective);
            lpBand->rcBand.left = xPos;
            lpBand->rcBand.right = xPos + lpBand->cxEffective;
        }
        xPos += lpBand->cxEffective + SEP_WIDTH;
    }
}
