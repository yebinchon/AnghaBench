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
struct TYPE_4__ {int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  dwStyle; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ DATETIME_INFO ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WS_DISABLED ; 

__attribute__((used)) static LRESULT
FUNC2 (DATETIME_INFO *infoPtr, BOOL bEnable)
{
    FUNC1("%p %s\n", infoPtr, bEnable ? "TRUE" : "FALSE");
    if (bEnable)
        infoPtr->dwStyle &= ~WS_DISABLED;
    else
        infoPtr->dwStyle |= WS_DISABLED;

    FUNC0(infoPtr->hwndSelf, NULL, TRUE);

    return 0;
}