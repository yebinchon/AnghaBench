
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_12__ {struct TYPE_12__* lpText; scalar_t__ hwndChild; } ;
struct TYPE_11__ {int uNumBands; int bands; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ REBAR_BAND ;
typedef int LRESULT ;


 int DPA_DeletePtr (int ,int) ;
 int FALSE ;
 int Free (TYPE_2__*) ;
 int RBN_DELETEDBAND ;
 int RBN_DELETINGBAND ;
 TYPE_2__* REBAR_GetBand (TYPE_1__*,int) ;
 int REBAR_Layout (TYPE_1__*) ;
 int REBAR_Notify_NMREBAR (TYPE_1__*,int,int ) ;
 int REBAR_ValidateBand (TYPE_1__*,TYPE_2__*) ;
 int SW_HIDE ;
 int ShowWindow (scalar_t__,int ) ;
 int TRACE (char*,int) ;
 int TRUE ;

__attribute__((used)) static LRESULT
REBAR_DeleteBand (REBAR_INFO *infoPtr, WPARAM wParam)
{
    UINT uBand = (UINT)wParam;
    REBAR_BAND *lpBand;

    if (uBand >= infoPtr->uNumBands)
 return FALSE;

    TRACE("deleting band %u!\n", uBand);
    lpBand = REBAR_GetBand(infoPtr, uBand);
    REBAR_Notify_NMREBAR (infoPtr, uBand, RBN_DELETINGBAND);


    if (lpBand->hwndChild)
        ShowWindow(lpBand->hwndChild, SW_HIDE);
    Free(lpBand->lpText);
    Free(lpBand);

    infoPtr->uNumBands--;
    DPA_DeletePtr(infoPtr->bands, uBand);

    REBAR_Notify_NMREBAR (infoPtr, -1, RBN_DELETEDBAND);


    if (infoPtr->uNumBands == 1)
      REBAR_ValidateBand (infoPtr, REBAR_GetBand(infoPtr, 0));

    REBAR_Layout(infoPtr);

    return TRUE;
}
