#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int dwStyle; int /*<<< orphan*/  minSel; TYPE_1__* calendars; } ;
struct TYPE_8__ {int /*<<< orphan*/  month; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  TYPE_2__ MONTHCAL_INFO ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int MCS_MULTISELECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(MONTHCAL_INFO *infoPtr, INT delta, BOOL keep_selection)
{
  INT i, selIdx = -1;

  for(i = 0; i < FUNC1(infoPtr); i++)
  {
    /* save selection position to shift it later */
    if (selIdx == -1 && FUNC0(&infoPtr->minSel, &infoPtr->calendars[i].month) == 0)
      selIdx = i;

    FUNC2(&infoPtr->calendars[i].month, delta);
  }

  if (keep_selection)
    return;

  /* selection is always shifted to first calendar */
  if (infoPtr->dwStyle & MCS_MULTISELECT)
  {
    SYSTEMTIME range[2];

    FUNC3(infoPtr, range);
    FUNC2(&range[0], delta - selIdx);
    FUNC2(&range[1], delta - selIdx);
    FUNC5(infoPtr, range);
  }
  else
  {
    SYSTEMTIME st = infoPtr->minSel;

    FUNC2(&st, delta - selIdx);
    FUNC4(infoPtr, &st);
  }
}