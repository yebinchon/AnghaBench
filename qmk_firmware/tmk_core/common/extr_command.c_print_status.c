
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nkro; } ;


 int UDCON ;
 int UDIEN ;
 int UDINT ;
 int host_keyboard_leds () ;
 int keyboard_idle ;
 int keyboard_protocol ;
 TYPE_1__ keymap_config ;
 int print (char*) ;
 int print_val_hex32 (int ) ;
 int print_val_hex8 (int ) ;
 int timer_read32 () ;
 int usbSofCount ;
 int usb_keyboard_idle_count ;
 int usb_keyboard_leds ;

__attribute__((used)) static void print_status(void) {
    print("\n\t- Status -\n");

    print_val_hex8(host_keyboard_leds());


    print_val_hex8(keyboard_protocol);
    print_val_hex8(keyboard_idle);




    print_val_hex32(timer_read32());
    return;
}
