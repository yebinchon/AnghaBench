
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int tme ;
struct TYPE_15__ {void* y; void* x; } ;
struct TYPE_14__ {int dwStyle; scalar_t__ lPos; int flags; int hwndSelf; int rcThumb; } ;
struct TYPE_13__ {int cbSize; int hwndTrack; int dwFlags; } ;
typedef TYPE_1__ TRACKMOUSEEVENT ;
typedef TYPE_2__ TRACKBAR_INFO ;
typedef TYPE_3__ POINT ;
typedef int LRESULT ;
typedef scalar_t__ LONG ;
typedef void* INT ;
typedef int DWORD ;


 int FALSE ;
 scalar_t__ GetWindowTheme (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 scalar_t__ PtInRect (int *,TYPE_3__) ;
 int TBS_VERT ;
 int TB_AUTO_PAGE ;
 int TB_DRAG_MODE ;
 int TB_THUMBTRACK ;
 int TB_THUMB_HOT ;
 int TME_CANCEL ;
 int TME_LEAVE ;
 int TRACE (char*,void*,void*) ;
 int TRACKBAR_AutoPage (TYPE_2__*,TYPE_3__) ;
 scalar_t__ TRACKBAR_ConvertPlaceToPosition (TYPE_2__*,void*) ;
 int TRACKBAR_InvalidateThumbMove (TYPE_2__*,scalar_t__,scalar_t__) ;
 int TRACKBAR_UpdateThumb (TYPE_2__*) ;
 int TRUE ;
 int TrackMouseEvent (TYPE_1__*) ;
 int UpdateWindow (int ) ;
 int notify_with_scroll (TYPE_2__*,int) ;

__attribute__((used)) static LRESULT
TRACKBAR_MouseMove (TRACKBAR_INFO *infoPtr, INT x, INT y)
{
    INT clickPlace = (infoPtr->dwStyle & TBS_VERT) ? y : x;
    LONG dragPos, oldPos = infoPtr->lPos;

    TRACE("(x=%d. y=%d)\n", x, y);

    if (infoPtr->flags & TB_AUTO_PAGE) {
 POINT pt;
 pt.x = x;
 pt.y = y;
 TRACKBAR_AutoPage (infoPtr, pt);
 return TRUE;
    }

    if (!(infoPtr->flags & TB_DRAG_MODE))
    {
        if (GetWindowTheme (infoPtr->hwndSelf))
        {
            DWORD oldFlags = infoPtr->flags;
            POINT pt;
            pt.x = x;
            pt.y = y;
            if (PtInRect (&infoPtr->rcThumb, pt))
            {
                TRACKMOUSEEVENT tme;
                tme.cbSize = sizeof( tme );
                tme.dwFlags = TME_LEAVE;
                tme.hwndTrack = infoPtr->hwndSelf;
                TrackMouseEvent( &tme );
                infoPtr->flags |= TB_THUMB_HOT;
            }
            else
            {
                TRACKMOUSEEVENT tme;
                tme.cbSize = sizeof( tme );
                tme.dwFlags = TME_CANCEL;
                tme.hwndTrack = infoPtr->hwndSelf;
                TrackMouseEvent( &tme );
                infoPtr->flags &= ~TB_THUMB_HOT;
            }
            if (oldFlags != infoPtr->flags) InvalidateRect (infoPtr->hwndSelf, &infoPtr->rcThumb, FALSE);
        }
        return TRUE;
    }

    dragPos = TRACKBAR_ConvertPlaceToPosition (infoPtr, clickPlace);

    if (dragPos == oldPos) return TRUE;

    infoPtr->lPos = dragPos;
    TRACKBAR_UpdateThumb (infoPtr);

    notify_with_scroll (infoPtr, TB_THUMBTRACK | (infoPtr->lPos<<16));

    TRACKBAR_InvalidateThumbMove(infoPtr, oldPos, dragPos);
    UpdateWindow (infoPtr->hwndSelf);

    return TRUE;
}
