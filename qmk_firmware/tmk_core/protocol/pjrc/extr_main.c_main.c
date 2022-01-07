
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_PRESCALE (int ) ;
 int host_set_driver (int ) ;
 int keyboard_init () ;
 int keyboard_setup () ;
 int keyboard_task () ;
 int pjrc_driver () ;
 int print_set_sendchar (int ) ;
 scalar_t__ remote_wakeup ;
 int sendchar ;
 int sleep_led_init () ;
 scalar_t__ suspend ;
 int suspend_power_down () ;
 scalar_t__ suspend_wakeup_condition () ;
 int usb_configured () ;
 int usb_init () ;
 int usb_remote_wakeup () ;

int main(void) {

    CPU_PRESCALE(0);

    keyboard_setup();




    usb_init();
    while (!usb_configured())
        ;

    print_set_sendchar(sendchar);

    keyboard_init();
    host_set_driver(pjrc_driver());



    while (1) {
        while (suspend) {
            suspend_power_down();
            if (remote_wakeup && suspend_wakeup_condition()) {
                usb_remote_wakeup();
            }
        }

        keyboard_task();
    }
}
