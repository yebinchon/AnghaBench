
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {double bottom; int top; double right; int left; } ;
struct TYPE_5__ {int bottom; int top; int right; int left; } ;
struct TYPE_7__ {double lRangeMax; double lRangeMin; int dwStyle; TYPE_2__ rcChannel; TYPE_1__ rcThumb; } ;
typedef TYPE_3__ TRACKBAR_INFO ;
typedef int LONG ;


 int TBS_VERT ;
 int TRACE (char*,double) ;
 int floor (double) ;

__attribute__((used)) static inline LONG
TRACKBAR_ConvertPlaceToPosition (const TRACKBAR_INFO *infoPtr, int place)
{
    double range, width, pos, offsetthumb;

    range = infoPtr->lRangeMax - infoPtr->lRangeMin;
    if (infoPtr->dwStyle & TBS_VERT) {
        offsetthumb = (infoPtr->rcThumb.bottom - infoPtr->rcThumb.top)/2;
        width = infoPtr->rcChannel.bottom - infoPtr->rcChannel.top - (offsetthumb * 2) - 1;
        pos = (range*(place - infoPtr->rcChannel.top - offsetthumb)) / width;
    } else {
        offsetthumb = (infoPtr->rcThumb.right - infoPtr->rcThumb.left)/2;
        width = infoPtr->rcChannel.right - infoPtr->rcChannel.left - (offsetthumb * 2) - 1;
        pos = (range*(place - infoPtr->rcChannel.left - offsetthumb)) / width;
    }
    pos += infoPtr->lRangeMin;
    if (pos > infoPtr->lRangeMax)
        pos = infoPtr->lRangeMax;
    else if (pos < infoPtr->lRangeMin)
        pos = infoPtr->lRangeMin;

    TRACE("%.2f\n", pos);
    return (LONG)floor(pos + 0.5);
}
