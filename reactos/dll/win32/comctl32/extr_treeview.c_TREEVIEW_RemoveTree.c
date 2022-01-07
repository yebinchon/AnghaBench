
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uNumItems; int root; } ;
typedef TYPE_1__ TREEVIEW_INFO ;


 int TREEVIEW_RemoveAllChildren (TYPE_1__*,int ) ;
 int assert (int) ;

__attribute__((used)) static void
TREEVIEW_RemoveTree(TREEVIEW_INFO *infoPtr)
{
    TREEVIEW_RemoveAllChildren(infoPtr, infoPtr->root);

    assert(infoPtr->uNumItems == 0);
}
