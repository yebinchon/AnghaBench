
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {void* y; void* x; } ;
struct TYPE_12__ {int hwndSelf; int flags; int lPos; int rcThumb; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef TYPE_2__ POINT ;
typedef int LRESULT ;
typedef scalar_t__ LONG ;
typedef void* INT ;


 scalar_t__ PtInRect (int *,TYPE_2__) ;
 int SetCapture (int ) ;
 int SetFocus (int ) ;
 int SetTimer (int ,int ,int ,int ) ;
 int TB_AUTO_PAGE_LEFT ;
 int TB_AUTO_PAGE_RIGHT ;
 int TB_DRAG_MODE ;
 int TB_REFRESH_DELAY ;
 int TB_REFRESH_TIMER ;
 int TRACKBAR_ActivateToolTip (TYPE_1__*,int ) ;
 int TRACKBAR_AutoPage (TYPE_1__*,TYPE_2__) ;
 scalar_t__ TRACKBAR_GetAutoPageDirection (TYPE_1__*,TYPE_2__) ;
 int TRACKBAR_InvalidateThumb (TYPE_1__*,int ) ;
 int TRACKBAR_UpdateToolTip (TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static LRESULT
TRACKBAR_LButtonDown (TRACKBAR_INFO *infoPtr, INT x, INT y)
{
    POINT clickPoint;

    clickPoint.x = x;
    clickPoint.y = y;

    SetFocus(infoPtr->hwndSelf);

    if (PtInRect(&infoPtr->rcThumb, clickPoint)) {
        infoPtr->flags |= TB_DRAG_MODE;
        SetCapture (infoPtr->hwndSelf);
 TRACKBAR_UpdateToolTip (infoPtr);
 TRACKBAR_ActivateToolTip (infoPtr, TRUE);
 TRACKBAR_InvalidateThumb(infoPtr, infoPtr->lPos);
    } else {
 LONG dir = TRACKBAR_GetAutoPageDirection(infoPtr, clickPoint);
 if (dir == 0) return 0;
 infoPtr->flags |= (dir < 0) ? TB_AUTO_PAGE_LEFT : TB_AUTO_PAGE_RIGHT;
 TRACKBAR_AutoPage (infoPtr, clickPoint);
        SetCapture (infoPtr->hwndSelf);
        SetTimer(infoPtr->hwndSelf, TB_REFRESH_TIMER, TB_REFRESH_DELAY, 0);
    }

    return 0;
}
