
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lPos; scalar_t__ lRangeMax; scalar_t__ lLineSize; } ;
typedef TYPE_1__ TRACKBAR_INFO ;


 int TB_LINEDOWN ;
 int notify_with_scroll (TYPE_1__*,int ) ;

__attribute__((used)) static inline void TRACKBAR_LineDown(TRACKBAR_INFO *infoPtr)
{
    if (infoPtr->lPos == infoPtr->lRangeMax) return;
    infoPtr->lPos += infoPtr->lLineSize;
    if (infoPtr->lPos > infoPtr->lRangeMax)
        infoPtr->lPos = infoPtr->lRangeMax;
    notify_with_scroll (infoPtr, TB_LINEDOWN);
}
