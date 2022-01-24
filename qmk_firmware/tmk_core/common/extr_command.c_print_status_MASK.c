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
struct TYPE_2__ {int /*<<< orphan*/  nkro; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCON ; 
 int /*<<< orphan*/  UDIEN ; 
 int /*<<< orphan*/  UDINT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  keyboard_idle ; 
 int /*<<< orphan*/  keyboard_protocol ; 
 TYPE_1__ keymap_config ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  usbSofCount ; 
 int /*<<< orphan*/  usb_keyboard_idle_count ; 
 int /*<<< orphan*/  usb_keyboard_leds ; 

__attribute__((used)) static void FUNC5(void) {
    FUNC1("\n\t- Status -\n");

    FUNC3(FUNC0());
#ifndef PROTOCOL_VUSB
    // these aren't set on the V-USB protocol, so we just ignore them for now
    FUNC3(keyboard_protocol);
    FUNC3(keyboard_idle);
#endif
#ifdef NKRO_ENABLE
    print_val_hex8(keymap_config.nkro);
#endif
    FUNC2(FUNC4());

#ifdef PROTOCOL_PJRC
    print_val_hex8(UDCON);
    print_val_hex8(UDIEN);
    print_val_hex8(UDINT);
    print_val_hex8(usb_keyboard_leds);
    print_val_hex8(usb_keyboard_idle_count);
#endif

#ifdef PROTOCOL_PJRC
#    if USB_COUNT_SOF
    print_val_hex8(usbSofCount);
#    endif
#endif
    return;
}