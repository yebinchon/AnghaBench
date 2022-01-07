
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rcThumb; int hwndSelf; int dwStyle; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef scalar_t__ BOOL ;


 int InvalidateRect (int ,int *,int ) ;
 int TRUE ;
 int WS_DISABLED ;

__attribute__((used)) static LRESULT
TRACKBAR_Enable (TRACKBAR_INFO *infoPtr, BOOL enable)
{
    if (enable)
        infoPtr->dwStyle &= ~WS_DISABLED;
    else
        infoPtr->dwStyle |= WS_DISABLED;

    InvalidateRect(infoPtr->hwndSelf, &infoPtr->rcThumb, TRUE);

    return 1;
}
