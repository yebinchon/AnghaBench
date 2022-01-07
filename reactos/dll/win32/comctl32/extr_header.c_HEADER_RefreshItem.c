
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* items; int hwndSelf; int bRectsValid; } ;
struct TYPE_5__ {int rect; } ;
typedef size_t INT ;
typedef TYPE_2__ HEADER_INFO ;


 int FALSE ;
 int HEADER_SetItemBounds (TYPE_2__*) ;
 int InvalidateRect (int ,int *,int ) ;

__attribute__((used)) static void
HEADER_RefreshItem (HEADER_INFO *infoPtr, INT iItem)
{
    if (!infoPtr->bRectsValid)
        HEADER_SetItemBounds(infoPtr);

    InvalidateRect(infoPtr->hwndSelf, &infoPtr->items[iItem].rect, FALSE);
}
