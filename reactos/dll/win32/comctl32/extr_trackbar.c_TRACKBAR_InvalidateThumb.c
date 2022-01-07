
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndSelf; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int RECT ;
typedef int LONG ;


 int FALSE ;
 int InflateRect (int *,int,int) ;
 int InvalidateRect (int ,int *,int ) ;
 int TRACKBAR_CalcThumb (TYPE_1__ const*,int ,int *) ;

__attribute__((used)) static void
TRACKBAR_InvalidateThumb (const TRACKBAR_INFO *infoPtr, LONG thumbPos)
{
    RECT rcThumb;

    TRACKBAR_CalcThumb(infoPtr, thumbPos, &rcThumb);
    InflateRect(&rcThumb, 1, 1);
    InvalidateRect(infoPtr->hwndSelf, &rcThumb, FALSE);
}
