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
struct TYPE_4__ {int MinVal; int MaxVal; int /*<<< orphan*/  Self; } ;
typedef  TYPE_1__ PROGRESS_INFO ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static DWORD FUNC4 (PROGRESS_INFO *infoPtr, int low, int high)
{
    DWORD res = FUNC2(FUNC1(infoPtr->MinVal), FUNC1(infoPtr->MaxVal));

    /* if nothing changes, simply return */
    if(infoPtr->MinVal == low && infoPtr->MaxVal == high) return res;

    infoPtr->MinVal = low;
    infoPtr->MaxVal = high;
    FUNC3(infoPtr);
    FUNC0(infoPtr->Self, NULL, TRUE);
    return res;
}