
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bFocussed; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;


 int FALSE ;
 int TRACE (char*) ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;

__attribute__((used)) static LRESULT
TRACKBAR_KillFocus (TRACKBAR_INFO *infoPtr)
{
    TRACE("\n");
    infoPtr->bFocussed = FALSE;
    TRACKBAR_InvalidateAll(infoPtr);

    return 0;
}
