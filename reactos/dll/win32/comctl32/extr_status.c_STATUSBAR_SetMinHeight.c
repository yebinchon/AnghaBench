
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int minHeight; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef int INT ;
typedef int DWORD ;
typedef int BOOL ;


 int GetSystemMetrics (int ) ;
 int SM_CYSIZE ;
 int STATUSBAR_ComputeHeight (TYPE_1__*) ;
 int TRUE ;
 int max (int ,int) ;

__attribute__((used)) static BOOL
STATUSBAR_SetMinHeight (STATUS_INFO *infoPtr, INT height)
{
    DWORD ysize = GetSystemMetrics(SM_CYSIZE);
    if (ysize & 1) ysize--;
    infoPtr->minHeight = max(height, ysize);
    infoPtr->height = STATUSBAR_ComputeHeight(infoPtr);

    return TRUE;
}
