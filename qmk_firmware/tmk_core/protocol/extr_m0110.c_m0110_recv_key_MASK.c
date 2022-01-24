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
 int FUNC1 (int) ; 
#define  M0110_ARROW_DOWN 133 
#define  M0110_ARROW_LEFT 132 
#define  M0110_ARROW_RIGHT 131 
#define  M0110_ARROW_UP 130 
 int M0110_CALC_OFFSET ; 
#define  M0110_KEYPAD 129 
 int M0110_KEYPAD_OFFSET ; 
#define  M0110_SHIFT 128 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int) ; 

uint8_t FUNC5(void) {
    static uint8_t keybuf  = 0x00;
    static uint8_t keybuf2 = 0x00;
    static uint8_t rawbuf  = 0x00;
    uint8_t        raw, raw2, raw3;

    if (keybuf) {
        raw    = keybuf;
        keybuf = 0x00;
        return raw;
    }
    if (keybuf2) {
        raw     = keybuf2;
        keybuf2 = 0x00;
        return raw;
    }

    if (rawbuf) {
        raw    = rawbuf;
        rawbuf = 0x00;
    } else {
        raw = FUNC2();  // Use INSTANT for better response. Should be INQUIRY ?
    }
    switch (FUNC1(raw)) {
        case M0110_KEYPAD:
            raw2 = FUNC2();
            switch (FUNC1(raw2)) {
                case M0110_ARROW_UP:
                case M0110_ARROW_DOWN:
                case M0110_ARROW_LEFT:
                case M0110_ARROW_RIGHT:
                    if (FUNC0(raw2)) {
                        // Case B,F,N:
                        keybuf = (FUNC4(raw2) | M0110_CALC_OFFSET);  // Calc(u)
                        return (FUNC4(raw2) | M0110_KEYPAD_OFFSET);  // Arrow(u)
                    }
                    break;
            }
            // Keypad or Arrow
            return (FUNC4(raw2) | M0110_KEYPAD_OFFSET);
            break;
        case M0110_SHIFT:
            raw2 = FUNC2();
            switch (FUNC1(raw2)) {
                case M0110_SHIFT:
                    // Case: 5-8,C,G,H
                    rawbuf = raw2;
                    return FUNC4(raw);  // Shift(d/u)
                    break;
                case M0110_KEYPAD:
                    // Shift + Arrow, Calc, or etc.
                    raw3 = FUNC2();
                    switch (FUNC1(raw3)) {
                        case M0110_ARROW_UP:
                        case M0110_ARROW_DOWN:
                        case M0110_ARROW_LEFT:
                        case M0110_ARROW_RIGHT:
                            if (FUNC0(raw)) {
                                if (FUNC0(raw3)) {
                                    // Case 4:
                                    FUNC3("(4)\n");
                                    keybuf2 = FUNC4(raw);                         // Shift(u)
                                    keybuf  = (FUNC4(raw3) | M0110_CALC_OFFSET);  // Calc(u)
                                    return (FUNC4(raw3) | M0110_KEYPAD_OFFSET);   // Arrow(u)
                                } else {
                                    // Case 3:
                                    FUNC3("(3)\n");
                                    return (FUNC4(raw));  // Shift(u)
                                }
                            } else {
                                if (FUNC0(raw3)) {
                                    // Case 2:
                                    FUNC3("(2)\n");
                                    keybuf = (FUNC4(raw3) | M0110_CALC_OFFSET);  // Calc(u)
                                    return (FUNC4(raw3) | M0110_KEYPAD_OFFSET);  // Arrow(u)
                                } else {
                                    // Case 1:
                                    FUNC3("(1)\n");
                                    return (FUNC4(raw3) | M0110_CALC_OFFSET);  // Calc(d)
                                }
                            }
                            break;
                        default:
                            // Shift + Keypad
                            keybuf = (FUNC4(raw3) | M0110_KEYPAD_OFFSET);
                            return FUNC4(raw);  // Shift(d/u)
                            break;
                    }
                    break;
                default:
                    // Shift + Normal keys
                    keybuf = FUNC4(raw2);
                    return FUNC4(raw);  // Shift(d/u)
                    break;
            }
            break;
        default:
            // Normal keys
            return FUNC4(raw);
            break;
    }
}