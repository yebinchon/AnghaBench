
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int uFocus; int iSelected; int uNumItem; int dwStyle; int hwnd; } ;
typedef TYPE_1__ TAB_INFO ;
typedef int RECT ;
typedef int LRESULT ;
typedef int INT ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int TAB_EnsureSelectionVisible (TYPE_1__*) ;
 scalar_t__ TAB_InternalGetItemRect (TYPE_1__*,int,int *,int *) ;
 int TAB_InvalidateTabArea (TYPE_1__*) ;
 int TAB_SendSimpleNotify (TYPE_1__*,int ) ;
 int TCN_FOCUSCHANGE ;
 int TCN_SELCHANGE ;
 int TCN_SELCHANGING ;
 int TCS_BUTTONS ;
 int TRACE (char*,TYPE_1__*,int) ;

__attribute__((used)) static LRESULT TAB_SetCurFocus (TAB_INFO *infoPtr, INT iItem)
{
  TRACE("(%p %d)\n", infoPtr, iItem);

  if (iItem < 0) {
      infoPtr->uFocus = -1;
      if (infoPtr->iSelected != -1) {
          infoPtr->iSelected = -1;
          TAB_SendSimpleNotify(infoPtr, TCN_SELCHANGE);
          TAB_InvalidateTabArea(infoPtr);
      }
  }
  else if (iItem < infoPtr->uNumItem) {
    if (infoPtr->dwStyle & TCS_BUTTONS) {

      if (infoPtr->uFocus != iItem) {
        INT prev_focus = infoPtr->uFocus;
        RECT r;

        infoPtr->uFocus = iItem;

        if (prev_focus != infoPtr->iSelected) {
          if (TAB_InternalGetItemRect(infoPtr, prev_focus, &r, ((void*)0)))
            InvalidateRect(infoPtr->hwnd, &r, FALSE);
        }

        if (TAB_InternalGetItemRect(infoPtr, iItem, &r, ((void*)0)))
            InvalidateRect(infoPtr->hwnd, &r, FALSE);

        TAB_SendSimpleNotify(infoPtr, TCN_FOCUSCHANGE);
      }
    } else {
      INT oldFocus = infoPtr->uFocus;
      if (infoPtr->iSelected != iItem || oldFocus == -1 ) {
        infoPtr->uFocus = iItem;
        if (oldFocus != -1) {
          if (!TAB_SendSimpleNotify(infoPtr, TCN_SELCHANGING)) {
            infoPtr->iSelected = iItem;
            TAB_SendSimpleNotify(infoPtr, TCN_SELCHANGE);
          }
          else
            infoPtr->iSelected = iItem;
          TAB_EnsureSelectionVisible(infoPtr);
          TAB_InvalidateTabArea(infoPtr);
        }
      }
    }
  }
  return 0;
}
