
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nb_items; int hwndCombo; } ;
typedef scalar_t__ INT_PTR ;
typedef scalar_t__ INT ;
typedef TYPE_1__ COMBOEX_INFO ;


 int CB_DELETESTRING ;
 scalar_t__ CB_ERR ;
 int COMBOEX_FindItem (TYPE_1__*,scalar_t__) ;
 int SendMessageW (int ,int ,scalar_t__,int ) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static INT COMBOEX_DeleteItem (COMBOEX_INFO *infoPtr, INT_PTR index)
{
    TRACE("(index=%ld)\n", index);


    if ((index >= infoPtr->nb_items) || (index < 0)) return CB_ERR;
    if (!COMBOEX_FindItem(infoPtr, index)) return CB_ERR;


    SendMessageW (infoPtr->hwndCombo, CB_DELETESTRING, index, 0);

    return infoPtr->nb_items;
}
