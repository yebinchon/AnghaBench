
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DEBUG_TX_ENDPOINT ;
 int RWAL ;
 int SREG ;
 scalar_t__ UEDATX ;
 int UEINTX ;
 int UENUM ;
 int cli () ;
 scalar_t__ debug_flush_timer ;

void usb_debug_flush_output(void) {
    uint8_t intr_state;

    intr_state = SREG;
    cli();
    if (debug_flush_timer) {
        UENUM = DEBUG_TX_ENDPOINT;
        while ((UEINTX & (1 << RWAL))) {
            UEDATX = 0;
        }
        UEINTX = 0x3A;
        debug_flush_timer = 0;
    }
    SREG = intr_state;
}
