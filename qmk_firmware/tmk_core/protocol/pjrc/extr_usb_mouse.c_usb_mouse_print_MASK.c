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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  debug_mouse ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(int8_t x, int8_t y, int8_t wheel_v, int8_t wheel_h, uint8_t buttons) {
    if (!debug_mouse) return;
    FUNC1("usb_mouse[btn|x y v h]: ");
    FUNC0(buttons);
    FUNC1("|");
    FUNC0(x);
    FUNC1(" ");
    FUNC0(y);
    FUNC1(" ");
    FUNC0(wheel_v);
    FUNC1(" ");
    FUNC0(wheel_h);
    FUNC1("\n");
}