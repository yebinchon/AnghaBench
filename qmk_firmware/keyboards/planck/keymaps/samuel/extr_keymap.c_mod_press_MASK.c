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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int last_mod ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tap_timer ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(uint16_t tap_code, uint16_t hold_code, int id) {
    // this first if body makes double modified keys impossible, but stops the
    // delay when modifying a tap key which would result in the tap key not
    // getting modified.
    if (last_mod != id && last_mod != 10) {
        FUNC1(tap_code);
        last_mod = 10;
    } else {
        tap_timer = FUNC2();
        last_mod = id;
        FUNC0(hold_code);
    }
}