
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int cy; int cx; } ;
struct TYPE_15__ {int bottom; int right; } ;
struct TYPE_14__ {int fsState; int fsStyle; } ;
struct TYPE_13__ {scalar_t__ nMaxTextRows; int dwExStyle; } ;
typedef TYPE_1__ TOOLBAR_INFO ;
typedef TYPE_2__ TBUTTON_INFO ;
typedef TYPE_3__ RECT ;
typedef int * LPWSTR ;
typedef TYPE_4__* LPSIZE ;
typedef int HDC ;


 int BTNS_NOPREFIX ;
 int BTNS_SHOWTEXT ;
 int DT_CALCRECT ;
 int DT_NOPREFIX ;
 int DT_SINGLELINE ;
 int DT_VCENTER ;
 int DrawTextW (int ,int *,int,TYPE_3__*,int) ;
 int GetTextExtentPoint32W (int ,int *,int ,TYPE_4__*) ;
 int SetRect (TYPE_3__*,int ,int ,int ,int ) ;
 int TBSTATE_HIDDEN ;
 int TBSTYLE_EX_MIXEDBUTTONS ;
 int * TOOLBAR_GetText (TYPE_1__ const*,TYPE_2__ const*) ;
 int TRACE (char*,int ,int ) ;
 int strlenW (int *) ;

__attribute__((used)) static void
TOOLBAR_MeasureString(const TOOLBAR_INFO *infoPtr, const TBUTTON_INFO *btnPtr,
        HDC hdc, LPSIZE lpSize)
{
    RECT myrect;

    lpSize->cx = 0;
    lpSize->cy = 0;

    if (infoPtr->nMaxTextRows > 0 &&
        !(btnPtr->fsState & TBSTATE_HIDDEN) &&
        (!(infoPtr->dwExStyle & TBSTYLE_EX_MIXEDBUTTONS) ||
        (btnPtr->fsStyle & BTNS_SHOWTEXT)) )
    {
        LPWSTR lpText = TOOLBAR_GetText(infoPtr, btnPtr);

 if(lpText != ((void*)0)) {

     GetTextExtentPoint32W (hdc, lpText, strlenW (lpText), lpSize);


            SetRect(&myrect, 0, 0, lpSize->cx, lpSize->cy);


     DrawTextW (hdc, lpText, -1, &myrect, DT_VCENTER | DT_SINGLELINE |
         DT_CALCRECT | ((btnPtr->fsStyle & BTNS_NOPREFIX) ?
      DT_NOPREFIX : 0));


     lpSize->cx = myrect.right;
     lpSize->cy = myrect.bottom;
 }
    }

    TRACE("string size %d x %d!\n", lpSize->cx, lpSize->cy);
}
