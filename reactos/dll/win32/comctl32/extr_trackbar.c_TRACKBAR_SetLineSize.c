
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lLineSize; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LONG ;



__attribute__((used)) static inline LONG
TRACKBAR_SetLineSize (TRACKBAR_INFO *infoPtr, LONG lLineSize)
{
    LONG lTemp = infoPtr->lLineSize;

    infoPtr->lLineSize = lLineSize;

    return lTemp;
}
