
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwStyle; scalar_t__ uFocus; scalar_t__ iSelected; int hwnd; } ;
typedef TYPE_1__ TAB_INFO ;
typedef int RECT ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 scalar_t__ TAB_InternalGetItemRect (TYPE_1__*,scalar_t__,int *,int *) ;
 int TCS_BUTTONS ;

__attribute__((used)) static void TAB_KillFocus(TAB_INFO *infoPtr)
{

  if ((infoPtr->dwStyle & TCS_BUTTONS) && (infoPtr->uFocus != infoPtr->iSelected))
  {
    RECT r;

    if (TAB_InternalGetItemRect(infoPtr, infoPtr->uFocus, &r, ((void*)0)))
      InvalidateRect(infoPtr->hwnd, &r, FALSE);

    infoPtr->uFocus = infoPtr->iSelected;
  }
}
