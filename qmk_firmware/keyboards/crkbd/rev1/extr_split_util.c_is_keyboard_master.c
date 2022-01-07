
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OTGPADE ;
 int USBCON ;
 int USBSTA ;
 int VBUS ;
 scalar_t__ waitForUsb () ;
 int wait_us (int) ;

__attribute__((weak)) bool is_keyboard_master(void) {
    static enum { UNKNOWN, MASTER, SLAVE } usbstate = UNKNOWN;


    if (usbstate == UNKNOWN) {
        usbstate = MASTER;

    }

    return (usbstate == MASTER);
}
