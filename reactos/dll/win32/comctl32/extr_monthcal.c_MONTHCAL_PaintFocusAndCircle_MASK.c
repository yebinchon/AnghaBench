#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dwStyle; int /*<<< orphan*/  focusedSel; int /*<<< orphan*/  todaysDate; TYPE_1__* calendars; } ;
struct TYPE_7__ {int /*<<< orphan*/  month; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  TYPE_2__ MONTHCAL_INFO ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MCS_NOTODAYCIRCLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st_null ; 

__attribute__((used)) static void FUNC6(const MONTHCAL_INFO *infoPtr, HDC hdc, const PAINTSTRUCT *ps)
{
  /* circle today date if only it's in fully visible month */
  if (!(infoPtr->dwStyle & MCS_NOTODAYCIRCLE))
  {
    INT i;

    for (i = 0; i < FUNC3(infoPtr); i++)
      if (!FUNC2(&infoPtr->todaysDate, &infoPtr->calendars[i].month))
      {
        FUNC1(infoPtr, hdc, &infoPtr->todaysDate);
        break;
      }
  }

  if (!FUNC5(&infoPtr->focusedSel, &st_null))
  {
    RECT r;
    FUNC4(infoPtr, &infoPtr->focusedSel, &r, -1);
    FUNC0(hdc, &r);
  }
}