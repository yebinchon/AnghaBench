
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {int pszText; } ;
struct TYPE_9__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_11__ {TYPE_6__ itemNew; TYPE_6__ itemOld; int hdr; TYPE_1__ ptDrag; int action; } ;
struct TYPE_10__ {int bNtfUnicode; } ;
typedef TYPE_2__ TREEVIEW_INFO ;
typedef TYPE_3__ NMTREEVIEWW ;
typedef int HTREEITEM ;
typedef int BOOL ;


 int TRACE (char*,int ,int ,int ,int ) ;
 int TREEVIEW_SendRealNotify (TYPE_2__ const*,int ,int *) ;
 int TREEVIEW_TVItemFromItem (TYPE_2__ const*,int ,TYPE_6__*,int ) ;
 int heap_free (int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static BOOL
TREEVIEW_SendTreeviewNotify(const TREEVIEW_INFO *infoPtr, UINT code, UINT action,
       UINT mask, HTREEITEM oldItem, HTREEITEM newItem)
{
    NMTREEVIEWW nmhdr;
    BOOL ret;

    TRACE("code:%d action:0x%x olditem:%p newitem:%p\n",
   code, action, oldItem, newItem);

    memset(&nmhdr, 0, sizeof(NMTREEVIEWW));
    nmhdr.action = action;

    if (oldItem)
 TREEVIEW_TVItemFromItem(infoPtr, mask, &nmhdr.itemOld, oldItem);

    if (newItem)
 TREEVIEW_TVItemFromItem(infoPtr, mask, &nmhdr.itemNew, newItem);

    nmhdr.ptDrag.x = 0;
    nmhdr.ptDrag.y = 0;

    ret = TREEVIEW_SendRealNotify(infoPtr, code, &nmhdr.hdr);
    if (!infoPtr->bNtfUnicode)
    {
        heap_free(nmhdr.itemOld.pszText);
        heap_free(nmhdr.itemNew.pszText);
    }
    return ret;
}
