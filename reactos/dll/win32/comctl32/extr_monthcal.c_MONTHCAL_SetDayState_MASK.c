#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dwStyle; int /*<<< orphan*/  monthdayState; } ;
typedef  int /*<<< orphan*/  MONTHDAYSTATE ;
typedef  TYPE_1__ MONTHCAL_INFO ;
typedef  int LRESULT ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  GMR_DAYSTATE ; 
 int MCS_DAYSTATE ; 
 int FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__ const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static LRESULT
FUNC3(const MONTHCAL_INFO *infoPtr, INT months, MONTHDAYSTATE *states)
{
  FUNC1("%p %d %p\n", infoPtr, months, states);

  if (!(infoPtr->dwStyle & MCS_DAYSTATE)) return 0;
  if (months != FUNC0(infoPtr, GMR_DAYSTATE, 0)) return 0;

  FUNC2(infoPtr->monthdayState, states, months*sizeof(MONTHDAYSTATE));

  return 1;
}