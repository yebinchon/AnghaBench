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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  PinDirectionOutput ; 
 scalar_t__ PinLevelHigh ; 
 scalar_t__ PinLevelLow ; 
 int /*<<< orphan*/  RTS_PIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint8_t FUNC4(void) {
    static uint8_t firstread ;
/* bounce RTS so device knows it is rebooted */

// On boot, we keep rts as input, then switch roles here
// on leaving sleep, we toggle the same way

    firstread=FUNC1(RTS_PIN);
   // printf("r%02X:", firstread);

    FUNC3(RTS_PIN, PinDirectionOutput);

    if (firstread == PinLevelHigh) {
        FUNC2(RTS_PIN, PinLevelLow);
    } 
     FUNC0(10);
    FUNC2(RTS_PIN, PinLevelHigh);  
    

/* the future is Arm 
    if (palReadPad(RTS_PIN_IOPRT) == PinLevelLow)
  {
    _delay_ms(10);
    palSetPadMode(RTS_PINn_IOPORT, PinDirectionOutput_PUSHPULL);
    palSetPad(RTS_PORT, RTS_PIN);
  }
  else
  {
    palSetPadMode(RTS_PIN_RTS_PORT, PinDirectionOutput_PUSHPULL);
    palSetPad(RTS_PORT, RTS_PIN);
    palClearPad(RTS_PORT, RTS_PIN);
    _delay_ms(10);
    palSetPad(RTS_PORT, RTS_PIN);
  }
*/


 FUNC0(5);  
 //print("rts\n");
 return 1;
}