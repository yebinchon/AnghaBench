
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_13__ {int lParam; int state; } ;
struct TYPE_10__ {int y; int x; } ;
struct TYPE_9__ {int mask; int lParam; int state; TYPE_5__* hItem; } ;
struct TYPE_12__ {int hdr; TYPE_2__ ptDrag; TYPE_1__ itemNew; scalar_t__ action; } ;
struct TYPE_11__ {int y; int x; } ;
typedef int TREEVIEW_INFO ;
typedef TYPE_3__ POINT ;
typedef TYPE_4__ NMTREEVIEWW ;
typedef TYPE_5__* HTREEITEM ;
typedef int BOOL ;


 int TRACE (char*,int ,TYPE_5__*) ;
 int TREEVIEW_SendRealNotify (int const*,int ,int *) ;
 int TVIF_HANDLE ;
 int TVIF_PARAM ;
 int TVIF_STATE ;

__attribute__((used)) static BOOL
TREEVIEW_SendTreeviewDnDNotify(const TREEVIEW_INFO *infoPtr, UINT code,
          HTREEITEM dragItem, POINT pt)
{
    NMTREEVIEWW nmhdr;

    TRACE("code:%d dragitem:%p\n", code, dragItem);

    nmhdr.action = 0;
    nmhdr.itemNew.mask = TVIF_STATE | TVIF_PARAM | TVIF_HANDLE;
    nmhdr.itemNew.hItem = dragItem;
    nmhdr.itemNew.state = dragItem->state;
    nmhdr.itemNew.lParam = dragItem->lParam;

    nmhdr.ptDrag.x = pt.x;
    nmhdr.ptDrag.y = pt.y;

    return TREEVIEW_SendRealNotify(infoPtr, code, &nmhdr.hdr);
}
