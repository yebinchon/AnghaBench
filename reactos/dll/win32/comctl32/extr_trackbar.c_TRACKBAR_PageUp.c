
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lPos; scalar_t__ lRangeMin; scalar_t__ lPageSize; } ;
typedef TYPE_1__ TRACKBAR_INFO ;


 int TB_PAGEUP ;
 int notify_with_scroll (TYPE_1__*,int ) ;

__attribute__((used)) static inline void
TRACKBAR_PageUp (TRACKBAR_INFO *infoPtr)
{
    if (infoPtr->lPos == infoPtr->lRangeMin) return;

    infoPtr->lPos -= infoPtr->lPageSize;
    if (infoPtr->lPos < infoPtr->lRangeMin)
        infoPtr->lPos = infoPtr->lRangeMin;
    notify_with_scroll (infoPtr, TB_PAGEUP);
}
