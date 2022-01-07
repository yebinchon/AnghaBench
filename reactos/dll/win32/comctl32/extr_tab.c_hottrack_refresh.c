
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hwnd; } ;
typedef TYPE_1__ TAB_INFO ;
typedef int RECT ;


 int FALSE ;
 scalar_t__ GetWindowTheme (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int TAB_DrawLoneItemInterior (TYPE_1__ const*,int) ;
 int TAB_InternalGetItemRect (TYPE_1__ const*,int,int *,int *) ;

__attribute__((used)) static inline void hottrack_refresh(const TAB_INFO *infoPtr, int tabIndex)
{
    if (tabIndex == -1) return;

    if (GetWindowTheme (infoPtr->hwnd))
    {
        RECT rect;
        TAB_InternalGetItemRect(infoPtr, tabIndex, &rect, ((void*)0));
        InvalidateRect (infoPtr->hwnd, &rect, FALSE);
    }
    else
        TAB_DrawLoneItemInterior(infoPtr, tabIndex);
}
