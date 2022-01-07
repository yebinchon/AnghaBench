
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Self; int height; int hFont; } ;
typedef TYPE_1__ STATUS_INFO ;
typedef int LRESULT ;
typedef int HFONT ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int STATUSBAR_ComputeHeight (TYPE_1__*) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int ) ;
 int WM_SIZE ;

__attribute__((used)) static LRESULT
STATUSBAR_WMSetFont (STATUS_INFO *infoPtr, HFONT font, BOOL redraw)
{
    infoPtr->hFont = font;
    TRACE("%p\n", infoPtr->hFont);

    infoPtr->height = STATUSBAR_ComputeHeight(infoPtr);
    SendMessageW(infoPtr->Self, WM_SIZE, 0, 0);
    if (redraw)
        InvalidateRect(infoPtr->Self, ((void*)0), FALSE);

    return 0;
}
