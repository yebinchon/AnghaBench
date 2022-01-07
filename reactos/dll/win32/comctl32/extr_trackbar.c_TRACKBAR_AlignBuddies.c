
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int right; int left; int top; int bottom; } ;
struct TYPE_6__ {int right; int left; int bottom; int top; } ;
struct TYPE_7__ {int dwStyle; scalar_t__ hwndBuddyRB; TYPE_1__ rcChannel; scalar_t__ hwndBuddyLA; scalar_t__ hwndSelf; } ;
typedef TYPE_2__ TRACKBAR_INFO ;
typedef TYPE_3__ RECT ;
typedef int LPPOINT ;
typedef int INT ;
typedef int HWND ;


 int GetParent (scalar_t__) ;
 int GetWindowRect (scalar_t__,TYPE_3__*) ;
 int HWND_DESKTOP ;
 int MapWindowPoints (int ,int ,int ,int) ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetWindowPos (scalar_t__,int ,int,int,int ,int ,int) ;
 int TBS_VERT ;

__attribute__((used)) static void
TRACKBAR_AlignBuddies (const TRACKBAR_INFO *infoPtr)
{
    HWND hwndParent = GetParent (infoPtr->hwndSelf);
    RECT rcSelf, rcBuddy;
    INT x, y;

    GetWindowRect (infoPtr->hwndSelf, &rcSelf);
    MapWindowPoints (HWND_DESKTOP, hwndParent, (LPPOINT)&rcSelf, 2);


    if (infoPtr->hwndBuddyLA) {
 GetWindowRect (infoPtr->hwndBuddyLA, &rcBuddy);
 MapWindowPoints (HWND_DESKTOP, hwndParent, (LPPOINT)&rcBuddy, 2);

 if (infoPtr->dwStyle & TBS_VERT) {
     x = (infoPtr->rcChannel.right + infoPtr->rcChannel.left) / 2 -
  (rcBuddy.right - rcBuddy.left) / 2 + rcSelf.left;
     y = rcSelf.top - (rcBuddy.bottom - rcBuddy.top);
 }
 else {
     x = rcSelf.left - (rcBuddy.right - rcBuddy.left);
     y = (infoPtr->rcChannel.bottom + infoPtr->rcChannel.top) / 2 -
  (rcBuddy.bottom - rcBuddy.top) / 2 + rcSelf.top;
 }

 SetWindowPos (infoPtr->hwndBuddyLA, 0, x, y, 0, 0,
                      SWP_NOZORDER | SWP_NOSIZE);
    }



    if (infoPtr->hwndBuddyRB) {
 GetWindowRect (infoPtr->hwndBuddyRB, &rcBuddy);
 MapWindowPoints (HWND_DESKTOP, hwndParent, (LPPOINT)&rcBuddy, 2);

 if (infoPtr->dwStyle & TBS_VERT) {
     x = (infoPtr->rcChannel.right + infoPtr->rcChannel.left) / 2 -
  (rcBuddy.right - rcBuddy.left) / 2 + rcSelf.left;
     y = rcSelf.bottom;
 }
 else {
     x = rcSelf.right;
     y = (infoPtr->rcChannel.bottom + infoPtr->rcChannel.top) / 2 -
  (rcBuddy.bottom - rcBuddy.top) / 2 + rcSelf.top;
 }
 SetWindowPos (infoPtr->hwndBuddyRB, 0, x, y, 0, 0,
                      SWP_NOZORDER | SWP_NOSIZE);
    }
}
