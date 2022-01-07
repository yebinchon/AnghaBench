
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dwStyle; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;


 int TBS_FIXEDLENGTH ;
 int TRACKBAR_AlignBuddies (TYPE_1__*) ;
 int TRACKBAR_CalcChannel (TYPE_1__*) ;
 int TRACKBAR_InitializeThumb (TYPE_1__*) ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;
 int TRACKBAR_UpdateThumb (TYPE_1__*) ;

__attribute__((used)) static LRESULT
TRACKBAR_Size (TRACKBAR_INFO *infoPtr)
{
    if (infoPtr->dwStyle & TBS_FIXEDLENGTH)
    {
        TRACKBAR_CalcChannel(infoPtr);
        TRACKBAR_UpdateThumb(infoPtr);
    }
    else
        TRACKBAR_InitializeThumb(infoPtr);
    TRACKBAR_AlignBuddies (infoPtr);
    TRACKBAR_InvalidateAll(infoPtr);

    return 0;
}
