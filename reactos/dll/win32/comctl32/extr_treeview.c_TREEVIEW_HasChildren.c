
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cChildren; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef int TREEVIEW_INFO ;
typedef int BOOL ;


 scalar_t__ I_CHILDRENCALLBACK ;
 int TREEVIEW_UpdateDispInfo (int const*,TYPE_1__*,int ) ;
 int TVIF_CHILDREN ;

__attribute__((used)) static BOOL
TREEVIEW_HasChildren(const TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *item)
{
    TREEVIEW_UpdateDispInfo(infoPtr, item, TVIF_CHILDREN);


    return item->cChildren != 0 && item->cChildren != I_CHILDRENCALLBACK;
}
