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
struct TYPE_4__ {int /*<<< orphan*/  last_drag_icon_rect; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ DRAGLISTDATA ;

/* Variables and functions */
 int /*<<< orphan*/  DRAGLIST_TIMERID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(HWND hwnd, DRAGLISTDATA * data)
{
    FUNC2(hwnd, DRAGLIST_TIMERID);
    FUNC3();
    /* clear any drag insert icon present */
    FUNC1(FUNC0(hwnd), &data->last_drag_icon_rect, TRUE);
    /* clear data for next use */
    FUNC4(data, 0, sizeof(*data));
}