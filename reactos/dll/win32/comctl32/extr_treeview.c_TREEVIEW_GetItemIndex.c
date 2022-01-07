
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int HTREEITEM ;


 int DPA_GetPtrIndex (int ,int ) ;

__attribute__((used)) static inline int
TREEVIEW_GetItemIndex(const TREEVIEW_INFO *infoPtr, HTREEITEM handle)
{
    return DPA_GetPtrIndex(infoPtr->items, handle);
}
