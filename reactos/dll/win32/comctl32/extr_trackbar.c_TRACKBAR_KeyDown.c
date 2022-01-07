
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int dwStyle; scalar_t__ lPos; scalar_t__ lRangeMin; scalar_t__ lRangeMax; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef scalar_t__ LONG ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int TBS_DOWNISLEFT ;
 int TBS_VERT ;
 int TB_BOTTOM ;
 int TB_TOP ;
 int TRACE (char*,int) ;
 int TRACKBAR_InvalidateThumbMove (TYPE_1__*,scalar_t__,scalar_t__) ;
 int TRACKBAR_LineDown (TYPE_1__*) ;
 int TRACKBAR_LineUp (TYPE_1__*) ;
 int TRACKBAR_PageDown (TYPE_1__*) ;
 int TRACKBAR_PageUp (TYPE_1__*) ;
 int TRACKBAR_UpdateThumb (TYPE_1__*) ;
 int TRUE ;
 int notify_with_scroll (TYPE_1__*,int ) ;

__attribute__((used)) static BOOL
TRACKBAR_KeyDown (TRACKBAR_INFO *infoPtr, INT nVirtKey)
{
    BOOL downIsLeft = infoPtr->dwStyle & TBS_DOWNISLEFT;
    BOOL vert = infoPtr->dwStyle & TBS_VERT;
    LONG pos = infoPtr->lPos;

    TRACE("%x\n", nVirtKey);

    switch (nVirtKey) {
    case 128:
 if (!vert && downIsLeft) TRACKBAR_LineDown(infoPtr);
        else TRACKBAR_LineUp(infoPtr);
        break;
    case 132:
        if (vert && downIsLeft) TRACKBAR_LineDown(infoPtr);
        else TRACKBAR_LineUp(infoPtr);
        break;
    case 135:
 if (!vert && downIsLeft) TRACKBAR_LineUp(infoPtr);
        else TRACKBAR_LineDown(infoPtr);
        break;
    case 129:
 if (vert && downIsLeft) TRACKBAR_LineUp(infoPtr);
        else TRACKBAR_LineDown(infoPtr);
        break;
    case 131:
 if (!vert && downIsLeft) TRACKBAR_PageUp(infoPtr);
        else TRACKBAR_PageDown(infoPtr);
        break;
    case 130:
 if (!vert && downIsLeft) TRACKBAR_PageDown(infoPtr);
        else TRACKBAR_PageUp(infoPtr);
        break;
    case 133:
        if (infoPtr->lPos == infoPtr->lRangeMin) return FALSE;
        infoPtr->lPos = infoPtr->lRangeMin;
        notify_with_scroll (infoPtr, TB_TOP);
        break;
    case 134:
        if (infoPtr->lPos == infoPtr->lRangeMax) return FALSE;
        infoPtr->lPos = infoPtr->lRangeMax;
        notify_with_scroll (infoPtr, TB_BOTTOM);
        break;
    }

    if (pos != infoPtr->lPos) {
 TRACKBAR_UpdateThumb (infoPtr);
 TRACKBAR_InvalidateThumbMove (infoPtr, pos, infoPtr->lPos);
    }

    return TRUE;
}
