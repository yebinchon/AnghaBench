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
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (int) ; 
 scalar_t__ SLEEP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ disconnect_counter ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  last_activity ; 
 int last_upKey ; 
 int* matrix ; 
 scalar_t__ FUNC6 (size_t,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

uint8_t FUNC13(void)
{
    uint8_t code;
    code = FUNC10();
    if (!code) {
/*         
        disconnect_counter ++;
        if (disconnect_counter > MAXDROP) {
            //  set all keys off
             for (uint8_t i=0; i < MATRIX_ROWS; i++) matrix[i] = 0x00; 
        }
*/
        // check if the keyboard is asleep. 
        if (FUNC11(last_activity) > SLEEP_TIMEOUT) {
#if(HANDSPRING ==0 )
            FUNC8();
#else
            handspring_reset();
#endif
            return 0;
        } 

    }

   last_activity = FUNC12();
   disconnect_counter=0; // if we are getting serial data, we're connected. 

    FUNC4(code); FUNC3(" ");


    switch (code) {
        case 0xFD:  // unexpected reset byte 2
             FUNC9("rstD ");
            return 0;
        case 0xFA:  // unexpected reset
            FUNC9("rstA ");
            return 0;
    }

    if (FUNC1(code)) {
        if (code == last_upKey) {
            // all keys are not pressed. 
            // Manual says to disable all modifiers left open now. 
            // but that could defeat sticky keys. 
            // BUG? dropping this byte. 
            last_upKey=0;
            return 0;
        }
        // release
        if (FUNC6(FUNC2(code), FUNC0(code))) {
            matrix[FUNC2(code)] &= ~(1<<FUNC0(code));
            last_upKey=code;
        }
    } else {
       // press
        if (!FUNC6(FUNC2(code), FUNC0(code))) {
            matrix[FUNC2(code)] |= (1<<FUNC0(code));

        }
    }

    FUNC7();
    return code;
}