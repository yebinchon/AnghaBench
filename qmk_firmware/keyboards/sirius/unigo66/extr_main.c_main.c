
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEVICE_STATE_Configured ;
 int LED_TX_INIT ;
 int LED_TX_ON ;
 int LUFA_setup () ;
 scalar_t__ USB_DeviceState ;
 int USB_USBTask () ;
 int _delay_ms (int) ;
 int debug (char*) ;
 int debug_enable ;
 int debug_keyboard ;
 int host_set_driver (int *) ;
 int keyboard_init () ;
 int keyboard_task () ;
 int lufa_driver ;
 int sei () ;

int main(void)
{

    LED_TX_INIT;
    LED_TX_ON;

    debug_enable = 1;
    debug_keyboard = 1;

    host_set_driver(&lufa_driver);
    keyboard_init();

    LUFA_setup();




    sei();



    while (USB_DeviceState != DEVICE_STATE_Configured) ;
    if (debug_enable) {
        _delay_ms(1000);
    }

    debug("init: done\n");

    for (;;) {
        keyboard_task();



        USB_USBTask();

    }

    return 0;
}
