
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int _delay_ms (int) ;
 int sei () ;
 int usbDeviceConnect () ;
 int usbDeviceDisconnect () ;
 int usbInit () ;
 int wdt_reset () ;

__attribute__((used)) static void initForUsbConnectivity(void) {
    uint8_t i = 0;

    usbInit();

    usbDeviceDisconnect();
    while (--i) {
        wdt_reset();
        _delay_ms(1);
    }
    usbDeviceConnect();
    sei();
}
