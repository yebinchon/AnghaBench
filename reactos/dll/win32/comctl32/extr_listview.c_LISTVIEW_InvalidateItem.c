
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nItemCount; } ;
typedef int RECT ;
typedef TYPE_1__ LISTVIEW_INFO ;
typedef scalar_t__ INT ;


 int LISTVIEW_GetItemBox (TYPE_1__ const*,scalar_t__,int *) ;
 int LISTVIEW_InvalidateRect (TYPE_1__ const*,int *) ;
 int is_redrawing (TYPE_1__ const*) ;

__attribute__((used)) static inline void LISTVIEW_InvalidateItem(const LISTVIEW_INFO *infoPtr, INT nItem)
{
    RECT rcBox;

    if (!is_redrawing(infoPtr) || nItem < 0 || nItem >= infoPtr->nItemCount)
        return;

    LISTVIEW_GetItemBox(infoPtr, nItem, &rcBox);
    LISTVIEW_InvalidateRect(infoPtr, &rcBox);
}
