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
struct TYPE_4__ {int /*<<< orphan*/  focusedSel; int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_1__ MONTHCAL_INFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  st_null ; 

__attribute__((used)) static BOOL FUNC4(MONTHCAL_INFO *infoPtr, const SYSTEMTIME *st)
{
  RECT r;

  if(st)
  {
    /* there's nothing to do if it's the same date,
       mouse move within same date rectangle case */
    if(FUNC2(&infoPtr->focusedSel, st)) return FALSE;

    /* invalidate old focused day */
    if (FUNC1(infoPtr, &infoPtr->focusedSel, &r, -1))
      FUNC0(infoPtr->hwndSelf, &r, FALSE);

    infoPtr->focusedSel = *st;
  }

  /* On set invalidates new day, on reset clears previous focused day. */
  if (FUNC1(infoPtr, &infoPtr->focusedSel, &r, -1))
    FUNC0(infoPtr->hwndSelf, &r, FALSE);

  if(!st && FUNC3(&infoPtr->focusedSel))
    infoPtr->focusedSel = st_null;

  return TRUE;
}