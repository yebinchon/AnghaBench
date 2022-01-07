
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* Part; } ;
struct TYPE_4__ {scalar_t__ EditHwnd; } ;
typedef TYPE_2__ IPADDRESS_INFO ;
typedef scalar_t__ HWND ;


 int ERR (char*,scalar_t__) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static int IPADDRESS_GetPartIndex(const IPADDRESS_INFO *infoPtr, HWND hwnd)
{
    int i;

    TRACE("(hwnd=%p)\n", hwnd);

    for (i = 0; i < 4; i++)
        if (infoPtr->Part[i].EditHwnd == hwnd) return i;

    ERR("We subclassed the wrong window! (hwnd=%p)\n", hwnd);
    return -1;
}
