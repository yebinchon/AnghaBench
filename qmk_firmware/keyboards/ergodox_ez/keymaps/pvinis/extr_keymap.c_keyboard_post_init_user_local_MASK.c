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
 int LED_BRIGHTNESS_HI ; 
 int LED_BRIGHTNESS_LO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void) {
  FUNC1();
  for (int i = LED_BRIGHTNESS_HI; i > LED_BRIGHTNESS_LO; i--) {
    FUNC2(i);
    FUNC3(5);
  }
  FUNC3(1000);
  for (int i = LED_BRIGHTNESS_LO; i > 0; i--) {
    FUNC2(i);
    FUNC3(10);
  }
  FUNC0();

  // restore default brightness for future use
  FUNC2(LED_BRIGHTNESS_HI);
}