
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int raw; } ;
typedef TYPE_1__ report_keyboard_t ;
struct TYPE_5__ {int nkro; } ;


 int UDI_HID_KBD_REPORT_SIZE ;
 int UDI_HID_NKRO_REPORT_SIZE ;
 int __DMB () ;
 int __disable_irq () ;
 int __get_PRIMASK () ;
 int __set_PRIMASK (int ) ;
 TYPE_3__ keymap_config ;
 int main_subtasks () ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ udi_hid_kbd_b_report_trans_ongoing ;
 int udi_hid_kbd_b_report_valid ;
 int udi_hid_kbd_report ;
 int udi_hid_kbd_send_report () ;
 scalar_t__ udi_hid_nkro_b_report_trans_ongoing ;
 int udi_hid_nkro_b_report_valid ;
 int udi_hid_nkro_report ;
 int udi_hid_nkro_send_report () ;

void send_keyboard(report_keyboard_t *report) {
    uint32_t irqflags;




        while (udi_hid_kbd_b_report_trans_ongoing) {
            main_subtasks();
        }

        irqflags = __get_PRIMASK();
        __disable_irq();
        __DMB();

        memcpy(udi_hid_kbd_report, report->raw, UDI_HID_KBD_REPORT_SIZE);
        udi_hid_kbd_b_report_valid = 1;
        udi_hid_kbd_send_report();

        __DMB();
        __set_PRIMASK(irqflags);
}
