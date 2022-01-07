
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int report_keyboard_t ;
typedef scalar_t__ int8_t ;
struct TYPE_2__ {scalar_t__ nkro; } ;


 int KBD2_ENDPOINT ;
 int KBD2_SIZE ;
 int KBD_ENDPOINT ;
 int KBD_SIZE ;
 TYPE_1__ keymap_config ;
 scalar_t__ send_report (int *,int ,int ,int ) ;
 scalar_t__ usb_keyboard_idle_count ;
 int usb_keyboard_print_report (int *) ;

int8_t usb_keyboard_send_report(report_keyboard_t *report) {
    int8_t result = 0;






    {
        result = send_report(report, KBD_ENDPOINT, 0, KBD_SIZE);
    }

    if (result) return result;
    usb_keyboard_idle_count = 0;
    usb_keyboard_print_report(report);
    return 0;
}
