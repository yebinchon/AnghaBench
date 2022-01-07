
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int uNumItems; } ;
struct TYPE_14__ {scalar_t__ pszText; scalar_t__ firstChild; } ;
typedef TYPE_1__ TREEVIEW_ITEM ;
typedef TYPE_2__ TREEVIEW_INFO ;


 scalar_t__ LPSTR_TEXTCALLBACKW ;
 int TRACE (char*,TYPE_1__*,int ) ;
 int TREEVIEW_FreeItem (TYPE_2__*,TYPE_1__*) ;
 int TREEVIEW_ItemName (TYPE_1__*) ;
 int TREEVIEW_RemoveAllChildren (TYPE_2__*,TYPE_1__*) ;
 int TREEVIEW_SendTreeviewNotify (TYPE_2__*,int ,int ,int,TYPE_1__*,int ) ;
 int TREEVIEW_UnlinkItem (TYPE_1__*) ;
 int TVC_UNKNOWN ;
 int TVIF_HANDLE ;
 int TVIF_PARAM ;
 int TVN_DELETEITEMW ;
 int heap_free (scalar_t__) ;

__attribute__((used)) static void
TREEVIEW_RemoveItem(TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *item)
{
    TRACE("%p, (%s)\n", item, TREEVIEW_ItemName(item));

    if (item->firstChild)
 TREEVIEW_RemoveAllChildren(infoPtr, item);

    TREEVIEW_SendTreeviewNotify(infoPtr, TVN_DELETEITEMW, TVC_UNKNOWN,
    TVIF_HANDLE | TVIF_PARAM, item, 0);

    TREEVIEW_UnlinkItem(item);

    infoPtr->uNumItems--;

    if (item->pszText != LPSTR_TEXTCALLBACKW)
        heap_free(item->pszText);

    TREEVIEW_FreeItem(infoPtr, item);
}
