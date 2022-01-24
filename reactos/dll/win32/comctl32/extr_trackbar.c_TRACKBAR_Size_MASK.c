#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dwStyle; } ;
typedef  TYPE_1__ TRACKBAR_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;

/* Variables and functions */
 int TBS_FIXEDLENGTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static LRESULT
FUNC5 (TRACKBAR_INFO *infoPtr)
{
    if (infoPtr->dwStyle & TBS_FIXEDLENGTH)
    {
        FUNC1(infoPtr);
        FUNC4(infoPtr);
    }
    else
        FUNC2(infoPtr);
    FUNC0 (infoPtr);
    FUNC3(infoPtr);

    return 0;
}