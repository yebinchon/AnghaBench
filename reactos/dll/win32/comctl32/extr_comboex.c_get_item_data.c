
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndCombo; } ;
typedef int INT ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef int CBE_ITEMDATA ;


 int CB_GETITEMDATA ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;

__attribute__((used)) static inline CBE_ITEMDATA *get_item_data(const COMBOEX_INFO *infoPtr, INT index)
{
    return (CBE_ITEMDATA *)SendMessageW (infoPtr->hwndCombo, CB_GETITEMDATA,
                                         index, 0);
}
