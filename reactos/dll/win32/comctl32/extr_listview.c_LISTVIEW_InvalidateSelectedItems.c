
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int nItem; } ;
struct TYPE_10__ {int rcList; } ;
typedef TYPE_1__ LISTVIEW_INFO ;
typedef TYPE_2__ ITERATOR ;


 scalar_t__ LISTVIEW_GetItemState (TYPE_1__ const*,int ,int ) ;
 int LISTVIEW_InvalidateItem (TYPE_1__ const*,int ) ;
 int LVIS_SELECTED ;
 int iterator_destroy (TYPE_2__*) ;
 int iterator_frameditems (TYPE_2__*,TYPE_1__ const*,int *) ;
 scalar_t__ iterator_next (TYPE_2__*) ;

__attribute__((used)) static void LISTVIEW_InvalidateSelectedItems(const LISTVIEW_INFO *infoPtr)
{
    ITERATOR i;

    iterator_frameditems(&i, infoPtr, &infoPtr->rcList);
    while(iterator_next(&i))
    {
 if (LISTVIEW_GetItemState(infoPtr, i.nItem, LVIS_SELECTED))
     LISTVIEW_InvalidateItem(infoPtr, i.nItem);
    }
    iterator_destroy(&i);
}
