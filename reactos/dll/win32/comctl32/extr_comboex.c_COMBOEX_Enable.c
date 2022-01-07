
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; scalar_t__ hwndCombo; scalar_t__ hwndEdit; } ;
typedef int LRESULT ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef scalar_t__ BOOL ;


 int EnableWindow (scalar_t__,scalar_t__) ;
 int InvalidateRect (int ,int *,int ) ;
 int TRACE (char*,int ,char*) ;
 int TRUE ;

__attribute__((used)) static LRESULT COMBOEX_Enable (COMBOEX_INFO *infoPtr, BOOL enable)
{
    TRACE("hwnd=%p, enable=%s\n", infoPtr->hwndSelf, enable ? "TRUE":"FALSE");

    if (infoPtr->hwndEdit)
       EnableWindow(infoPtr->hwndEdit, enable);

    EnableWindow(infoPtr->hwndCombo, enable);


    InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);

    return 1;
}
