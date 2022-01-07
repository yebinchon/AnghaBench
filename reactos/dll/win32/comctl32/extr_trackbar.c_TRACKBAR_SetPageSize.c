
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lPageSize; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LONG ;


 int TB_DEFAULTPAGESIZE ;

__attribute__((used)) static inline LONG
TRACKBAR_SetPageSize (TRACKBAR_INFO *infoPtr, LONG lPageSize)
{
    LONG lTemp = infoPtr->lPageSize;

    if (lPageSize != -1)
        infoPtr->lPageSize = lPageSize;
    else
        infoPtr->lPageSize = TB_DEFAULTPAGESIZE;

    return lTemp;
}
