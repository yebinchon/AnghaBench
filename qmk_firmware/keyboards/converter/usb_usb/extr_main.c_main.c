
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_TX_INIT ;
 int LED_TX_ON ;
 int LUFA_setup () ;
 int USB_USBTask () ;
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
    debug("init: done\n");

    for (;;) {
        keyboard_task();



        USB_USBTask();

    }

    return 0;
}
