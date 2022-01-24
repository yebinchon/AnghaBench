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
struct TYPE_5__ {int /*<<< orphan*/  hwnd; } ;
typedef  TYPE_1__ TAB_INFO ;
typedef  int /*<<< orphan*/  RECT ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(const TAB_INFO *infoPtr, int tabIndex)
{
    if (tabIndex == -1) return;

    if (FUNC0 (infoPtr->hwnd))
    {
        RECT rect;
        FUNC3(infoPtr, tabIndex, &rect, NULL);
        FUNC1 (infoPtr->hwnd, &rect, FALSE);
    }
    else
        FUNC2(infoPtr, tabIndex);
}