#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int wDay; } ;
struct TYPE_10__ {int dwStyle; int /*<<< orphan*/  monthdayState; int /*<<< orphan*/  hwndNotify; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_8__ {int /*<<< orphan*/  idFrom; int /*<<< orphan*/  code; int /*<<< orphan*/  hwndFrom; } ;
struct TYPE_9__ {int cDayState; int /*<<< orphan*/ * prgDayState; TYPE_1__ nmhdr; TYPE_7__ stStart; } ;
typedef  TYPE_2__ NMDAYSTATE ;
typedef  int /*<<< orphan*/  MONTHDAYSTATE ;
typedef  TYPE_3__ MONTHCAL_INFO ;
typedef  int /*<<< orphan*/  LPARAM ;

/* Variables and functions */
 int /*<<< orphan*/  GMR_DAYSTATE ; 
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCN_GETDAYSTATE ; 
 int MCS_DAYSTATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_7__*) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_NOTIFY ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(MONTHCAL_INFO *infoPtr)
{
  MONTHDAYSTATE *state;
  NMDAYSTATE nmds;

  if (!(infoPtr->dwStyle & MCS_DAYSTATE)) return;

  nmds.nmhdr.hwndFrom = infoPtr->hwndSelf;
  nmds.nmhdr.idFrom   = FUNC0(infoPtr->hwndSelf, GWLP_ID);
  nmds.nmhdr.code     = MCN_GETDAYSTATE;
  nmds.cDayState      = FUNC2(infoPtr, GMR_DAYSTATE, 0);
  nmds.prgDayState    = state = FUNC4(nmds.cDayState * sizeof(MONTHDAYSTATE));

  FUNC1(infoPtr, &nmds.stStart);
  nmds.stStart.wDay = 1;

  FUNC3(infoPtr->hwndNotify, WM_NOTIFY, nmds.nmhdr.idFrom, (LPARAM)&nmds);
  FUNC6(infoPtr->monthdayState, nmds.prgDayState,
      FUNC2(infoPtr, GMR_DAYSTATE, 0)*sizeof(MONTHDAYSTATE));

  FUNC5(state);
}