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
 int /*<<< orphan*/  B0 ; 
 int GET_FLASH_PERIOD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LAYER_SWITCH ; 
 int TIMEOUT_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int layer_time_remaining ; 
 scalar_t__ prev_loop_time ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void) {
  layer_time_remaining -= FUNC2()-prev_loop_time; //amount of time elapsed since the start of the previous loop
  prev_loop_time = FUNC2(); //start counting the time to check at the next iteration

  if (layer_time_remaining <= 0) {
  	// once timer run out
  	FUNC1(LAYER_SWITCH);
  }

  // escape LED on layer 1
  if (FUNC0(LAYER_SWITCH)) {
    if (layer_time_remaining <= TIMEOUT_WARNING) {
      if ((int)(layer_time_remaining/GET_FLASH_PERIOD % 2 == 0)) {
		    // if even led on
		    FUNC4(B0);
		  } else {
		    FUNC3(B0);
		  }
    } else {
      FUNC4(B0);
    }
  } else {
    FUNC3(B0);
  }
}