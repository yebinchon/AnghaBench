
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int dwStyle; int flags; int uThumbLen; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;


 int TBS_FIXEDLENGTH ;
 int TB_THUMBSIZECHANGED ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;

__attribute__((used)) static inline LRESULT
TRACKBAR_SetThumbLength (TRACKBAR_INFO *infoPtr, UINT iLength)
{
    if (infoPtr->dwStyle & TBS_FIXEDLENGTH) {


        infoPtr->uThumbLen = iLength;
 infoPtr->flags |= TB_THUMBSIZECHANGED;
 TRACKBAR_InvalidateAll(infoPtr);
    }

    return 0;
}
