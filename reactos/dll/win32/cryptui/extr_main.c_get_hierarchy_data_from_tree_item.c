
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hierarchy_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ lParam; int * hItem; int mask; } ;
typedef TYPE_1__ TVITEMW ;
typedef int LPARAM ;
typedef int HWND ;
typedef int * HTREEITEM ;


 int SendMessageW (int ,int ,int ,int ) ;
 int TVGN_PARENT ;
 int TVIF_PARAM ;
 int TVM_GETITEMW ;
 int TVM_GETNEXTITEM ;

__attribute__((used)) static struct hierarchy_data *get_hierarchy_data_from_tree_item(HWND tree,
 HTREEITEM hItem)
{
    struct hierarchy_data *data = ((void*)0);
    HTREEITEM root = ((void*)0);

    do {
        HTREEITEM parent = (HTREEITEM)SendMessageW(tree, TVM_GETNEXTITEM,
         TVGN_PARENT, (LPARAM)hItem);

        if (!parent)
            root = hItem;
        hItem = parent;
    } while (hItem);
    if (root)
    {
        TVITEMW item;

        item.mask = TVIF_PARAM;
        item.hItem = root;
        SendMessageW(tree, TVM_GETITEMW, 0, (LPARAM)&item);
        data = (struct hierarchy_data *)item.lParam;
    }
    return data;
}
