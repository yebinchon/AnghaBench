
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int right; int left; } ;
struct TYPE_6__ {int right; int left; } ;
struct TYPE_8__ {scalar_t__ uNumTics; int lRangeMax; int lRangeMin; TYPE_2__ rcChannel; TYPE_1__ rcThumb; int tics; } ;
typedef TYPE_3__ TRACKBAR_INFO ;
typedef int LONG ;
typedef scalar_t__ INT ;


 int TRACKBAR_GetTic (TYPE_3__ const*,scalar_t__) ;

__attribute__((used)) static inline LONG
TRACKBAR_GetTicPos (const TRACKBAR_INFO *infoPtr, INT iTic)
{
    LONG range, width, pos, tic;
    int offsetthumb;

    if ((iTic < 0) || (iTic >= infoPtr->uNumTics) || !infoPtr->tics)
 return -1;

    tic = TRACKBAR_GetTic (infoPtr, iTic);
    range = infoPtr->lRangeMax - infoPtr->lRangeMin;
    if (range <= 0) range = 1;
    offsetthumb = (infoPtr->rcThumb.right - infoPtr->rcThumb.left)/2;
    width = infoPtr->rcChannel.right - infoPtr->rcChannel.left - offsetthumb*2;
    pos = infoPtr->rcChannel.left + offsetthumb + (width * tic) / range;

    return pos;
}
