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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_lyr ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

void FUNC6(void) {
  static uint8_t is_leds_changes = 1;
  c_lyr = FUNC0(layer_state);

  is_leds_changes = is_leds_changes << FUNC4(c_lyr);
  is_leds_changes = is_leds_changes << FUNC5();
  is_leds_changes = is_leds_changes << FUNC2(c_lyr);

  if (is_leds_changes > 1) {
    FUNC3();
    is_leds_changes = 1;
  }

  FUNC1();
}