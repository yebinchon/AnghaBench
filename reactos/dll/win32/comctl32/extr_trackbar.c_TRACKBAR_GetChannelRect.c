
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int top; int bottom; int right; int left; } ;
struct TYPE_6__ {int top; int bottom; int right; int left; } ;
struct TYPE_7__ {TYPE_1__ rcChannel; } ;
typedef TYPE_2__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef TYPE_3__* LPRECT ;



__attribute__((used)) static inline LRESULT
TRACKBAR_GetChannelRect (const TRACKBAR_INFO *infoPtr, LPRECT lprc)
{
    if (lprc == ((void*)0)) return 0;

    lprc->left = infoPtr->rcChannel.left;
    lprc->right = infoPtr->rcChannel.right;
    lprc->bottom = infoPtr->rcChannel.bottom;
    lprc->top = infoPtr->rcChannel.top;

    return 0;
}
