
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int lPos; int hwndSelf; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;


 int FALSE ;
 int KillTimer (int ,int ) ;
 int NM_RELEASEDCAPTURE ;
 int ReleaseCapture () ;
 int TB_AUTO_PAGE ;
 int TB_DRAG_MODE ;
 int TB_ENDTRACK ;
 int TB_REFRESH_TIMER ;
 int TB_THUMBPOSITION ;
 int TRACKBAR_ActivateToolTip (TYPE_1__*,int ) ;
 int TRACKBAR_InvalidateThumb (TYPE_1__*,int) ;
 int notify (TYPE_1__*,int ) ;
 int notify_with_scroll (TYPE_1__*,int) ;

__attribute__((used)) static LRESULT
TRACKBAR_LButtonUp (TRACKBAR_INFO *infoPtr)
{
    if (infoPtr->flags & TB_DRAG_MODE) {
        notify_with_scroll (infoPtr, TB_THUMBPOSITION | (infoPtr->lPos<<16));
        notify_with_scroll (infoPtr, TB_ENDTRACK);
        infoPtr->flags &= ~TB_DRAG_MODE;
        ReleaseCapture ();
 notify(infoPtr, NM_RELEASEDCAPTURE);
        TRACKBAR_ActivateToolTip(infoPtr, FALSE);
 TRACKBAR_InvalidateThumb(infoPtr, infoPtr->lPos);
    }
    if (infoPtr->flags & TB_AUTO_PAGE) {
 KillTimer (infoPtr->hwndSelf, TB_REFRESH_TIMER);
        infoPtr->flags &= ~TB_AUTO_PAGE;
        notify_with_scroll (infoPtr, TB_ENDTRACK);
        ReleaseCapture ();
 notify(infoPtr, NM_RELEASEDCAPTURE);
    }

    return 0;
}
