#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  hwnd; int /*<<< orphan*/  uFocus; } ;
typedef  TYPE_1__ TAB_INFO ;
typedef  int /*<<< orphan*/  RECT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const TAB_INFO *infoPtr)
{
  RECT      selectedRect;
  BOOL      isVisible;

  /*
   * Get the rectangle for the item.
   */
  isVisible = FUNC1(infoPtr,
				      infoPtr->uFocus,
				      NULL,
				      &selectedRect);

  /*
   * If the rectangle is not completely invisible, invalidate that
   * portion of the window.
   */
  if (isVisible)
  {
    FUNC2("invalidate (%s)\n", FUNC3(&selectedRect));
    FUNC0(infoPtr->hwnd, &selectedRect, TRUE);
  }
}