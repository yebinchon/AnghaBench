
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lPos; scalar_t__ lRangeMin; scalar_t__ lRangeMax; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef scalar_t__ LONG ;
typedef scalar_t__ BOOL ;


 int TRACKBAR_InvalidateThumbMove (TYPE_1__*,scalar_t__,scalar_t__) ;
 int TRACKBAR_UpdateThumb (TYPE_1__*) ;

__attribute__((used)) static inline LRESULT
TRACKBAR_SetPos (TRACKBAR_INFO *infoPtr, BOOL fPosition, LONG lPosition)
{
    LONG oldPos = infoPtr->lPos;
    infoPtr->lPos = lPosition;

    if (infoPtr->lPos < infoPtr->lRangeMin)
 infoPtr->lPos = infoPtr->lRangeMin;

    if (infoPtr->lPos > infoPtr->lRangeMax)
 infoPtr->lPos = infoPtr->lRangeMax;

    if (fPosition && oldPos != lPosition)
    {
        TRACKBAR_UpdateThumb(infoPtr);
        TRACKBAR_InvalidateThumbMove(infoPtr, oldPos, lPosition);
    }

    return 0;
}
