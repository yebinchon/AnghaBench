
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int right; int left; int bottom; int top; } ;
struct TYPE_7__ {int dwStyle; int uThumbLen; int flags; int hwndSelf; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef TYPE_2__ RECT ;
typedef int LRESULT ;


 int GetClientRect (int ,TYPE_2__*) ;
 int TBS_ENABLESELRANGE ;
 int TBS_VERT ;
 int TB_SELECTIONCHANGED ;
 int TRACKBAR_CalcChannel (TYPE_1__*) ;
 int TRACKBAR_UpdateThumb (TYPE_1__*) ;

__attribute__((used)) static LRESULT
TRACKBAR_InitializeThumb (TRACKBAR_INFO *infoPtr)
{
    RECT rect;
    int clientWidth, clientMetric;


    clientMetric = (infoPtr->dwStyle & TBS_ENABLESELRANGE) ? 23 : 21;
    GetClientRect(infoPtr->hwndSelf,&rect);
    if (infoPtr->dwStyle & TBS_VERT) {
 clientWidth = rect.right - rect.left;
    } else {
 clientWidth = rect.bottom - rect.top;
    }
    if (clientWidth >= clientMetric)
        infoPtr->uThumbLen = clientMetric;
    else
        infoPtr->uThumbLen = clientWidth > 9 ? clientWidth - 6 : 4;

    TRACKBAR_CalcChannel (infoPtr);
    TRACKBAR_UpdateThumb (infoPtr);
    infoPtr->flags &= ~TB_SELECTIONCHANGED;

    return 0;
}
