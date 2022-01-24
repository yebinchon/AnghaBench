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

/* Variables and functions */
 int BACKLIGHT_LEVELS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int breathPulse ; 
 int breathPulseStall ; 
 int breathUp ; 
 int counter ; 
 int currentBL ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ llocked ; 
 scalar_t__ lockedBLLevel ; 
 int resetBL ; 
 scalar_t__ rlocked ; 

void FUNC4(void) {
  // Only breath if layer is locked
  if (lockedBLLevel != 0 && (rlocked || llocked)){
    // counter to slow down the breathing
    if (counter >= breathPulse) {
      counter = 0;
      // iterate brightness up or down
      if (breathUp){
        FUNC1();
      } else {
        FUNC0();
      }
      // figure out if we need to change directions
      currentBL = FUNC3();
      if (currentBL >= BACKLIGHT_LEVELS){
        breathUp = false;
        // make counter a big negative number to add some stall time
        counter = ((BACKLIGHT_LEVELS * breathPulseStall) * (-1));
      } else if (currentBL == 0){
        breathUp = true;
        // make counter a big negative number to add some stall time
        counter = ((BACKLIGHT_LEVELS * breathPulseStall) * (-1));
      }
      // make not that we need to change the brightness back to when we started the breathing
      resetBL = true;
    } else {
      counter++;
    }
  } else {
    // get the brightness back to the level it started at
    if (resetBL){
      int i = 0;
      // i is just there to make sure i don't get stuck in a loop if for some reason get_backlight_level isn't working as expected
      while (FUNC3() != lockedBLLevel && i <= BACKLIGHT_LEVELS ){
        FUNC2();
        i++;
      }
      resetBL = false;
    }
  }
}