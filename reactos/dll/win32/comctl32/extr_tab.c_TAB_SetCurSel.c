
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int dwState; } ;
struct TYPE_8__ {scalar_t__ iSelected; int uFocus; scalar_t__ uNumItem; } ;
typedef TYPE_1__ TAB_INFO ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 int TAB_EnsureSelectionVisible (TYPE_1__*) ;
 TYPE_5__* TAB_GetItem (TYPE_1__*,scalar_t__) ;
 int TAB_InvalidateTabArea (TYPE_1__*) ;
 int TCIS_BUTTONPRESSED ;
 int TRACE (char*,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static inline LRESULT TAB_SetCurSel (TAB_INFO *infoPtr, INT iItem)
{
  INT prevItem = infoPtr->iSelected;

  TRACE("(%p %d)\n", infoPtr, iItem);

  if (iItem >= (INT)infoPtr->uNumItem)
      return -1;

  if (prevItem != iItem) {
      if (prevItem != -1)
          TAB_GetItem(infoPtr, prevItem)->dwState &= ~TCIS_BUTTONPRESSED;

      if (iItem >= 0)
      {
          TAB_GetItem(infoPtr, iItem)->dwState |= TCIS_BUTTONPRESSED;
          infoPtr->iSelected = iItem;
          infoPtr->uFocus = iItem;
      }
      else
      {
          infoPtr->iSelected = -1;
          infoPtr->uFocus = -1;
      }

      TAB_EnsureSelectionVisible(infoPtr);
      TAB_InvalidateTabArea(infoPtr);
  }

  return prevItem;
}
