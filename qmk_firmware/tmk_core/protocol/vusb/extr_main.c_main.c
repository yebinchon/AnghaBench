
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int CLKPR ;
 int UART_BAUD_RATE ;
 int debug (char*) ;
 int host_set_driver (int ) ;
 int initForUsbConnectivity () ;
 int keyboard_init () ;
 int keyboard_setup () ;
 int keyboard_task () ;
 int rgblight_task () ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int uart_init (int ) ;
 scalar_t__ usbConfiguration ;
 scalar_t__ usbInterruptIsReady () ;
 int usbPoll () ;
 scalar_t__ usbSofCount ;
 int vusb_driver () ;
 int vusb_transfer_keyboard () ;

int main(void) {
    bool suspended = 0;
    uart_init(UART_BAUD_RATE);

    keyboard_setup();

    keyboard_init();
    host_set_driver(vusb_driver());

    debug("initForUsbConnectivity()\n");
    initForUsbConnectivity();

    debug("main loop\n");
    while (1) {
        if (!suspended) {
            usbPoll();



            if (usbConfiguration && usbInterruptIsReady()) {
                keyboard_task();




            }
            vusb_transfer_keyboard();
        }
    }
}
