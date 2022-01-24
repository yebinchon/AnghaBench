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
 int FUNC0 (int) ; 
 int MATRIX_ROWS ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int* matrix ; 
 scalar_t__ FUNC7 (size_t,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

uint8_t FUNC12(void)
{
    uint8_t code;
    code = FUNC10();
    if (!code) return 0;

    FUNC4(code); FUNC3(" ");

    switch (code) {
        case 0xFF:  // reset success: FF 04
            FUNC9("reset: ");
            FUNC2(500);
            code = FUNC10();
            FUNC11("%02X\n", code);
            if (code == 0x04) {
                // LED status
                FUNC6(FUNC5());
            }
            return 0;
        case 0xFE:  // layout: FE <layout>
            FUNC9("layout: ");
            FUNC2(500);
            FUNC11("%02X\n", FUNC10());
            return 0;
        case 0x7E:  // reset fail: 7E 01
            FUNC9("reset fail: ");
            FUNC2(500);
            FUNC11("%02X\n", FUNC10());
            return 0;
        case 0x7F:
            // all keys up
            for (uint8_t i=0; i < MATRIX_ROWS; i++) matrix[i] = 0x00;
            return 0;
    }

    if (code&0x80) {
        // break code
        if (FUNC7(FUNC1(code), FUNC0(code))) {
            matrix[FUNC1(code)] &= ~(1<<FUNC0(code));
        }
    } else {
        // make code
        if (!FUNC7(FUNC1(code), FUNC0(code))) {
            matrix[FUNC1(code)] |=  (1<<FUNC0(code));
        }
    }

    FUNC8();
    return code;
}