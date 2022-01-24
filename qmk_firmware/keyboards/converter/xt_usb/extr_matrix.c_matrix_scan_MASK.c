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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 () ; 

uint8_t FUNC6(void)
{
    static enum {
        XT_STATE_INIT,
        XT_STATE_E0,
        // Pause: E1 1D 45, E1 9D C5
        XT_STATE_E1,
        XT_STATE_E1_1D,
        XT_STATE_E1_9D,
    } state = XT_STATE_INIT;

    uint8_t code = FUNC5();
    if (!code) return 0;
    FUNC4("%02X ", code);
    switch (state) {
        case XT_STATE_INIT:
            switch (code) {
                case 0xE0:
                    state = XT_STATE_E0;
                    break;
                case 0xE1:
                    state = XT_STATE_E1;
                    break;
                default:
                    if (code < 0x80)
                        FUNC1(code);
                    else
                        FUNC0(code & 0x7F);
                    break;
            }
            break;
        case XT_STATE_E0:
            switch (code) {
                case 0x2A:
                case 0xAA:
                case 0x36:
                case 0xB6:
                    //ignore fake shift
                    state = XT_STATE_INIT;
                    break;
                default:
                    if (code < 0x80)
                        FUNC1(FUNC3(code));
                    else
                        FUNC0(FUNC3(code & 0x7F));
                    state = XT_STATE_INIT;
                    break;
            }
            break;
        case XT_STATE_E1:
            switch (code) {
                case 0x1D:
                    state = XT_STATE_E1_1D;
                    break;
                case 0x9D:
                    state = XT_STATE_E1_9D;
                    break;
                default:
                    state = XT_STATE_INIT;
                    break;
            }
            break;
        case XT_STATE_E1_1D:
            switch (code) {
                case 0x45:
                    FUNC1(0x55);
                    break;
                default:
                    state = XT_STATE_INIT;
                    break;
            }
            break;
        case XT_STATE_E1_9D:
            switch (code) {
                case 0x45:
                    FUNC0(0x55);
                    break;
                default:
                    state = XT_STATE_INIT;
                    break;
            }
            break;
        default:
            state = XT_STATE_INIT;
    }
    FUNC2();
    return 1;
}