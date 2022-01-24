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
typedef  int /*<<< orphan*/  mp_obj_type_t ;
typedef  int /*<<< orphan*/  mp_const_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pyb_uart_type ; 
 int /*<<< orphan*/  pyb_usb_vcp_type ; 

bool FUNC1(mp_const_obj_t stream) {
    mp_obj_type_t *type = FUNC0(stream);
    return type == &pyb_uart_type
        #if MICROPY_HW_ENABLE_USB
        || type == &pyb_usb_vcp_type
        #endif
        ;
}