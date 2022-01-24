#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int MouseDownID; int /*<<< orphan*/  Self; } ;
typedef  TYPE_1__ SYSLINK_INFO ;
typedef  int /*<<< orphan*/  POINT ;
typedef  int /*<<< orphan*/ * PDOC_ITEM ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC4 (SYSLINK_INFO *infoPtr, const POINT *pt)
{
    PDOC_ITEM Current, Old;
    int id;

    Current = FUNC0(infoPtr, pt, &id, TRUE);
    if(Current != NULL)
    {
      FUNC3(infoPtr->Self);

      Old = FUNC2(infoPtr, Current);
      if(Old != NULL && Old != Current)
      {
          FUNC1(infoPtr, Old);
      }
      infoPtr->MouseDownID = id;
      FUNC1(infoPtr, Current);
    }

    return 0;
}