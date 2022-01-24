#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  dwState; } ;
struct TYPE_8__ {scalar_t__ iSelected; int uFocus; scalar_t__ uNumItem; } ;
typedef  TYPE_1__ TAB_INFO ;
typedef  int LRESULT ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_5__* FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  TCIS_BUTTONPRESSED ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static inline LRESULT FUNC4 (TAB_INFO *infoPtr, INT iItem)
{
  INT prevItem = infoPtr->iSelected;

  FUNC3("(%p %d)\n", infoPtr, iItem);

  if (iItem >= (INT)infoPtr->uNumItem)
      return -1;

  if (prevItem != iItem) {
      if (prevItem != -1)
          FUNC1(infoPtr, prevItem)->dwState &= ~TCIS_BUTTONPRESSED;

      if (iItem >= 0)
      {
          FUNC1(infoPtr, iItem)->dwState |= TCIS_BUTTONPRESSED;
          infoPtr->iSelected = iItem;
          infoPtr->uFocus = iItem;
      }
      else
      {
          infoPtr->iSelected = -1;
          infoPtr->uFocus = -1;
      }

      FUNC0(infoPtr);
      FUNC2(infoPtr);
  }

  return prevItem;
}