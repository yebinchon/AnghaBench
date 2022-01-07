
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int flags; scalar_t__ hwndSelf; scalar_t__ hwndCombo; scalar_t__ himl; } ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ bottom; } ;
struct TYPE_14__ {TYPE_1__ rcImage; } ;
struct TYPE_13__ {scalar_t__ bottom; scalar_t__ top; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_12__ {scalar_t__ cy; } ;
typedef TYPE_2__ SIZE ;
typedef TYPE_3__ RECT ;
typedef scalar_t__ LONG ;
typedef TYPE_4__ IMAGEINFO ;
typedef TYPE_5__ COMBOEX_INFO ;


 int CBES_EX_NOSIZELIMIT ;
 scalar_t__ CBE_EXTRA ;
 int CB_SETITEMHEIGHT ;
 int COMBOEX_GetComboFontSize (TYPE_5__ const*,TYPE_2__*) ;
 int GetWindowRect (scalar_t__,TYPE_3__*) ;
 scalar_t__ ImageList_GetImageInfo (scalar_t__,int ,TYPE_4__*) ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOREDRAW ;
 int SWP_NOZORDER ;
 int SendMessageW (scalar_t__,int ,int,scalar_t__) ;
 int SetWindowPos (scalar_t__,int ,int ,int ,scalar_t__,scalar_t__,int) ;
 int TRACE (char*,scalar_t__) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;

__attribute__((used)) static void COMBOEX_ReSize (const COMBOEX_INFO *infoPtr)
{
    SIZE mysize;
    LONG cy;
    IMAGEINFO iinfo;

    COMBOEX_GetComboFontSize (infoPtr, &mysize);
    cy = mysize.cy + CBE_EXTRA;
    if (infoPtr->himl && ImageList_GetImageInfo(infoPtr->himl, 0, &iinfo)) {
 cy = max (iinfo.rcImage.bottom - iinfo.rcImage.top, cy);
 TRACE("upgraded height due to image:  height=%d\n", cy);
    }
    SendMessageW (infoPtr->hwndSelf, CB_SETITEMHEIGHT, -1, cy);
    if (infoPtr->hwndCombo) {
        SendMessageW (infoPtr->hwndCombo, CB_SETITEMHEIGHT, 0, cy);
 if ( !(infoPtr->flags & CBES_EX_NOSIZELIMIT)) {
     RECT comboRect, ourRect;
     GetWindowRect(infoPtr->hwndCombo, &comboRect);
            GetWindowRect(infoPtr->hwndSelf, &ourRect);
            if (comboRect.bottom > ourRect.bottom)
                SetWindowPos( infoPtr->hwndSelf, 0, 0, 0, ourRect.right - ourRect.left,
                              comboRect.bottom - comboRect.top,
                              SWP_NOMOVE | SWP_NOZORDER | SWP_NOACTIVATE | SWP_NOREDRAW );
 }
    }
}
