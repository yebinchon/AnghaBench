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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pyb_pin_WL_HOST_WAKE ; 
 int /*<<< orphan*/  pyb_pin_WL_SDIO_1 ; 

int FUNC1(void *cb_data) {
    #ifdef pyb_pin_WL_HOST_WAKE
    return mp_hal_pin_read(pyb_pin_WL_HOST_WAKE);
    #else
    return FUNC0(pyb_pin_WL_SDIO_1);
    #endif
}