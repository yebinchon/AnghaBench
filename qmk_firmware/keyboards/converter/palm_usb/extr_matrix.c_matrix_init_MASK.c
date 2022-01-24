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
typedef  size_t uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  DCD_PIN ; 
 size_t MATRIX_ROWS ; 
 scalar_t__ PinLevelHigh ; 
 int /*<<< orphan*/  VCC_PIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int debug_enable ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  last_activity ; 
 int* matrix ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(void)
{
    debug_enable = true;
    //debug_matrix =true;
    
    FUNC9(); // arguments all #defined 
 
#if (HANDSPRING == 0)
    FUNC6(); // set all inputs and outputs. 
#endif

    FUNC7("power up\n");
    FUNC2(VCC_PIN, PinLevelHigh);

    // wait for DCD strobe from keyboard - it will do this 
    // up to 3 times, then the board needs the RTS toggled to try again
  
#if ( HANDSPRING == 1)
    if ( handspring_handshake() ) {
        last_activity = timer_read();
    } else { 
        print("failed handshake");
        _delay_ms(1000);
        //BUG /should/ power cycle or toggle RTS & reset, but this usually works. 
    }

#else  /// Palm / HP  device with DCD
    while( FUNC1(DCD_PIN) != PinLevelHigh ) {;} 
    FUNC7("dcd\n");

    FUNC8(); // at this point the keyboard should think all is well. 

    if ( FUNC5() ) {
        last_activity = FUNC10();
    } else { 
        FUNC7("failed handshake");
        FUNC0(1000);
        //BUG /should/ power cycle or toggle RTS & reset, but this usually works. 
    }

#endif

    // initialize matrix state: all keys off
    for (uint8_t i=0; i < MATRIX_ROWS; i++) matrix[i] = 0x00;

    FUNC4();
    return;
    
    
}