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
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void FUNC5(const MONTHCAL_INFO *infoPtr, SYSTEMTIME *date)
{
  /* the latest date is in latest calendar */
  SYSTEMTIME st, *lt_month = &infoPtr->calendars[FUNC1(infoPtr)-1].month;
  INT first_day;

  *date = *lt_month;
  st = *lt_month;

  /* day of week of first day of current month */
  st.wDay = 1;
  first_day = FUNC0(&st, FALSE);

  FUNC2(date);
  FUNC3(&st);

  /* last calendar starts with some date from previous month that not displayed */
  st.wDay = FUNC4(st.wMonth, st.wYear) +
             (infoPtr->firstDay - first_day) % 7 + 1;
  if (st.wDay > FUNC4(st.wMonth, st.wYear)) st.wDay -= 7;

  /* Use month length to get max day. 42 means max day count in calendar area */
  date->wDay = 42 - (FUNC4(st.wMonth, st.wYear) - st.wDay + 1) -
                     FUNC4(lt_month->wMonth, lt_month->wYear);

  /* fix day of week */
  FUNC0(date, TRUE);
}