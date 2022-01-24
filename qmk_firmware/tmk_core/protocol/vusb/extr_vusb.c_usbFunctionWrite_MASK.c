#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uchar ;
struct TYPE_2__ {scalar_t__ len; int kind; } ;

/* Variables and functions */
#define  BOOTLOADER 130 
#define  NONE 129 
#define  SET_LED 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ last_req ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int vusb_keyboard_leds ; 

uchar FUNC4(uchar *data, uchar len) {
    if (last_req.len == 0) {
        return -1;
    }
    switch (last_req.kind) {
        case SET_LED:
            FUNC1("SET_LED: ");
            FUNC2(data[0]);
            FUNC1("\n");
            vusb_keyboard_leds = data[0];
            last_req.len       = 0;
            return 1;
            break;
        case BOOTLOADER:
            FUNC3();
            FUNC0();
            return 1;
            break;
        case NONE:
        default:
            return -1;
            break;
    }
    return 1;
}