
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pszText; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;


 int * LPSTR_TEXTCALLBACKW ;
 char const* debugstr_w (int *) ;

__attribute__((used)) static const char *
TREEVIEW_ItemName(const TREEVIEW_ITEM *item)
{
    if (item == ((void*)0)) return "<null item>";
    if (item->pszText == LPSTR_TEXTCALLBACKW) return "<callback>";
    if (item->pszText == ((void*)0)) return "<null>";
    return debugstr_w(item->pszText);
}
