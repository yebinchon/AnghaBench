
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_6__ {int selected; scalar_t__ nb_items; TYPE_2__* items; } ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef TYPE_2__ CBE_ITEMDATA ;


 int COMBOEX_FreeText (TYPE_2__*) ;
 int Free (TYPE_2__*) ;

__attribute__((used)) static void COMBOEX_ResetContent (COMBOEX_INFO *infoPtr)
{
    if (infoPtr->items)
    {
        CBE_ITEMDATA *item, *next;

        item = infoPtr->items;
        while (item) {
            next = item->next;
            COMBOEX_FreeText (item);
            Free (item);
            item = next;
        }
        infoPtr->items = 0;
    }

    infoPtr->selected = -1;
    infoPtr->nb_items = 0;
}
