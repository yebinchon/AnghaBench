#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int /*<<< orphan*/  microbit_display_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SCROLL_SPEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void FUNC3(microbit_display_obj_t *self, const char* str, bool wait) {
    mp_obj_t iterable = FUNC1(str, FUNC2(str), NULL, false, false);
    FUNC0(self, iterable, DEFAULT_SCROLL_SPEED, false, wait);
}