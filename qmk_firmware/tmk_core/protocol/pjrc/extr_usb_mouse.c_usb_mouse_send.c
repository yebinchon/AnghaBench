
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int int8_t ;


 int MOUSE_ENDPOINT ;
 int RWAL ;
 scalar_t__ SREG ;
 scalar_t__ UDFNUML ;
 int UEDATX ;
 int UEINTX ;
 int UENUM ;
 int cli () ;
 int usb_configured () ;
 scalar_t__ usb_mouse_protocol ;

int8_t usb_mouse_send(int8_t x, int8_t y, int8_t wheel_v, int8_t wheel_h, uint8_t buttons) {
    uint8_t intr_state, timeout;

    if (!usb_configured()) return -1;
    if (x == -128) x = -127;
    if (y == -128) y = -127;
    if (wheel_v == -128) wheel_v = -127;
    if (wheel_h == -128) wheel_h = -127;
    intr_state = SREG;
    cli();
    UENUM = MOUSE_ENDPOINT;
    timeout = UDFNUML + 50;
    while (1) {

        if (UEINTX & (1 << RWAL)) break;
        SREG = intr_state;

        if (!usb_configured()) return -1;

        if (UDFNUML == timeout) return -1;

        intr_state = SREG;
        cli();
        UENUM = MOUSE_ENDPOINT;
    }
    UEDATX = buttons;
    UEDATX = x;
    UEDATX = y;
    if (usb_mouse_protocol) {
        UEDATX = wheel_v;
        UEDATX = wheel_h;
    }

    UEINTX = 0x3A;
    SREG = intr_state;
    return 0;
}
