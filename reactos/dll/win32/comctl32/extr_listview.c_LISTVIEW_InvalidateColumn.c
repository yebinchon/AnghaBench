
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int bottom; int top; } ;
struct TYPE_12__ {TYPE_1__ rcList; } ;
struct TYPE_11__ {int bottom; int top; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__ LISTVIEW_INFO ;
typedef int INT ;


 int LISTVIEW_GetHeaderRect (TYPE_3__ const*,int ,TYPE_2__*) ;
 int LISTVIEW_InvalidateRect (TYPE_3__ const*,TYPE_2__*) ;
 int is_redrawing (TYPE_3__ const*) ;

__attribute__((used)) static inline void LISTVIEW_InvalidateColumn(const LISTVIEW_INFO *infoPtr, INT nColumn)
{
    RECT rcCol;

    if(!is_redrawing(infoPtr)) return;
    LISTVIEW_GetHeaderRect(infoPtr, nColumn, &rcCol);
    rcCol.top = infoPtr->rcList.top;
    rcCol.bottom = infoPtr->rcList.bottom;
    LISTVIEW_InvalidateRect(infoPtr, &rcCol);
}
