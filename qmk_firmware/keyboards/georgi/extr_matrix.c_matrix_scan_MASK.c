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
 size_t MATRIX_COLS ; 
 size_t MATRIX_ROWS ; 
 size_t MATRIX_ROWS_PER_SIDE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * matrix ; 
 scalar_t__ FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ mcp23018_reset_loop ; 
 scalar_t__ mcp23018_status ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t,size_t) ; 

uint8_t FUNC8(void)
{
  // Then the keyboard
  if (mcp23018_status) { // if there was an error
      if (++mcp23018_reset_loop == 0) {
      // if (++mcp23018_reset_loop >= 1300) {
          // since mcp23018_reset_loop is 8 bit - we'll try to reset once in 255 matrix scans
          // this will be approx bit more frequent than once per second
          FUNC4("trying to reset mcp23018\n");
          mcp23018_status = FUNC1();
          if (mcp23018_status) {
              FUNC4("left side not responding\n");
          } else {
              FUNC4("left side attached\n");
          }
      }
  }

    for (uint8_t i = 0; i < MATRIX_ROWS_PER_SIDE; i++) {
        FUNC5(i);
        // and select on left hand
        FUNC5(i + MATRIX_ROWS_PER_SIDE);
        // we don't need a 30us delay anymore, because selecting a
        // left-hand row requires more than 30us for i2c.

        // grab cols from left hand
        matrix[i] = FUNC0(i);
        // grab cols from right hand
        matrix[i + MATRIX_ROWS_PER_SIDE] = FUNC0(i + MATRIX_ROWS_PER_SIDE);

        FUNC6();
    }

    FUNC3();

#ifdef DEBUG_MATRIX
    for (uint8_t c = 0; c < MATRIX_COLS; c++)
		for (uint8_t r = 0; r < MATRIX_ROWS; r++)
		  if (matrix_is_on(r, c)) xprintf("r:%d c:%d \n", r, c);
#endif

    return 1;
}