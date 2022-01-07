
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwndToolTip; } ;
typedef TYPE_1__ TAB_INFO ;
typedef int LRESULT ;
typedef int HWND ;


 int TRACE (char*,TYPE_1__*,int ) ;

__attribute__((used)) static inline LRESULT
TAB_SetToolTips (TAB_INFO *infoPtr, HWND hwndToolTip)
{
    TRACE("%p %p\n", infoPtr, hwndToolTip);
    infoPtr->hwndToolTip = hwndToolTip;
    return 0;
}
