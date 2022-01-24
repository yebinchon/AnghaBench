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

/* Variables and functions */
 int /*<<< orphan*/  PS2_ERR_NODATA ; 
 int /*<<< orphan*/  PS2_ERR_NONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  ps2_error ; 

uint8_t FUNC2(void) {
    if (FUNC1()) {
        ps2_error = PS2_ERR_NONE;
        return FUNC0();
    } else {
        ps2_error = PS2_ERR_NODATA;
        return 0;
    }
}