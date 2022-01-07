
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* yTrackPos; void* xTrackPos; scalar_t__ bTrackActive; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef void* INT ;


 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int TOOLTIPS_TrackShow (TYPE_1__*) ;
 int TRACE (char*,void*,void*) ;

__attribute__((used)) static LRESULT
TOOLTIPS_TrackPosition (TOOLTIPS_INFO *infoPtr, LPARAM coord)
{
    infoPtr->xTrackPos = (INT)LOWORD(coord);
    infoPtr->yTrackPos = (INT)HIWORD(coord);

    if (infoPtr->bTrackActive) {
 TRACE("[%d %d]\n",
        infoPtr->xTrackPos, infoPtr->yTrackPos);

 TOOLTIPS_TrackShow (infoPtr);
    }

    return 0;
}
