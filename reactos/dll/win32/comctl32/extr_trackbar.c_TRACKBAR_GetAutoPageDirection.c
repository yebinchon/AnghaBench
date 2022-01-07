
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int y; int x; } ;
struct TYPE_14__ {int right; int left; int bottom; int top; } ;
struct TYPE_12__ {int right; int left; int bottom; int top; } ;
struct TYPE_11__ {int bottom; int top; int right; int left; } ;
struct TYPE_13__ {int dwStyle; scalar_t__ lPos; TYPE_2__ rcChannel; TYPE_1__ rcThumb; } ;
typedef TYPE_3__ TRACKBAR_INFO ;
typedef TYPE_4__ RECT ;
typedef TYPE_5__ POINT ;
typedef scalar_t__ LONG ;


 scalar_t__ PtInRect (TYPE_4__*,TYPE_5__) ;
 int TBS_VERT ;
 scalar_t__ TRACKBAR_ConvertPlaceToPosition (TYPE_3__ const*,int) ;

__attribute__((used)) static LONG
TRACKBAR_GetAutoPageDirection (const TRACKBAR_INFO *infoPtr, POINT clickPoint)
{
    RECT pageRect;

    if (infoPtr->dwStyle & TBS_VERT) {
 pageRect.top = infoPtr->rcChannel.top;
 pageRect.bottom = infoPtr->rcChannel.bottom;
 pageRect.left = infoPtr->rcThumb.left;
 pageRect.right = infoPtr->rcThumb.right;
    } else {
 pageRect.top = infoPtr->rcThumb.top;
 pageRect.bottom = infoPtr->rcThumb.bottom;
 pageRect.left = infoPtr->rcChannel.left;
 pageRect.right = infoPtr->rcChannel.right;
    }


    if (PtInRect(&pageRect, clickPoint))
    {
 int clickPlace = (infoPtr->dwStyle & TBS_VERT) ? clickPoint.y : clickPoint.x;

        LONG clickPos = TRACKBAR_ConvertPlaceToPosition(infoPtr, clickPlace);

 return clickPos - infoPtr->lPos;
    }

    return 0;
}
