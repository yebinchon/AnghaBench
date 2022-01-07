
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hwndSelf; scalar_t__ defaultFont; int edit; scalar_t__ hwndEdit; scalar_t__ hwndCombo; } ;
typedef int LRESULT ;
typedef TYPE_1__ COMBOEX_INFO ;


 int COMBOEX_ComboWndProc ;
 int COMBOEX_EditWndProc ;
 int COMBOEX_FreeText (int *) ;
 int COMBOEX_ResetContent (TYPE_1__*) ;
 int COMBO_SUBCLASSID ;
 int DeleteObject (scalar_t__) ;
 int EDIT_SUBCLASSID ;
 int Free (TYPE_1__*) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowSubclass (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static LRESULT COMBOEX_Destroy (COMBOEX_INFO *infoPtr)
{
    if (infoPtr->hwndCombo)
        SetWindowSubclass(infoPtr->hwndCombo, COMBOEX_ComboWndProc, COMBO_SUBCLASSID, 0);

    if (infoPtr->hwndEdit)
        SetWindowSubclass(infoPtr->hwndEdit, COMBOEX_EditWndProc, EDIT_SUBCLASSID, 0);

    COMBOEX_FreeText (&infoPtr->edit);
    COMBOEX_ResetContent (infoPtr);

    if (infoPtr->defaultFont)
 DeleteObject (infoPtr->defaultFont);

    SetWindowLongPtrW (infoPtr->hwndSelf, 0, 0);


    Free (infoPtr);

    return 0;
}
