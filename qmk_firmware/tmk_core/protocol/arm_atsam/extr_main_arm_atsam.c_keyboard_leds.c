
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ nkro; } ;


 TYPE_1__ keymap_config ;
 int udi_hid_kbd_report_set ;
 int udi_hid_nkro_report_set ;

uint8_t keyboard_leds(void) {





        return udi_hid_kbd_report_set;
}
