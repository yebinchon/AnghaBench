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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int FUNC5 (int) ; 

uint8_t FUNC6(void)
{

    // scan code reading states
    static enum {
        RESET,
        RESET_RESPONSE,
        KBD_ID0,
        KBD_ID1,
        CONFIG,
        READY,
        F0,
    } state = RESET;

    uint8_t code;
    if ((code = FUNC4())) {
        FUNC0("r"); FUNC1(code); FUNC0(" ");
    }

    switch (state) {
        case RESET:
            FUNC0("wFF ");
            if (FUNC5(0xFF) == 0xFA) {
                FUNC0("[ack]\nRESET_RESPONSE: ");
                state = RESET_RESPONSE;
            }
            break;
        case RESET_RESPONSE:
            if (code == 0xAA) {
                FUNC0("[ok]\nKBD_ID: ");
                state = KBD_ID0;
            } else if (code) {
                FUNC0("err\nRESET: ");
                state = RESET;
            }
            break;
        // after reset receive keyboard ID(2 bytes)
        case KBD_ID0:
            if (code) {
                state = KBD_ID1;
            }
            break;
        case KBD_ID1:
            if (code) {
                FUNC0("\nCONFIG: ");
                state = CONFIG;
            }
            break;
        case CONFIG:
            FUNC0("wF8 ");
            if (FUNC5(0xF8) == 0xFA) {
                FUNC0("[ack]\nREADY\n");
                state = READY;
            }
            break;
        case READY:
            switch (code) {
                case 0x00:
                    break;
                case 0xF0:
                    state = F0;
                    FUNC0(" ");
                    break;
                default:    // normal key make
                    if (code < 0x88) {
                        FUNC3(code);
                    } else {
                        FUNC0("unexpected scan code at READY: "); FUNC1(code); FUNC0("\n");
                    }
                    state = READY;
                    FUNC0("\n");
            }
            break;
        case F0:    // Break code
            switch (code) {
                case 0x00:
                    break;
                default:
                    if (code < 0x88) {
                        FUNC2(code);
                    } else {
                        FUNC0("unexpected scan code at F0: "); FUNC1(code); FUNC0("\n");
                    }
                    state = READY;
                    FUNC0("\n");
            }
            break;
    }
    return 1;
}