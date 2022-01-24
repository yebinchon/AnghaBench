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
struct TYPE_4__ {int /*<<< orphan*/  bDropdownEnabled; int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_1__ DATETIME_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC3 (DATETIME_INFO *infoPtr, HDC hdc)
{
    if (!hdc) {
	PAINTSTRUCT ps;
        hdc = FUNC0 (infoPtr->hwndSelf, &ps);
        FUNC1 (infoPtr, hdc);
        FUNC2 (infoPtr->hwndSelf, &ps);
    } else {
        FUNC1 (infoPtr, hdc);
    }

    /* Not a click on the dropdown box, enabled it */
    infoPtr->bDropdownEnabled = TRUE;

    return 0;
}