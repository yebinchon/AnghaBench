
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ti ;
struct TYPE_6__ {int hwndToolTip; int hwndSelf; } ;
struct TYPE_5__ {int cbSize; int hwnd; } ;
typedef TYPE_1__ TTTOOLINFOW ;
typedef TYPE_2__ TRACKBAR_INFO ;
typedef int LPARAM ;
typedef int BOOL ;


 int SendMessageW (int ,int ,int ,int ) ;
 int TTM_TRACKACTIVATE ;
 int ZeroMemory (TYPE_1__*,int) ;

__attribute__((used)) static inline void
TRACKBAR_ActivateToolTip (const TRACKBAR_INFO *infoPtr, BOOL fShow)
{
    TTTOOLINFOW ti;

    if (!infoPtr->hwndToolTip) return;

    ZeroMemory(&ti, sizeof(ti));
    ti.cbSize = sizeof(ti);
    ti.hwnd = infoPtr->hwndSelf;

    SendMessageW (infoPtr->hwndToolTip, TTM_TRACKACTIVATE, fShow, (LPARAM)&ti);
}
