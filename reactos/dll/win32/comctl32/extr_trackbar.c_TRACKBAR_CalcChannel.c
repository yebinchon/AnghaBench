
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ right; scalar_t__ left; } ;
struct TYPE_5__ {int uThumbLen; int dwStyle; int hwndSelf; TYPE_2__ rcChannel; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef TYPE_2__ RECT ;
typedef int INT ;


 int GetClientRect (int ,TYPE_2__*) ;
 int TBS_BOTH ;
 int TBS_ENABLESELRANGE ;
 int TBS_NOTICKS ;
 int TBS_TOP ;
 int TBS_VERT ;

__attribute__((used)) static void
TRACKBAR_CalcChannel (TRACKBAR_INFO *infoPtr)
{
    INT cyChannel, offsetthumb, offsetedge;
    RECT lpRect, *channel = & infoPtr->rcChannel;

    GetClientRect (infoPtr->hwndSelf, &lpRect);

    offsetthumb = infoPtr->uThumbLen / 4;
    offsetedge = offsetthumb + 3;
    cyChannel = (infoPtr->dwStyle & TBS_ENABLESELRANGE) ? offsetthumb*3 : 4;
    if (infoPtr->dwStyle & TBS_VERT) {
        channel->top = lpRect.top + offsetedge;
        channel->bottom = lpRect.bottom - offsetedge;
        if (infoPtr->dwStyle & TBS_ENABLESELRANGE)
            channel->left = lpRect.left + ((infoPtr->uThumbLen - cyChannel + 2) / 2);
        else
            channel->left = lpRect.left + (infoPtr->uThumbLen / 2) - 1;
        if (infoPtr->dwStyle & TBS_BOTH) {
            if (infoPtr->dwStyle & TBS_NOTICKS)
                channel->left += 1;
            else
                channel->left += 9;
        }
        else if (infoPtr->dwStyle & TBS_TOP) {
            if (infoPtr->dwStyle & TBS_NOTICKS)
                channel->left += 2;
            else
                channel->left += 10;
        }
        channel->right = channel->left + cyChannel;
    } else {
        channel->left = lpRect.left + offsetedge;
        channel->right = lpRect.right - offsetedge;
        if (infoPtr->dwStyle & TBS_ENABLESELRANGE)
            channel->top = lpRect.top + ((infoPtr->uThumbLen - cyChannel + 2) / 2);
        else
            channel->top = lpRect.top + (infoPtr->uThumbLen / 2) - 1;
        if (infoPtr->dwStyle & TBS_BOTH) {
            if (infoPtr->dwStyle & TBS_NOTICKS)
                channel->top += 1;
            else
                channel->top += 9;
        }
        else if (infoPtr->dwStyle & TBS_TOP) {
            if (infoPtr->dwStyle & TBS_NOTICKS)
                channel->top += 2;
            else
                channel->top += 10;
        }
        channel->bottom = channel->top + cyChannel;
    }
}
