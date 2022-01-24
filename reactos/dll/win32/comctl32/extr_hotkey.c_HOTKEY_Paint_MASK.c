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
struct TYPE_4__ {int /*<<< orphan*/  hwndSelf; } ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  TYPE_1__ HOTKEY_INFO ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(HOTKEY_INFO *infoPtr, HDC hdc)
{
    if (hdc)
	FUNC2(infoPtr, hdc);
    else {
	PAINTSTRUCT ps;
	hdc = FUNC0 (infoPtr->hwndSelf, &ps);
	FUNC2 (infoPtr, hdc);
	FUNC1 (infoPtr->hwndSelf, &ps);
    }
}