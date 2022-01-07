
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rcThumb; int lPos; } ;
typedef TYPE_1__ TRACKBAR_INFO ;


 int TRACKBAR_CalcThumb (TYPE_1__*,int ,int *) ;

__attribute__((used)) static inline void
TRACKBAR_UpdateThumb (TRACKBAR_INFO *infoPtr)
{
    TRACKBAR_CalcThumb(infoPtr, infoPtr->lPos, &infoPtr->rcThumb);
}
