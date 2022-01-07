
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;


 int DEBUG_TX_ENDPOINT ;
 int RWAL ;
 int SREG ;
 int UDFNUML ;
 int UEDATX ;
 int UEINTX ;
 int UENUM ;
 int cli () ;
 int debug_flush_timer ;
 int usb_configured () ;

int8_t sendchar(uint8_t c) {
    static uint8_t previous_timeout = 0;
    uint8_t timeout, intr_state;


    if (!usb_configured()) return -1;



    intr_state = SREG;
    cli();
    UENUM = DEBUG_TX_ENDPOINT;

    if (previous_timeout) {
        if (!(UEINTX & (1 << RWAL))) {
            SREG = intr_state;
            return -1;
        }
        previous_timeout = 0;
    }

    timeout = UDFNUML + 4;
    while (1) {

        if (UEINTX & (1 << RWAL)) break;
        SREG = intr_state;

        if (UDFNUML == timeout) {
            previous_timeout = 1;
            return -1;
        }

        if (!usb_configured()) return -1;

        intr_state = SREG;
        cli();
        UENUM = DEBUG_TX_ENDPOINT;
    }

    UEDATX = c;

    if (!(UEINTX & (1 << RWAL))) {
        UEINTX = 0x3A;
        debug_flush_timer = 0;
    } else {
        debug_flush_timer = 2;
    }
    SREG = intr_state;
    return 0;
}
