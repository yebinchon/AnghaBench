
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndToolTip; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LRESULT ;
typedef int HWND ;



__attribute__((used)) static inline LRESULT
TRACKBAR_SetToolTips (TRACKBAR_INFO *infoPtr, HWND hwndTT)
{
    infoPtr->hwndToolTip = hwndTT;

    return 0;
}
