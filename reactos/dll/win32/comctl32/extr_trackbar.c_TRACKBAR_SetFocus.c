
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bFocussed; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;


 int TRACE (char*) ;
 int TRACKBAR_InvalidateAll (TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static LRESULT
TRACKBAR_SetFocus (TRACKBAR_INFO *infoPtr)
{
    TRACE("\n");
    infoPtr->bFocussed = TRUE;
    TRACKBAR_InvalidateAll(infoPtr);

    return 0;
}
