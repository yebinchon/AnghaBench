
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_10__ {int uItemHeight; int clientWidth; TYPE_2__* firstVisible; } ;
struct TYPE_7__ {int top; int bottom; int right; scalar_t__ left; } ;
struct TYPE_9__ {int visibleOrder; int iIntegral; TYPE_1__ rect; } ;
struct TYPE_8__ {int visibleOrder; } ;
typedef TYPE_3__ TREEVIEW_ITEM ;
typedef TYPE_4__ TREEVIEW_INFO ;



__attribute__((used)) static VOID
TREEVIEW_ComputeItemRect(const TREEVIEW_INFO *infoPtr, TREEVIEW_ITEM *item)
{
    item->rect.top = infoPtr->uItemHeight *
 (item->visibleOrder - infoPtr->firstVisible->visibleOrder);

    item->rect.bottom = item->rect.top
 + infoPtr->uItemHeight * item->iIntegral - 1;

    item->rect.left = 0;
    item->rect.right = infoPtr->clientWidth;
}
