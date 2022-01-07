
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int WPARAM ;
typedef int UINT ;
struct TYPE_14__ {int dwState; } ;
struct TYPE_13__ {short x; short y; } ;
struct TYPE_12__ {int dwStyle; int iSelected; int uNumItem; int hwnd; scalar_t__ hwndToolTip; } ;
typedef TYPE_1__ TAB_INFO ;
typedef int RECT ;
typedef TYPE_2__ POINT ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ HIWORD (int ) ;
 int InvalidateRect (int ,int *,scalar_t__) ;
 scalar_t__ LOWORD (int ) ;
 int MK_CONTROL ;
 int SetFocus (int ) ;
 int TAB_DeselectAll (TYPE_1__*,scalar_t__) ;
 TYPE_9__* TAB_GetItem (TYPE_1__*,int) ;
 scalar_t__ TAB_InternalGetItemRect (TYPE_1__*,int,int *,int *) ;
 int TAB_InternalHitTest (TYPE_1__*,TYPE_2__,int *) ;
 int TAB_RelayEvent (scalar_t__,int ,int ,int,int ) ;
 scalar_t__ TAB_SendSimpleNotify (TYPE_1__*,int ) ;
 int TAB_SetCurSel (TYPE_1__*,int) ;
 int TCIS_BUTTONPRESSED ;
 int TCN_SELCHANGE ;
 int TCN_SELCHANGING ;
 int TCS_BUTTONS ;
 int TCS_FOCUSNEVER ;
 int TCS_MULTISELECT ;
 int TRACE (char*,int) ;
 scalar_t__ TRUE ;
 int WM_LBUTTONDOWN ;

__attribute__((used)) static LRESULT
TAB_LButtonDown (TAB_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
  POINT pt;
  INT newItem;
  UINT dummy;

  if (infoPtr->hwndToolTip)
    TAB_RelayEvent (infoPtr->hwndToolTip, infoPtr->hwnd,
      WM_LBUTTONDOWN, wParam, lParam);

  if (!(infoPtr->dwStyle & TCS_FOCUSNEVER)) {
    SetFocus (infoPtr->hwnd);
  }

  if (infoPtr->hwndToolTip)
    TAB_RelayEvent (infoPtr->hwndToolTip, infoPtr->hwnd,
      WM_LBUTTONDOWN, wParam, lParam);

  pt.x = (short)LOWORD(lParam);
  pt.y = (short)HIWORD(lParam);

  newItem = TAB_InternalHitTest (infoPtr, pt, &dummy);

  TRACE("On Tab, item %d\n", newItem);

  if ((newItem != -1) && (infoPtr->iSelected != newItem))
  {
    if ((infoPtr->dwStyle & TCS_BUTTONS) && (infoPtr->dwStyle & TCS_MULTISELECT) &&
        (wParam & MK_CONTROL))
    {
      RECT r;


      TAB_GetItem(infoPtr, newItem)->dwState ^= TCIS_BUTTONPRESSED;
      if (TAB_InternalGetItemRect (infoPtr, newItem, &r, ((void*)0)))
        InvalidateRect (infoPtr->hwnd, &r, TRUE);
    }
    else
    {
      INT i;
      BOOL pressed = FALSE;


      for (i = 0; i < infoPtr->uNumItem; i++)
        if ((TAB_GetItem (infoPtr, i)->dwState & TCIS_BUTTONPRESSED) &&
            (infoPtr->iSelected != i))
        {
          pressed = TRUE;
          break;
        }

      if (TAB_SendSimpleNotify(infoPtr, TCN_SELCHANGING))
        return 0;

      if (pressed)
        TAB_DeselectAll (infoPtr, FALSE);
      else
        TAB_SetCurSel(infoPtr, newItem);

      TAB_SendSimpleNotify(infoPtr, TCN_SELCHANGE);
    }
  }

  return 0;
}
