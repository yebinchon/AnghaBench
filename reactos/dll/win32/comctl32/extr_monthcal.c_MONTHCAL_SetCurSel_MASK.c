#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_18__ {int /*<<< orphan*/  wDay; scalar_t__ wMilliseconds; scalar_t__ wSecond; scalar_t__ wMinute; scalar_t__ wHour; } ;
struct TYPE_19__ {int dwStyle; int /*<<< orphan*/  hwndSelf; TYPE_2__ maxSel; TYPE_2__ minSel; TYPE_1__* calendars; } ;
struct TYPE_17__ {int /*<<< orphan*/  month; } ;
typedef  TYPE_2__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_3__ MONTHCAL_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MCS_MULTISELECT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC10(MONTHCAL_INFO *infoPtr, SYSTEMTIME *curSel)
{
  SYSTEMTIME prev = infoPtr->minSel, selection;
  INT diff;
  WORD day;

  FUNC9("%p\n", curSel);
  if(!curSel) return FALSE;
  if(infoPtr->dwStyle & MCS_MULTISELECT) return FALSE;

  if(!FUNC8(curSel)) return FALSE;
  /* exit earlier if selection equals current */
  if (FUNC5(&infoPtr->minSel, curSel)) return TRUE;

  selection = *curSel;
  selection.wHour = selection.wMinute = selection.wSecond = selection.wMilliseconds = 0;
  FUNC1(&selection, TRUE);

  if(!FUNC6(infoPtr, &selection, FALSE)) return FALSE;

  /* scroll calendars only if we have to */
  diff = FUNC7(&infoPtr->calendars[FUNC2(infoPtr)-1].month, curSel);
  if (diff <= 0)
  {
    diff = FUNC7(&infoPtr->calendars[0].month, curSel);
    if (diff > 0) diff = 0;
  }

  if (diff != 0)
  {
    INT i;

    for (i = 0; i < FUNC2(infoPtr); i++)
      FUNC4(&infoPtr->calendars[i].month, diff);
  }

  /* we need to store time part as it is */
  selection = *curSel;
  FUNC1(&selection, TRUE);
  infoPtr->minSel = infoPtr->maxSel = selection;

  /* if selection is still in current month, reduce rectangle */
  day = prev.wDay;
  prev.wDay = curSel->wDay;
  if (FUNC5(&prev, curSel))
  {
    RECT r_prev, r_new;

    prev.wDay = day;
    FUNC3(infoPtr, &prev, &r_prev, -1);
    FUNC3(infoPtr, curSel, &r_new, -1);

    FUNC0(infoPtr->hwndSelf, &r_prev, FALSE);
    FUNC0(infoPtr->hwndSelf, &r_new,  FALSE);
  }
  else
    FUNC0(infoPtr->hwndSelf, NULL, FALSE);

  return TRUE;
}