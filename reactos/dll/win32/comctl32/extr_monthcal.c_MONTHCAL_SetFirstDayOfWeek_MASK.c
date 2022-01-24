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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int firstDay; int /*<<< orphan*/  hwndSelf; void* firstDaySet; } ;
typedef  TYPE_1__ MONTHCAL_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  LOCALE_IFIRSTDAYOFWEEK ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 void* TRUE ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC9(MONTHCAL_INFO *infoPtr, INT day)
{
  LRESULT prev = FUNC4(infoPtr);
  int new_day;

  FUNC5("%d\n", day);

  if(day == -1)
  {
    WCHAR buf[80];

    FUNC2(LOCALE_USER_DEFAULT, LOCALE_IFIRSTDAYOFWEEK, buf, FUNC0(buf));
    FUNC5("%s %d\n", FUNC7(buf), FUNC8(buf));

    new_day = FUNC6(buf);

    infoPtr->firstDaySet = FALSE;
  }
  else if(day >= 7)
  {
    new_day = 6; /* max first day allowed */
    infoPtr->firstDaySet = TRUE;
  }
  else
  {
    /* Native behaviour for that case is broken: invalid date number >31
       got displayed at (0,0) position, current month starts always from
       (1,0) position. Should be implemented here as well only if there's
       nothing else to do. */
    if (day < -1)
      FUNC1("No bug compatibility for day=%d\n", day);

    new_day = day;
    infoPtr->firstDaySet = TRUE;
  }

  /* convert from locale to SYSTEMTIME format */
  infoPtr->firstDay = (new_day >= 0) ? (++new_day) % 7 : new_day;

  FUNC3(infoPtr->hwndSelf, NULL, FALSE);

  return prev;
}