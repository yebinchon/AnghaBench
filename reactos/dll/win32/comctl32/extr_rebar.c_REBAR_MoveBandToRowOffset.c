
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int fStyle; int cxMinBand; scalar_t__ cxEffective; } ;
struct TYPE_8__ {int iGrabbedBand; int bands; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ REBAR_BAND ;
typedef int INT ;
typedef int BOOL ;


 int DPA_DeletePtr (int ,int) ;
 int DPA_InsertPtr (int ,int,TYPE_2__*) ;
 int RBBS_BREAK ;
 TYPE_2__* REBAR_GetBand (TYPE_1__*,int) ;
 scalar_t__ SEP_WIDTH ;
 int next_visible (TYPE_1__*,int) ;

__attribute__((used)) static int REBAR_MoveBandToRowOffset(REBAR_INFO *infoPtr, INT iBand, INT iFirstBand,
    INT iLastBand, INT xOff, BOOL reorder)
{
    REBAR_BAND *insertBand = REBAR_GetBand(infoPtr, iBand);
    int xPos = 0, i;
    const BOOL setBreak = REBAR_GetBand(infoPtr, iFirstBand)->fStyle & RBBS_BREAK;


    if(reorder)
    {

        for (i = iFirstBand; i < iLastBand; i = next_visible(infoPtr, i))
        {
            if(xPos > xOff)
                break;
            xPos += REBAR_GetBand(infoPtr, i)->cxEffective + SEP_WIDTH;
        }
    }
    else
    {

        for (i = iFirstBand; i < iLastBand; i = next_visible(infoPtr, i))
        {
            const REBAR_BAND *band = REBAR_GetBand(infoPtr, i);
            if(xPos + band->cxMinBand / 2 > xOff)
                break;
            xPos += band->cxEffective + SEP_WIDTH;
        }
    }


    DPA_DeletePtr(infoPtr->bands, iBand);
    if(i > iBand)
        i--;
    DPA_InsertPtr(infoPtr->bands, i, insertBand);


    insertBand->fStyle &= ~RBBS_BREAK;
    if(setBreak)
        REBAR_GetBand(infoPtr, iFirstBand)->fStyle |= RBBS_BREAK;


    if(infoPtr->iGrabbedBand == iBand)
    {
        infoPtr->iGrabbedBand = i;
        return i;
    }
    else return -1;
}
