
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ uNumBands; int hwndSelf; scalar_t__ hDefaultFont; int hcurDrag; int hcurVert; int hcurHorz; int hcurArrow; int * bands; int hwndChild; struct TYPE_7__* lpText; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_1__ REBAR_BAND ;
typedef int LRESULT ;


 int CloseThemeData (int ) ;
 int DPA_Destroy (int *) ;
 int DeleteObject (scalar_t__) ;
 int DestroyCursor (int ) ;
 int DestroyWindow (int ) ;
 int Free (TYPE_1__*) ;
 int GetWindowTheme (int ) ;
 TYPE_1__* REBAR_GetBand (TYPE_1__*,scalar_t__) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRACE (char*) ;

__attribute__((used)) static LRESULT
REBAR_Destroy (REBAR_INFO *infoPtr)
{
    REBAR_BAND *lpBand;
    UINT i;


    for (i = 0; i < infoPtr->uNumBands; i++) {
 lpBand = REBAR_GetBand(infoPtr, i);


        Free (lpBand->lpText);
 lpBand->lpText = ((void*)0);

 DestroyWindow (lpBand->hwndChild);
 Free (lpBand);
    }


    DPA_Destroy (infoPtr->bands);
    infoPtr->bands = ((void*)0);

    DestroyCursor (infoPtr->hcurArrow);
    DestroyCursor (infoPtr->hcurHorz);
    DestroyCursor (infoPtr->hcurVert);
    DestroyCursor (infoPtr->hcurDrag);
    if (infoPtr->hDefaultFont) DeleteObject (infoPtr->hDefaultFont);
    SetWindowLongPtrW (infoPtr->hwndSelf, 0, 0);

    CloseThemeData (GetWindowTheme (infoPtr->hwndSelf));


    Free (infoPtr);
    TRACE("destroyed!\n");
    return 0;
}
