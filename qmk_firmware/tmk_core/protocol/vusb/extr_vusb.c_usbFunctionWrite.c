
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_2__ {scalar_t__ len; int kind; } ;





 int bootloader_jump () ;
 int debug (char*) ;
 int debug_hex (int) ;
 TYPE_1__ last_req ;
 int usbDeviceDisconnect () ;
 int vusb_keyboard_leds ;

uchar usbFunctionWrite(uchar *data, uchar len) {
    if (last_req.len == 0) {
        return -1;
    }
    switch (last_req.kind) {
        case 128:
            debug("SET_LED: ");
            debug_hex(data[0]);
            debug("\n");
            vusb_keyboard_leds = data[0];
            last_req.len = 0;
            return 1;
            break;
        case 130:
            usbDeviceDisconnect();
            bootloader_jump();
            return 1;
            break;
        case 129:
        default:
            return -1;
            break;
    }
    return 1;
}
