
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {unsigned int uNumItem; TYPE_3__* items; int hwndSelf; int bRectsValid; } ;
struct TYPE_8__ {int left; scalar_t__ right; int bottom; int top; } ;
struct TYPE_10__ {scalar_t__ cxy; TYPE_1__ rect; } ;
struct TYPE_9__ {int left; int bottom; int top; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ HEADER_ITEM ;
typedef TYPE_4__ HEADER_INFO ;


 int GetClientRect (int ,TYPE_2__*) ;
 size_t HEADER_OrderToIndex (TYPE_4__*,unsigned int) ;
 int TRUE ;

__attribute__((used)) static void
HEADER_SetItemBounds (HEADER_INFO *infoPtr)
{
    HEADER_ITEM *phdi;
    RECT rect;
    unsigned int i;
    int x;

    infoPtr->bRectsValid = TRUE;

    if (infoPtr->uNumItem == 0)
        return;

    GetClientRect (infoPtr->hwndSelf, &rect);

    x = rect.left;
    for (i = 0; i < infoPtr->uNumItem; i++) {
        phdi = &infoPtr->items[HEADER_OrderToIndex(infoPtr,i)];
        phdi->rect.top = rect.top;
        phdi->rect.bottom = rect.bottom;
        phdi->rect.left = x;
        phdi->rect.right = phdi->rect.left + ((phdi->cxy>0)?phdi->cxy:0);
        x = phdi->rect.right;
    }
}
