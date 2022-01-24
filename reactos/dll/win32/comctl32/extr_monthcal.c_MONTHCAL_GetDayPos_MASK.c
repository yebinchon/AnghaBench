#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int firstDay; TYPE_1__* calendars; } ;
struct TYPE_11__ {int wDay; int /*<<< orphan*/  wYear; int /*<<< orphan*/  wMonth; } ;
struct TYPE_10__ {TYPE_2__ month; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  TYPE_3__ MONTHCAL_INFO ;
typedef  int LONG ;
typedef  size_t INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__ const*,TYPE_2__*) ; 
 int FUNC2 (TYPE_3__ const*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const MONTHCAL_INFO *infoPtr, const SYSTEMTIME *date,
    INT *col, INT *row, INT calIdx)
{
  SYSTEMTIME st = infoPtr->calendars[calIdx].month;
  INT first;

  st.wDay = 1;
  first = (FUNC0(&st, FALSE) + 6 - infoPtr->firstDay) % 7;

  if (calIdx == 0 || calIdx == FUNC2(infoPtr)-1) {
      const SYSTEMTIME *cal = &infoPtr->calendars[calIdx].month;
      LONG cmp = FUNC1(date, &st);

      /* previous month */
      if (cmp == -1) {
        *col = (first - FUNC3(date->wMonth, cal->wYear) + date->wDay) % 7;
        *row = 0;
        return;
      }

      /* next month calculation is same as for current, just add current month length */
      if (cmp == 1)
          first += FUNC3(cal->wMonth, cal->wYear);
  }

  *col = (date->wDay + first) % 7;
  *row = (date->wDay + first - *col) / 7;
}