
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int pszText; } ;
struct TYPE_8__ {int hwndCombo; int selected; } ;
typedef int INT_PTR ;
typedef scalar_t__ INT ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef TYPE_2__ CBE_ITEMDATA ;


 int CB_SETCURSEL ;
 TYPE_2__* COMBOEX_FindItem (TYPE_1__*,int ) ;
 int COMBOEX_SetEditText (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int debugstr_txt (int ) ;

__attribute__((used)) static INT COMBOEX_SetCursel (COMBOEX_INFO *infoPtr, INT_PTR index)
{
    CBE_ITEMDATA *item;
    INT sel;

    if (!(item = COMBOEX_FindItem(infoPtr, index)))
 return SendMessageW (infoPtr->hwndCombo, CB_SETCURSEL, index, 0);

    TRACE("selecting item %ld text=%s\n", index, debugstr_txt(item->pszText));
    infoPtr->selected = index;

    sel = (INT)SendMessageW (infoPtr->hwndCombo, CB_SETCURSEL, index, 0);
    COMBOEX_SetEditText (infoPtr, item);
    return sel;
}
