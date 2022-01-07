
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int horizontalGap; int verticalBorder; int horizontalBorder; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef int INT ;
typedef int BOOL ;


 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static BOOL
STATUSBAR_GetBorders (const STATUS_INFO *infoPtr, INT out[])
{
    TRACE("\n");
    out[0] = infoPtr->horizontalBorder;
    out[1] = infoPtr->verticalBorder;
    out[2] = infoPtr->horizontalGap;

    return TRUE;
}
