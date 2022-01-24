#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TX_ENDPOINT ; 
 int RWAL ; 
 int SREG ; 
 int UDFNUML ; 
 int UEDATX ; 
 int UEINTX ; 
 int /*<<< orphan*/  UENUM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int debug_flush_timer ; 
 int /*<<< orphan*/  FUNC1 () ; 

int8_t FUNC2(uint8_t c) {
    static uint8_t previous_timeout = 0;
    uint8_t        timeout, intr_state;

    // if we're not online (enumerated and configured), error
    if (!FUNC1()) return -1;
    // interrupts are disabled so these functions can be
    // used from the main program or interrupt context,
    // even both in the same program!
    intr_state = SREG;
    FUNC0();
    UENUM = DEBUG_TX_ENDPOINT;
    // if we gave up due to timeout before, don't wait again
    if (previous_timeout) {
        if (!(UEINTX & (1 << RWAL))) {
            SREG = intr_state;
            return -1;
        }
        previous_timeout = 0;
    }
    // wait for the FIFO to be ready to accept data
    timeout = UDFNUML + 4;
    while (1) {
        // are we ready to transmit?
        if (UEINTX & (1 << RWAL)) break;
        SREG = intr_state;
        // have we waited too long?
        if (UDFNUML == timeout) {
            previous_timeout = 1;
            return -1;
        }
        // has the USB gone offline?
        if (!FUNC1()) return -1;
        // get ready to try checking again
        intr_state = SREG;
        FUNC0();
        UENUM = DEBUG_TX_ENDPOINT;
    }
    // actually write the byte into the FIFO
    UEDATX = c;
    // if this completed a packet, transmit it now!
    if (!(UEINTX & (1 << RWAL))) {
        UEINTX            = 0x3A;
        debug_flush_timer = 0;
    } else {
        debug_flush_timer = 2;
    }
    SREG = intr_state;
    return 0;
}