
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwnd; int uFocus; } ;
typedef TYPE_1__ TAB_INFO ;
typedef int RECT ;
typedef scalar_t__ BOOL ;


 int InvalidateRect (int ,int *,int ) ;
 scalar_t__ TAB_InternalGetItemRect (TYPE_1__ const*,int ,int *,int *) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static void TAB_FocusChanging(const TAB_INFO *infoPtr)
{
  RECT selectedRect;
  BOOL isVisible;




  isVisible = TAB_InternalGetItemRect(infoPtr,
          infoPtr->uFocus,
          ((void*)0),
          &selectedRect);





  if (isVisible)
  {
    TRACE("invalidate (%s)\n", wine_dbgstr_rect(&selectedRect));
    InvalidateRect(infoPtr->hwnd, &selectedRect, TRUE);
  }
}
