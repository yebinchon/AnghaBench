
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ uView; int nItemHeight; } ;
struct TYPE_16__ {scalar_t__ y; int x; } ;
struct TYPE_15__ {int bottom; scalar_t__ top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ POINT ;
typedef TYPE_3__ LISTVIEW_INFO ;
typedef int INT ;


 int LISTVIEW_GetHeaderRect (TYPE_3__ const*,int ,TYPE_1__*) ;
 int LISTVIEW_GetItemOrigin (TYPE_3__ const*,int ,TYPE_2__*) ;
 int LISTVIEW_GetOrigin (TYPE_3__ const*,TYPE_2__*) ;
 int LISTVIEW_InvalidateRect (TYPE_3__ const*,TYPE_1__*) ;
 scalar_t__ LV_VIEW_DETAILS ;
 int OffsetRect (TYPE_1__*,int ,scalar_t__) ;
 int assert (int) ;
 int is_redrawing (TYPE_3__ const*) ;

__attribute__((used)) static inline void LISTVIEW_InvalidateSubItem(const LISTVIEW_INFO *infoPtr, INT nItem, INT nSubItem)
{
    POINT Origin, Position;
    RECT rcBox;

    if(!is_redrawing(infoPtr)) return;
    assert (infoPtr->uView == LV_VIEW_DETAILS);
    LISTVIEW_GetOrigin(infoPtr, &Origin);
    LISTVIEW_GetItemOrigin(infoPtr, nItem, &Position);
    LISTVIEW_GetHeaderRect(infoPtr, nSubItem, &rcBox);
    rcBox.top = 0;
    rcBox.bottom = infoPtr->nItemHeight;
    OffsetRect(&rcBox, Origin.x, Origin.y + Position.y);
    LISTVIEW_InvalidateRect(infoPtr, &rcBox);
}
