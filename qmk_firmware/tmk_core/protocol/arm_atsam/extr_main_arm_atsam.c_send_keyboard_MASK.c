#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
typedef  TYPE_1__ report_keyboard_t ;
struct TYPE_5__ {int /*<<< orphan*/  nkro; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDI_HID_KBD_REPORT_SIZE ; 
 int /*<<< orphan*/  UDI_HID_NKRO_REPORT_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__ keymap_config ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ udi_hid_kbd_b_report_trans_ongoing ; 
 int udi_hid_kbd_b_report_valid ; 
 int /*<<< orphan*/  udi_hid_kbd_report ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ udi_hid_nkro_b_report_trans_ongoing ; 
 int udi_hid_nkro_b_report_valid ; 
 int /*<<< orphan*/  udi_hid_nkro_report ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(report_keyboard_t *report) {
    uint32_t irqflags;

#ifdef NKRO_ENABLE
    if (!keymap_config.nkro) {
#endif  // NKRO_ENABLE
        while (udi_hid_kbd_b_report_trans_ongoing) {
            FUNC4();
        }  // Run other tasks while waiting for USB to be free

        irqflags = FUNC2();
        FUNC1();
        FUNC0();

        FUNC5(udi_hid_kbd_report, report->raw, UDI_HID_KBD_REPORT_SIZE);
        udi_hid_kbd_b_report_valid = 1;
        FUNC6();

        FUNC0();
        FUNC3(irqflags);
#ifdef NKRO_ENABLE
    } else {
        while (udi_hid_nkro_b_report_trans_ongoing) {
            main_subtasks();
        }  // Run other tasks while waiting for USB to be free

        irqflags = __get_PRIMASK();
        __disable_irq();
        __DMB();

        memcpy(udi_hid_nkro_report, report->raw, UDI_HID_NKRO_REPORT_SIZE);
        udi_hid_nkro_b_report_valid = 1;
        udi_hid_nkro_send_report();

        __DMB();
        __set_PRIMASK(irqflags);
    }
#endif  // NKRO_ENABLE
}