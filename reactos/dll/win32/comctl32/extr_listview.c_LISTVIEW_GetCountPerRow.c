
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int right; int left; } ;
struct TYPE_5__ {int nItemWidth; TYPE_1__ rcList; } ;
typedef TYPE_2__ LISTVIEW_INFO ;
typedef int INT ;


 int max (int,int) ;

__attribute__((used)) static inline INT LISTVIEW_GetCountPerRow(const LISTVIEW_INFO *infoPtr)
{
    INT nListWidth = infoPtr->rcList.right - infoPtr->rcList.left;

    return max(nListWidth/(infoPtr->nItemWidth ? infoPtr->nItemWidth : 1), 1);
}
