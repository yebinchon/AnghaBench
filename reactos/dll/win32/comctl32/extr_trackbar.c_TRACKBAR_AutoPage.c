
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ lPos; int flags; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int POINT ;
typedef scalar_t__ LONG ;
typedef int BOOL ;


 int FALSE ;
 int TB_AUTO_PAGE_LEFT ;
 int TB_AUTO_PAGE_RIGHT ;
 int TRACE (char*,int ,scalar_t__) ;
 scalar_t__ TRACKBAR_GetAutoPageDirection (TYPE_1__*,int ) ;
 int TRACKBAR_InvalidateThumbMove (TYPE_1__*,scalar_t__,scalar_t__) ;
 int TRACKBAR_PageDown (TYPE_1__*) ;
 int TRACKBAR_PageUp (TYPE_1__*) ;
 int TRACKBAR_UpdateThumb (TYPE_1__*) ;
 int TRUE ;
 int wine_dbgstr_point (int *) ;

__attribute__((used)) static BOOL
TRACKBAR_AutoPage (TRACKBAR_INFO *infoPtr, POINT clickPoint)
{
    LONG dir = TRACKBAR_GetAutoPageDirection(infoPtr, clickPoint);
    LONG prevPos = infoPtr->lPos;

    TRACE("clickPoint=%s, dir=%d\n", wine_dbgstr_point(&clickPoint), dir);

    if (dir > 0 && (infoPtr->flags & TB_AUTO_PAGE_RIGHT))
 TRACKBAR_PageDown(infoPtr);
    else if (dir < 0 && (infoPtr->flags & TB_AUTO_PAGE_LEFT))
 TRACKBAR_PageUp(infoPtr);
    else return FALSE;

    TRACKBAR_UpdateThumb (infoPtr);
    TRACKBAR_InvalidateThumbMove (infoPtr, prevPos, infoPtr->lPos);

    return TRUE;
}
