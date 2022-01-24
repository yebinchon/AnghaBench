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
 int /*<<< orphan*/  MATRIX_ROWS ; 
 scalar_t__ MATRIX_ROWS_PER_SIDE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  matrix ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ mcp23018_reset_loop ; 
 scalar_t__ mcp23018_status ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  raw_matrix ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 

uint8_t FUNC9(void) {
  if (mcp23018_status) {  // if there was an error
    if (++mcp23018_reset_loop == 0) {
      // if (++mcp23018_reset_loop >= 1300) {
      // since mcp23018_reset_loop is 8 bit - we'll try to reset once in 255 matrix scans
      // this will be approx bit more frequent than once per second
      FUNC5("trying to reset mcp23018\n");
      mcp23018_status = FUNC3();
      if (mcp23018_status) {
        FUNC5("left side not responding\n");
      } else {
        FUNC5("left side attached\n");
        FUNC1();
      }
    }
  }

#ifdef LEFT_LEDS
  mcp23018_status = ergodox_left_leds_update();
#endif  // LEFT_LEDS
  bool changed = false;
  for (uint8_t i = 0; i < MATRIX_ROWS_PER_SIDE; i++) {
    // select rows from left and right hands
    uint8_t left_index = i;
    uint8_t right_index = i + MATRIX_ROWS_PER_SIDE;
    FUNC6(left_index);
    FUNC6(right_index);

    // we don't need a 30us delay anymore, because selecting a
    // left-hand row requires more than 30us for i2c.

    changed |= FUNC7(left_index);
    changed |= FUNC7(right_index);

    FUNC8();
  }

  FUNC0(raw_matrix, matrix, MATRIX_ROWS, changed);
  FUNC4();

  return 1;
}