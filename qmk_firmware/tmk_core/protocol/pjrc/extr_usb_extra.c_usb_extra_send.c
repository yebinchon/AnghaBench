
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
typedef int int8_t ;


 int EXTRA_ENDPOINT ;
 int RWAL ;
 scalar_t__ SREG ;
 scalar_t__ UDFNUML ;
 int UEDATX ;
 int UEINTX ;
 int UENUM ;
 int cli () ;
 int usb_configured () ;

int8_t usb_extra_send(uint8_t report_id, uint16_t data) {
    uint8_t intr_state, timeout;

    if (!usb_configured()) return -1;
    intr_state = SREG;
    cli();
    UENUM = EXTRA_ENDPOINT;
    timeout = UDFNUML + 50;
    while (1) {

        if (UEINTX & (1 << RWAL)) break;
        SREG = intr_state;

        if (!usb_configured()) return -1;

        if (UDFNUML == timeout) return -1;

        intr_state = SREG;
        cli();
        UENUM = EXTRA_ENDPOINT;
    }

    UEDATX = report_id;
    UEDATX = data & 0xFF;
    UEDATX = (data >> 8) & 0xFF;

    UEINTX = 0x3A;
    SREG = intr_state;
    return 0;
}
