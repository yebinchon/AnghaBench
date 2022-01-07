
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {int cxHeader; } ;
struct TYPE_9__ {scalar_t__ uNumBands; int dwStyle; } ;
struct TYPE_8__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ REBAR_INFO ;
typedef TYPE_3__ REBAR_BAND ;
typedef int LRESULT ;


 int CCS_VERT ;
 int RBS_BANDBORDERS ;
 TYPE_3__* REBAR_GetBand (TYPE_2__ const*,scalar_t__) ;

__attribute__((used)) static LRESULT
REBAR_GetBandBorders (const REBAR_INFO *infoPtr, UINT uBand, RECT *lpRect)
{
    REBAR_BAND *lpBand;

    if (!lpRect)
 return 0;
    if (uBand >= infoPtr->uNumBands)
 return 0;

    lpBand = REBAR_GetBand(infoPtr, uBand);






    if (infoPtr->dwStyle & RBS_BANDBORDERS) {
 if (infoPtr->dwStyle & CCS_VERT) {
     lpRect->left = 1;
     lpRect->top = lpBand->cxHeader + 4;
     lpRect->right = 1;
     lpRect->bottom = 0;
 }
 else {
     lpRect->left = lpBand->cxHeader + 4;
     lpRect->top = 1;
     lpRect->right = 0;
     lpRect->bottom = 1;
 }
    }
    else {
 lpRect->left = lpBand->cxHeader;
    }
    return 0;
}
