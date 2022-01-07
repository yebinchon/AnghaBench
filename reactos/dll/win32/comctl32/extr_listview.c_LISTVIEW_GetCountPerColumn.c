
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bottom; int top; } ;
struct TYPE_5__ {int nItemHeight; TYPE_1__ rcList; } ;
typedef TYPE_2__ LISTVIEW_INFO ;
typedef int INT ;


 int max (int,int) ;

__attribute__((used)) static inline INT LISTVIEW_GetCountPerColumn(const LISTVIEW_INFO *infoPtr)
{
    INT nListHeight = infoPtr->rcList.bottom - infoPtr->rcList.top;

    return infoPtr->nItemHeight ? max(nListHeight / infoPtr->nItemHeight, 1) : 0;
}
