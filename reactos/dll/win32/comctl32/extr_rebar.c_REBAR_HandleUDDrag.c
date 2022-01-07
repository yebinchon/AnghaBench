
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int x; int y; } ;
struct TYPE_14__ {int bottom; } ;
struct TYPE_16__ {int fStyle; TYPE_1__ rcBand; } ;
struct TYPE_15__ {int dwStyle; int uNumBands; int iGrabbedBand; int ihitoffset; int bands; } ;
typedef TYPE_2__ REBAR_INFO ;
typedef TYPE_3__ REBAR_BAND ;
typedef TYPE_4__ POINT ;
typedef int INT ;


 int CCS_VERT ;
 int DPA_DeletePtr (int ,int) ;
 void* DPA_InsertPtr (int ,int,TYPE_3__*) ;
 int ERR (char*) ;
 int FALSE ;
 int RBBS_BREAK ;
 TYPE_3__* REBAR_GetBand (TYPE_2__*,int) ;
 int REBAR_Layout (TYPE_2__*) ;
 int REBAR_MoveBandToRowOffset (TYPE_2__*,int,int,int,int,int ) ;
 int REBAR_PRE_GRIPPER ;
 int first_visible (TYPE_2__*) ;
 int get_row_end_for_band (TYPE_2__*,int) ;

__attribute__((used)) static void
REBAR_HandleUDDrag (REBAR_INFO *infoPtr, const POINT *ptsmove)
{
    INT yOff = (infoPtr->dwStyle & CCS_VERT) ? ptsmove->x : ptsmove->y;
    INT iHitBand, iRowBegin, iNextRowBegin;
    REBAR_BAND *hitBand, *rowBeginBand;

    if(infoPtr->uNumBands <= 0)
        ERR("There are no bands in this rebar\n");



    if(infoPtr->uNumBands <= 1)
        return;

    iHitBand = infoPtr->iGrabbedBand;
    hitBand = REBAR_GetBand(infoPtr, iHitBand);




    if((hitBand->fStyle & RBBS_BREAK) &&
        (iHitBand < infoPtr->uNumBands - 1))
        REBAR_GetBand(infoPtr, iHitBand + 1)->fStyle |= RBBS_BREAK;

    if(yOff < 0)
    {

        if(iHitBand==0 && (infoPtr->uNumBands==1 || REBAR_GetBand(infoPtr, 1)->fStyle&RBBS_BREAK))
            return;
        DPA_DeletePtr(infoPtr->bands, iHitBand);
        hitBand->fStyle &= ~RBBS_BREAK;
        REBAR_GetBand(infoPtr, 0)->fStyle |= RBBS_BREAK;
        infoPtr->iGrabbedBand = DPA_InsertPtr(
            infoPtr->bands, 0, hitBand);
    }
    else if(yOff > REBAR_GetBand(infoPtr, infoPtr->uNumBands - 1)->rcBand.bottom)
    {

        if(iHitBand == infoPtr->uNumBands-1 && hitBand->fStyle&RBBS_BREAK)
            return;
        DPA_DeletePtr(infoPtr->bands, iHitBand);
        hitBand->fStyle |= RBBS_BREAK;
        infoPtr->iGrabbedBand = DPA_InsertPtr(
            infoPtr->bands, infoPtr->uNumBands - 1, hitBand);
    }
    else
    {

        iRowBegin = first_visible(infoPtr);
        while(iRowBegin < infoPtr->uNumBands)
        {
            iNextRowBegin = get_row_end_for_band(infoPtr, iRowBegin);
            rowBeginBand = REBAR_GetBand(infoPtr, iRowBegin);
            if(rowBeginBand->rcBand.bottom > yOff)
            {
                REBAR_MoveBandToRowOffset(
                    infoPtr, iHitBand, iRowBegin, iNextRowBegin,
                    ((infoPtr->dwStyle & CCS_VERT) ? ptsmove->y : ptsmove->x)
                        - REBAR_PRE_GRIPPER - infoPtr->ihitoffset, FALSE);
                break;
            }

            iRowBegin = iNextRowBegin;
        }
    }

    REBAR_Layout(infoPtr);
}
