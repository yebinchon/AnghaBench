
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Self; int horizontalGap; int verticalBorder; int horizontalBorder; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static BOOL
STATUSBAR_SetBorders (STATUS_INFO *infoPtr, const INT in[])
{
    TRACE("\n");
    infoPtr->horizontalBorder = in[0];
    infoPtr->verticalBorder = in[1];
    infoPtr->horizontalGap = in[2];
    InvalidateRect(infoPtr->Self, ((void*)0), FALSE);

    return TRUE;
}
