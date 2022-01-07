
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int mask; } ;
struct TYPE_7__ {int hwndEdit; } ;
typedef int LPARAM ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef TYPE_2__ CBE_ITEMDATA ;


 int CBEIF_TEXT ;
 scalar_t__ COMBOEX_GetText (TYPE_1__ const*,TYPE_2__*) ;
 int EM_SETSEL ;
 int SendMessageW (int ,int ,int ,int) ;
 int WM_SETTEXT ;

__attribute__((used)) static void COMBOEX_SetEditText (const COMBOEX_INFO *infoPtr, CBE_ITEMDATA *item)
{
    if (!infoPtr->hwndEdit) return;

    if (item->mask & CBEIF_TEXT) {
 SendMessageW (infoPtr->hwndEdit, WM_SETTEXT, 0, (LPARAM)COMBOEX_GetText(infoPtr, item));
 SendMessageW (infoPtr->hwndEdit, EM_SETSEL, 0, 0);
 SendMessageW (infoPtr->hwndEdit, EM_SETSEL, 0, -1);
    }
}
