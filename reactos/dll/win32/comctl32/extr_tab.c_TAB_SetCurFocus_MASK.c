#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int uFocus; int iSelected; int uNumItem; int dwStyle; int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ TAB_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCN_FOCUSCHANGE ; 
 int /*<<< orphan*/  TCN_SELCHANGE ; 
 int /*<<< orphan*/  TCN_SELCHANGING ; 
 int TCS_BUTTONS ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,int) ; 

__attribute__((used)) static LRESULT FUNC6 (TAB_INFO *infoPtr, INT iItem)
{
  FUNC5("(%p %d)\n", infoPtr, iItem);

  if (iItem < 0) {
      infoPtr->uFocus = -1;
      if (infoPtr->iSelected != -1) {
          infoPtr->iSelected = -1;
          FUNC4(infoPtr, TCN_SELCHANGE);
          FUNC3(infoPtr);
      }
  }
  else if (iItem < infoPtr->uNumItem) {
    if (infoPtr->dwStyle & TCS_BUTTONS) {
      /* set focus to new item, leave selection as is */
      if (infoPtr->uFocus != iItem) {
        INT prev_focus = infoPtr->uFocus;
        RECT r;

        infoPtr->uFocus = iItem;

        if (prev_focus != infoPtr->iSelected) {
          if (FUNC2(infoPtr, prev_focus, &r, NULL))
            FUNC0(infoPtr->hwnd, &r, FALSE);
        }

        if (FUNC2(infoPtr, iItem, &r, NULL))
            FUNC0(infoPtr->hwnd, &r, FALSE);

        FUNC4(infoPtr, TCN_FOCUSCHANGE);
      }
    } else {
      INT oldFocus = infoPtr->uFocus;
      if (infoPtr->iSelected != iItem || oldFocus == -1 ) {
        infoPtr->uFocus = iItem;
        if (oldFocus != -1) {
          if (!FUNC4(infoPtr, TCN_SELCHANGING))  {
            infoPtr->iSelected = iItem;
            FUNC4(infoPtr, TCN_SELCHANGE);
          }
          else
            infoPtr->iSelected = iItem;
          FUNC1(infoPtr);
          FUNC3(infoPtr);
        }
      }
    }
  }
  return 0;
}