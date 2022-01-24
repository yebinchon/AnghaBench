#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int WPARAM ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_14__ {int dwState; } ;
struct TYPE_13__ {short x; short y; } ;
struct TYPE_12__ {int dwStyle; int iSelected; int uNumItem; int /*<<< orphan*/  hwnd; scalar_t__ hwndToolTip; } ;
typedef  TYPE_1__ TAB_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_2__ POINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MK_CONTROL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 TYPE_9__* FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int TCIS_BUTTONPRESSED ; 
 int /*<<< orphan*/  TCN_SELCHANGE ; 
 int /*<<< orphan*/  TCN_SELCHANGING ; 
 int TCS_BUTTONS ; 
 int TCS_FOCUSNEVER ; 
 int TCS_MULTISELECT ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WM_LBUTTONDOWN ; 

__attribute__((used)) static LRESULT
FUNC12 (TAB_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
  POINT pt;
  INT newItem;
  UINT dummy;

  if (infoPtr->hwndToolTip)
    FUNC8 (infoPtr->hwndToolTip, infoPtr->hwnd,
		    WM_LBUTTONDOWN, wParam, lParam);

  if (!(infoPtr->dwStyle & TCS_FOCUSNEVER)) {
    FUNC3 (infoPtr->hwnd);
  }

  if (infoPtr->hwndToolTip)
    FUNC8 (infoPtr->hwndToolTip, infoPtr->hwnd,
		    WM_LBUTTONDOWN, wParam, lParam);

  pt.x = (short)FUNC2(lParam);
  pt.y = (short)FUNC0(lParam);

  newItem = FUNC7 (infoPtr, pt, &dummy);

  FUNC11("On Tab, item %d\n", newItem);

  if ((newItem != -1) && (infoPtr->iSelected != newItem))
  {
    if ((infoPtr->dwStyle & TCS_BUTTONS) && (infoPtr->dwStyle & TCS_MULTISELECT) &&
        (wParam & MK_CONTROL))
    {
      RECT r;

      /* toggle multiselection */
      FUNC5(infoPtr, newItem)->dwState ^= TCIS_BUTTONPRESSED;
      if (FUNC6 (infoPtr, newItem, &r, NULL))
        FUNC1 (infoPtr->hwnd, &r, TRUE);
    }
    else
    {
      INT i;
      BOOL pressed = FALSE;

      /* any button pressed ? */
      for (i = 0; i < infoPtr->uNumItem; i++)
        if ((FUNC5 (infoPtr, i)->dwState & TCIS_BUTTONPRESSED) &&
            (infoPtr->iSelected != i))
        {
          pressed = TRUE;
          break;
        }

      if (FUNC9(infoPtr, TCN_SELCHANGING))
        return 0;

      if (pressed)
        FUNC4 (infoPtr, FALSE);
      else
        FUNC10(infoPtr, newItem);

      FUNC9(infoPtr, TCN_SELCHANGE);
    }
  }

  return 0;
}