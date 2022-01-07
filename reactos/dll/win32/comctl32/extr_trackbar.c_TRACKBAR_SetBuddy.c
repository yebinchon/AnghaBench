
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* hwndBuddyRB; void* hwndBuddyLA; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef void* HWND ;
typedef scalar_t__ BOOL ;


 int TRACKBAR_AlignBuddies (TYPE_1__*) ;

__attribute__((used)) static HWND
TRACKBAR_SetBuddy (TRACKBAR_INFO *infoPtr, BOOL fLocation, HWND hwndBuddy)
{
    HWND hwndTemp;

    if (fLocation) {

 hwndTemp = infoPtr->hwndBuddyLA;
 infoPtr->hwndBuddyLA = hwndBuddy;
    }
    else {

        hwndTemp = infoPtr->hwndBuddyRB;
        infoPtr->hwndBuddyRB = hwndBuddy;
    }

    TRACKBAR_AlignBuddies (infoPtr);

    return hwndTemp;
}
