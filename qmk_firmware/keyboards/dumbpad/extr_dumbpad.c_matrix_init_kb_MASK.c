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
 int /*<<< orphan*/  LAYER_INDICATOR_LED_0 ; 
 int /*<<< orphan*/  LAYER_INDICATOR_LED_1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(void) {
  // put your keyboard start-up code here
  // runs once when the firmware starts up
  for (int i = 0; i < 2; i++) {
    FUNC2(LAYER_INDICATOR_LED_0, true);
    FUNC2(LAYER_INDICATOR_LED_1, false);
    FUNC1(100);
    FUNC2(LAYER_INDICATOR_LED_0, true);
    FUNC2(LAYER_INDICATOR_LED_1, true);
    FUNC1(100);
    FUNC2(LAYER_INDICATOR_LED_0, false);
    FUNC2(LAYER_INDICATOR_LED_1, true);
    FUNC1(100);
    FUNC2(LAYER_INDICATOR_LED_0, false);
    FUNC2(LAYER_INDICATOR_LED_1, false);
    FUNC1(100);
  }

  FUNC0();
}